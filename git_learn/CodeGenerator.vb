Imports System.Reflection
Public Class CodeGenerator
    Private mTarget As Object

    Public Sub New()
        mTarget = Me
    End Sub

    Public Sub New(ByVal target As Object)
        mTarget = target
    End Sub


    ReadOnly Property GenerateInitialiseCode() As String
        Get
            Return DoGenerateInitialiseCode(mTarget)
        End Get
    End Property

    Private Function DoGenerateInitialiseCode(target As Object) As String
        Try
            Dim classType As Type = target.GetType()

            Dim privateFields As FieldInfo() = classType.GetFields(BindingFlags.DeclaredOnly Or BindingFlags.NonPublic Or BindingFlags.Instance)
            Dim privateProperties As PropertyInfo() = classType.GetProperties(BindingFlags.DeclaredOnly Or BindingFlags.NonPublic Or BindingFlags.Instance)

            Dim publicFields As FieldInfo() = classType.GetFields(BindingFlags.DeclaredOnly Or BindingFlags.Public Or BindingFlags.Instance)
            Dim publicProperties As PropertyInfo() = classType.GetProperties(BindingFlags.DeclaredOnly Or BindingFlags.Public Or BindingFlags.Instance)

            Dim classInfo As String

            If privateFields.Count > 0 Then
                classInfo = "' Private Fields" & vbCrLf & vbCrLf
            End If

            For Each prop As FieldInfo In privateFields
                classInfo = classInfo & "Private " & prop.Name & " As " & prop.FieldType.Name & vbCrLf
            Next

            If privateProperties.Count > 0 Then
                classInfo = classInfo & vbCrLf & "' Private Properties" & vbCrLf & vbCrLf
            End If

            For Each prop As PropertyInfo In privateProperties
                classInfo = classInfo & "Private " & IIf(prop.CanWrite, "", "ReadOnly") & " " & prop.Name & " As " & prop.PropertyType.Name & " = " & ValueAsText(prop.PropertyType, target, prop.Name) & IIf(prop.CanWrite, "", vbTab & " ' <----- ReadOnly exception") & vbCrLf
            Next

            If publicFields.Count > 0 Then
                classInfo = classInfo & vbCrLf & "' Public Fields" & vbCrLf & vbCrLf
            End If

            For Each prop As FieldInfo In publicFields
                classInfo = classInfo & "Public " & prop.Name & " As " & prop.FieldType.Name & " = " & ValueAsText(prop.FieldType, target, prop.Name) & vbCrLf
            Next

            If publicProperties.Count > 0 Then
                classInfo = classInfo & vbCrLf & "' Public Properties" & vbCrLf & vbCrLf
            End If

            For Each prop As PropertyInfo In publicProperties
                classInfo = classInfo & "Public " & IIf(prop.CanWrite, "", "ReadOnly") & " " & prop.Name & " As " & prop.PropertyType.Name & " = " & IIf(prop.PropertyType.IsValueType, ValueAsText(prop.PropertyType, target, prop.Name) & IIf(prop.CanWrite, "", vbTab & " ' <----- ReadOnly exception"), "<object ref here>") & vbCrLf
            Next

            Return classInfo

        Catch ex As Exception
            Return ex.Message
        End Try

    End Function

    Private Function ValueAsText(ValueType As System.Type, obj As Object, propertyName As String) As String
        If ValueType.Name = "String" Then
            Return """" & CallByName(obj, propertyName, Microsoft.VisualBasic.CallType.Get) & """"
        Else
            Return CallByName(obj, propertyName, Microsoft.VisualBasic.CallType.Get)
        End If

    End Function

End Class
