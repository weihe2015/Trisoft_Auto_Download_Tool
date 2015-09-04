<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class DownloadForm
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
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.Browse1 = New System.Windows.Forms.Button()
        Me.Browse2 = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Export = New System.Windows.Forms.Button()
        Me.OpenFileDialog = New System.Windows.Forms.OpenFileDialog()
        Me.FolderBrowserDialog = New System.Windows.Forms.FolderBrowserDialog()
        Me.LogFile = New System.Windows.Forms.Button()
        Me.checkbox_ChangeState = New System.Windows.Forms.CheckBox()
        Me.CheckedListBox1 = New System.Windows.Forms.CheckedListBox()
        Me.CheckedListBox2 = New System.Windows.Forms.CheckedListBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.OpenFolder = New System.Windows.Forms.Button()
        Me.SelectAll = New System.Windows.Forms.CheckBox()
        Me.checkbox_AddNewLanguage = New System.Windows.Forms.CheckBox()
        Me.SuspendLayout()
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(61, 97)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(502, 20)
        Me.TextBox1.TabIndex = 0
        '
        'TextBox2
        '
        Me.TextBox2.Location = New System.Drawing.Point(61, 200)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(504, 20)
        Me.TextBox2.TabIndex = 1
        '
        'Browse1
        '
        Me.Browse1.Location = New System.Drawing.Point(612, 83)
        Me.Browse1.Name = "Browse1"
        Me.Browse1.Size = New System.Drawing.Size(136, 34)
        Me.Browse1.TabIndex = 2
        Me.Browse1.Text = "Browse..."
        Me.Browse1.UseVisualStyleBackColor = True
        '
        'Browse2
        '
        Me.Browse2.Location = New System.Drawing.Point(612, 187)
        Me.Browse2.Name = "Browse2"
        Me.Browse2.Size = New System.Drawing.Size(136, 33)
        Me.Browse2.TabIndex = 3
        Me.Browse2.Text = "Browse..."
        Me.Browse2.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(60, 57)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(283, 13)
        Me.Label1.TabIndex = 4
        Me.Label1.Text = "Please select the csv file that contains a list of publications"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(60, 159)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(238, 13)
        Me.Label2.TabIndex = 5
        Me.Label2.Text = "Please select the folder to store the exported files"
        '
        'Export
        '
        Me.Export.Location = New System.Drawing.Point(61, 456)
        Me.Export.Name = "Export"
        Me.Export.Size = New System.Drawing.Size(109, 37)
        Me.Export.TabIndex = 6
        Me.Export.Text = "Export"
        Me.Export.UseVisualStyleBackColor = True
        '
        'OpenFileDialog
        '
        Me.OpenFileDialog.FileName = "OpenFileDialog"
        '
        'LogFile
        '
        Me.LogFile.Location = New System.Drawing.Point(430, 454)
        Me.LogFile.Name = "LogFile"
        Me.LogFile.Size = New System.Drawing.Size(135, 39)
        Me.LogFile.TabIndex = 7
        Me.LogFile.Text = "View Log File"
        Me.LogFile.UseVisualStyleBackColor = True
        '
        'checkbox_ChangeState
        '
        Me.checkbox_ChangeState.AutoSize = True
        Me.checkbox_ChangeState.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.checkbox_ChangeState.Location = New System.Drawing.Point(17, 280)
        Me.checkbox_ChangeState.Name = "checkbox_ChangeState"
        Me.checkbox_ChangeState.Size = New System.Drawing.Size(123, 24)
        Me.checkbox_ChangeState.TabIndex = 8
        Me.checkbox_ChangeState.Text = "ChangeState"
        Me.checkbox_ChangeState.UseVisualStyleBackColor = True
        '
        'CheckedListBox1
        '
        Me.CheckedListBox1.FormattingEnabled = True
        Me.CheckedListBox1.Items.AddRange(New Object() {"Both Image and Topic", "Image Only", "Topic Only"})
        Me.CheckedListBox1.Location = New System.Drawing.Point(179, 293)
        Me.CheckedListBox1.Name = "CheckedListBox1"
        Me.CheckedListBox1.Size = New System.Drawing.Size(164, 64)
        Me.CheckedListBox1.TabIndex = 10
        '
        'CheckedListBox2
        '
        Me.CheckedListBox2.FormattingEnabled = True
        Me.CheckedListBox2.Items.AddRange(New Object() {"In translation", "To be translated", "Translated", "Released", "Draft", "To be reviewed", "In tech review", "In author final review", "In lead final review"})
        Me.CheckedListBox2.Location = New System.Drawing.Point(403, 293)
        Me.CheckedListBox2.Name = "CheckedListBox2"
        Me.CheckedListBox2.Size = New System.Drawing.Size(196, 139)
        Me.CheckedListBox2.TabIndex = 11
        '
        'Label4
        '
        Me.Label4.Cursor = System.Windows.Forms.Cursors.WaitCursor
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.25!)
        Me.Label4.ForeColor = System.Drawing.SystemColors.HotTrack
        Me.Label4.Location = New System.Drawing.Point(12, 16)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(463, 41)
        Me.Label4.TabIndex = 17
        Me.Label4.Text = "This is Trisoft Automate Download Tool"
        Me.Label4.UseWaitCursor = True
        '
        'OpenFolder
        '
        Me.OpenFolder.Location = New System.Drawing.Point(235, 454)
        Me.OpenFolder.Name = "OpenFolder"
        Me.OpenFolder.Size = New System.Drawing.Size(126, 39)
        Me.OpenFolder.TabIndex = 18
        Me.OpenFolder.Text = "Open Folder"
        Me.OpenFolder.UseVisualStyleBackColor = True
        '
        'SelectAll
        '
        Me.SelectAll.AutoSize = True
        Me.SelectAll.Location = New System.Drawing.Point(402, 270)
        Me.SelectAll.Name = "SelectAll"
        Me.SelectAll.Size = New System.Drawing.Size(73, 17)
        Me.SelectAll.TabIndex = 19
        Me.SelectAll.Text = "Select_All"
        Me.SelectAll.UseVisualStyleBackColor = True
        '
        'checkbox_AddNewLanguage
        '
        Me.checkbox_AddNewLanguage.AutoSize = True
        Me.checkbox_AddNewLanguage.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.checkbox_AddNewLanguage.Location = New System.Drawing.Point(12, 373)
        Me.checkbox_AddNewLanguage.Name = "checkbox_AddNewLanguage"
        Me.checkbox_AddNewLanguage.Size = New System.Drawing.Size(168, 24)
        Me.checkbox_AddNewLanguage.TabIndex = 21
        Me.checkbox_AddNewLanguage.Text = "Add New Language"
        Me.checkbox_AddNewLanguage.UseVisualStyleBackColor = True
        '
        'DownloadForm
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(896, 581)
        Me.Controls.Add(Me.checkbox_AddNewLanguage)
        Me.Controls.Add(Me.SelectAll)
        Me.Controls.Add(Me.OpenFolder)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.CheckedListBox2)
        Me.Controls.Add(Me.CheckedListBox1)
        Me.Controls.Add(Me.checkbox_ChangeState)
        Me.Controls.Add(Me.LogFile)
        Me.Controls.Add(Me.Export)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Browse2)
        Me.Controls.Add(Me.Browse1)
        Me.Controls.Add(Me.TextBox2)
        Me.Controls.Add(Me.TextBox1)
        Me.Name = "DownloadForm"
        Me.Text = "Esri_Trisoft_Download_Form"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents Browse1 As System.Windows.Forms.Button
    Friend WithEvents Browse2 As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Export As System.Windows.Forms.Button
    Friend WithEvents OpenFileDialog As System.Windows.Forms.OpenFileDialog
    Friend WithEvents FolderBrowserDialog As System.Windows.Forms.FolderBrowserDialog
    Friend WithEvents LogFile As System.Windows.Forms.Button
    Friend WithEvents checkbox_ChangeState As System.Windows.Forms.CheckBox
    Friend WithEvents CheckedListBox1 As System.Windows.Forms.CheckedListBox
    Friend WithEvents CheckedListBox2 As System.Windows.Forms.CheckedListBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents OpenFolder As System.Windows.Forms.Button
    Friend WithEvents SelectAll As System.Windows.Forms.CheckBox
    Friend WithEvents checkbox_AddNewLanguage As System.Windows.Forms.CheckBox

End Class
