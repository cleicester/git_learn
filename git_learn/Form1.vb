Imports System.Reflection

Public Class Form1

    Private Sub Button1_Click(sender As System.Object, e As System.EventArgs) Handles btRun.Click

        Dim p As New Particle(0.5)

        ' p.Diameter = 10 ' This is a read only property so not allowed to do this
        '                   The associated radius is set in the constructor above

        p.X = 10.0
        p.Y = 25.0
        p.Z = 0.0

        p.XVelocity = 0.0
        p.YVelocity = 1.25
        p.ZVelocity = 0.0

        p.Mass = 110.0

        Dim generator As CodeGenerator = New CodeGenerator(p)
        MsgBox(generator.GenerateInitialiseCode)
        Dim initCode As String = p.GenerateInitialiseCode()

        txtWelcome.Text = "Hello world!" & vbCrLf & vbCrLf & "Fred Dibnah here." & vbCrLf & vbCrLf & "Particle (" & p.PublicDescription & ") diameter is " & p.Diameter
        MsgBox(initCode)

    End Sub
End Class
