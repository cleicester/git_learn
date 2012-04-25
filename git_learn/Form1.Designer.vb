<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.txtWelcome = New System.Windows.Forms.TextBox()
        Me.btRun = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'txtWelcome
        '
        Me.txtWelcome.Location = New System.Drawing.Point(12, 12)
        Me.txtWelcome.Multiline = True
        Me.txtWelcome.Name = "txtWelcome"
        Me.txtWelcome.Size = New System.Drawing.Size(260, 209)
        Me.txtWelcome.TabIndex = 0
        '
        'btRun
        '
        Me.btRun.Location = New System.Drawing.Point(197, 227)
        Me.btRun.Name = "btRun"
        Me.btRun.Size = New System.Drawing.Size(75, 23)
        Me.btRun.TabIndex = 1
        Me.btRun.Text = "Run"
        Me.btRun.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(284, 262)
        Me.Controls.Add(Me.btRun)
        Me.Controls.Add(Me.txtWelcome)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents txtWelcome As System.Windows.Forms.TextBox
    Friend WithEvents btRun As System.Windows.Forms.Button

End Class
