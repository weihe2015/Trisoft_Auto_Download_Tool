Imports System.IO

Public Class DownloadForm
    Public GUID As New ArrayList
    Public VersionNum As New ArrayList
    Public pubName As New ArrayList
    Public langName As New ArrayList
    Private f_Properties As New Hashtable
    Private Sub Browse1_Click(sender As Object, e As EventArgs) Handles Browse1.Click
        OpenFileDialog.Title = "Select csv or xlsx files"
        OpenFileDialog.FileName = ""
        OpenFileDialog.Filter = "csv files | *.csv"
        OpenFileDialog.InitialDirectory = "C:\"
        If OpenFileDialog.ShowDialog = Windows.Forms.DialogResult.OK Then
            TextBox1.Text = OpenFileDialog.FileName
        End If
    End Sub

    Private Sub Browse2_Click(sender As Object, e As EventArgs) Handles Browse2.Click
        If (FolderBrowserDialog.ShowDialog() = Windows.Forms.DialogResult.OK) Then
            TextBox2.Text = FolderBrowserDialog.SelectedPath
        End If
    End Sub

    Private Sub Export_Click(sender As Object, e As EventArgs) Handles Export.Click
        Dim usrDir As String = Directory.GetCurrentDirectory
        Dim toolPropertyFile As String = usrDir & "\tool.properities"
        If Not File.Exists(toolPropertyFile) Then
            MsgBox("Missing property file in the folder: " & usrDir)
            Return
        End If
        Dim wholeProperty As String = My.Computer.FileSystem.ReadAllText(toolPropertyFile)
        Dim lineDataProperty() As String = Split(wholeProperty, vbNewLine)

        For Each lineTextProperty As String In lineDataProperty
            f_Properties.Add(lineTextProperty.Split("=")(0), lineTextProperty.Split("=")(1))
        Next

        Dim UserName As String = f_Properties.Item("USERNAME")
        Dim Password As String = f_Properties.Item("PASSWORD")
        Dim URL As String = f_Properties.Item("HOMEURL")

        Dim type1 As String = ""
        Dim TranslationStatuses As String = ""
        If CheckedListBox1.SelectedIndex <> -1 Then
            For k As Integer = 0 To CheckedListBox1.Items.Count - 1
                CheckedListBox1.SetItemCheckState(k, CheckState.Unchecked)
            Next
            CheckedListBox1.SetItemCheckState(CheckedListBox1.SelectedIndex, CheckState.Checked)
            type1 = CheckedListBox1.SelectedItem.ToString()
        Else
            MsgBox("You have to select one item in the first checkbox.")
            Return
        End If

        If CheckedListBox2.SelectedIndex <> -1 Then
            For Each itemChecked As Object In CheckedListBox2.CheckedItems
                TranslationStatuses = TranslationStatuses & "#" & itemChecked.ToString()
            Next
        Else
            MsgBox("You have to select one item in the second checkbox.")
            Return
        End If
        Dim perStatuses As String() = TranslationStatuses.Split("#")

        Dim Context As String = ""
        Dim testobj As New IshObjs(UserName, Password, URL)
        testobj.ISHAppObj.Login("InfoShareAuthor", UserName, Password, Context)
        Dim test As New IshPubOutput(UserName, Password, URL)
        Dim checked As Boolean = checkbox_ChangeState.Checked
        Dim addNewLanguage As Boolean = checkbox_AddNewLanguage.Checked
        Dim filePath As String
        Dim savePath As String
        Dim lineData() As String
        Dim wholeFile As String
        Dim fieldData() As String

        Dim i As Integer
        filePath = TextBox1.Text
        savePath = TextBox2.Text
        'filePath = "C:\Users\wei7771\Desktop\sample\sample_input.csv"
        'savePath = "C:\Users\wei7771\Desktop\sample"
        If Not String.IsNullOrEmpty(filePath) And Not String.IsNullOrEmpty(savePath) Then
            wholeFile = My.Computer.FileSystem.ReadAllText(filePath)
            lineData = Split(wholeFile, vbNewLine)
            For Each lineOfText As String In lineData
                fieldData = lineOfText.Split(",")
                For i = 0 To fieldData.Length - 1
                    Select Case i
                        Case 0
                            GUID.Add(fieldData(0))
                        Case 1
                            VersionNum.Add(fieldData(1))
                        Case 2
                            pubName.Add(fieldData(2))
                        Case 3
                            langName.Add(fieldData(3))
                    End Select
                Next
                Console.WriteLine("")
            Next lineOfText
        Else
            MessageBox.Show("The file path is empty.")
        End If
        GUID.RemoveAt(GUID.Count - 1)

        Dim Log_Path = savePath + "\log.txt"
        If Not File.Exists(Log_Path) Then
            File.Create(Log_Path).Dispose()
        End If

        Dim j As Integer
        For j = 0 To GUID.Count - 1
            Dim id As String = GUID(j).ToString()
            Dim version As String = VersionNum(j).ToString()
            Dim name As String = pubName(j).ToString()
            Dim lang As String = langName(j).ToString()
            Dim perLangs As String() = lang.Split("&")
            Dim perLang As String
            For Each perLang In perLangs
                If Not perLang.Equals("") Then
                    If perLang.Equals("ru") Then
                        perLang = "ru-extension"
                    End If
                    If Not Directory.Exists(savePath & "\" & perLang) Then
                        Directory.CreateDirectory(savePath & "\" & perLang)
                    End If
                    If Not Directory.Exists(savePath & "\" & perLang & "\" & name) Then
                        Directory.CreateDirectory(savePath & "\" & perLang & "\" & name)
                    End If
                    If Not Directory.Exists(savePath & "\" & perLang & "\" & name & "\" & "topic") And (type1 = "Both Image and Topic" Or type1 = "Topic Only") Then
                        Directory.CreateDirectory(savePath & "\" & perLang & "\" & name & "\" & "topic")
                    End If
                    If Not Directory.Exists(savePath & "\" & perLang & "\" & name & "\" & "map") Then
                        Directory.CreateDirectory(savePath & "\" & perLang & "\" & name & "\" & "map")
                    End If
                    If Not Directory.Exists(savePath & "\" & perLang & "\" & name & "\" & "img") And (type1 = "Both Image and Topic" Or type1 = "Image Only") Then
                        Directory.CreateDirectory(savePath & "\" & perLang & "\" & name & "\" & "img")
                    End If
                    Dim saveFilePath As String = savePath & "\" & perLang & "\" & name
                    If perLang.Equals("ru-extension") Then
                        perLang = "ru"
                    End If
                    test.DownloadOutput(id, version, perLang, saveFilePath, savePath, checked, type1, TranslationStatuses, addNewLanguage)
                End If
            Next
        Next
        MsgBox("The Task is Done")
    End Sub

    Private Sub LogFile_Click(sender As Object, e As EventArgs) Handles LogFile.Click
        Dim File_Name As String = TextBox2.Text & "\log.txt"
        If System.IO.File.Exists(File_Name) = True Then
            Process.Start(File_Name)
        Else
            MsgBox("Log File Does not Exist")
        End If
    End Sub

    Private Sub CheckedListBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CheckedListBox1.SelectedIndexChanged
        Dim item As Integer = CheckedListBox1.SelectedIndex
        CheckedListBox1.SetItemCheckState(item, CheckState.Checked)
        If CheckedListBox1.CheckedItems.Count > 1 Then
            For k As Integer = 0 To CheckedListBox1.Items.Count - 1
                If k <> item And CheckedListBox1.GetItemChecked(k) = True Then
                    CheckedListBox1.SetItemCheckState(k, CheckState.Unchecked)
                End If
            Next
        End If
    End Sub

    Private Sub OpenFolder_Click(sender As Object, e As EventArgs) Handles OpenFolder.Click
        Dim openDir As String = TextBox2.Text
        If Not String.IsNullOrEmpty(openDir) Then
            Process.Start("Explorer.exe", openDir)
        Else
            MsgBox("You need to select saved folder first")
        End If
    End Sub

    Private Sub SelectAll_CheckedChanged(sender As Object, e As EventArgs) Handles SelectAll.CheckedChanged
        If SelectAll.Checked = True Then
            For i As Integer = 0 To CheckedListBox2.Items.Count - 1
                CheckedListBox2.SetItemCheckState(i, CheckState.Checked)
            Next
        ElseIf SelectAll.Checked = False Then
            For i As Integer = 0 To CheckedListBox2.Items.Count - 1
                CheckedListBox2.SetItemCheckState(i, CheckState.Unchecked)
            Next
        End If
    End Sub

End Class
