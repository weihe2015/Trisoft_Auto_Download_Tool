Imports System.IO
Public Module modErrorHandler
    Public Errors As New ErrorHandler
    Public Class ErrorHandler
        Private m_ErrorHash As New Hashtable
        Private intErrors As Integer
        Public Property ErrorHash() As Hashtable
            Get
                ErrorHash = m_ErrorHash
            End Get
            Set(ByVal value As Hashtable)
                m_ErrorHash = value
            End Set
        End Property

        Public Sub New()

        End Sub
        Public Sub FlushMessages()
            Me.ErrorHash.Clear()
            m_ErrorHash.Clear()
        End Sub
        Public Sub PrintMessage(ByVal intSeverity As Integer, ByVal strMessage As String, ByVal strCallingModule As String)
            'stores messages in the Errors object.  Doesn't actually print them out until "PrintLevelAndAboveErrorsToString" method is called.
            'Severity levels: 4 = Fatal, 3 = Error, 2 = Warning, 1 = Debug
            Dim oError As New objErrorObj
            intErrors = intErrors + 1
            oError.Message = strMessage
            oError.Severity = intSeverity
            oError.CallingModule = strCallingModule
            ' TODO: Do we need to add every error object, or should we check for duplicates and only insert new errors?
            m_ErrorHash.Add(intErrors, oError)
        End Sub
        Public Sub WriteToLogFile(ByVal strtowrite As String, ByVal logfilepath As String)
            If Not Directory.Exists(Path.GetDirectoryName(logfilepath)) Then
                Directory.CreateDirectory(Path.GetDirectoryName(logfilepath))
            End If
            Dim fs As FileStream = New FileStream(logfilepath, FileMode.Append)
            Dim sw As StreamWriter = New StreamWriter(fs)
            sw.WriteLine(strtowrite)
            sw.Flush()
            sw.Close()
            fs.Close()
        End Sub

        Public Function PrintHighSevErrorsToString() As String
            'Severity levels: 4 = Fatal, 3 = Error, 2 = Warning, 1 = Debug
            Dim severityLevel As String = ""
            'TODO: it's difficult to check messages before storing them to see if they duplicate an already existing 
            'message in the hash because they are objects..  Because of this, we'll spin the messages up into an array 
            'as they come out and only print the unique ones to the string.
            Dim strErrors As String
            strErrors = vbCrLf
            Dim Enumerator As IDictionaryEnumerator
            Enumerator = m_ErrorHash.GetEnumerator()
            While Enumerator.MoveNext()
                If (Enumerator.Value.Severity > 1) Then
                    Select Case Enumerator.Value.Severity
                        Case 1
                            severityLevel = "DEBUGGING"
                        Case 2
                            severityLevel = "WARNING"
                        Case 3
                            severityLevel = "ERROR"
                        Case 4
                            severityLevel = "FATAL"
                    End Select
                    strErrors = "[" + Enumerator.Value.CallingModule + "] " + severityLevel + ": " + Enumerator.Value.Message + vbCrLf + strErrors
                End If
            End While
            Return strErrors
        End Function

        Public Function PrintLevelAndAboveErrorsToString(ByVal intSeverity As Integer) As String
            'Severity levels: 4 = Fatal, 3 = Error, 2 = Warning, 1 = Debug
            Dim errorarray As New ArrayList
            Dim severityLevel As String = ""
            errorarray.Add("")
            'TODO: it's difficult to check messages before storing them to see if they duplicate an already existing 
            'message in the hash because they are objects..  Because of this, we'll spin the messages up into an array 
            'as they come out and only print the unique ones to the string.
            Dim strErrors As String
            strErrors = vbCrLf
            Dim Enumerator As IDictionaryEnumerator
            Enumerator = m_ErrorHash.GetEnumerator()
            While Enumerator.MoveNext()
                'if our temporary array doesn't contain the new message we're processing, print it and add it to the array
                If Not (errorarray.Contains(Enumerator.Value.Message)) Then
                    errorarray.Add(Enumerator.Value.Message)
                    If (Enumerator.Value.Severity > (intSeverity - 1)) Then
                        Select Case Enumerator.Value.Severity
                            Case 1
                                severityLevel = "DEBUGGING"
                            Case 2
                                severityLevel = "WARNING"
                            Case 3
                                severityLevel = "ERROR"
                            Case 4
                                severityLevel = "FATAL"
                        End Select
                        strErrors = "[" + Enumerator.Value.CallingModule + "] " + severityLevel + ": " + Enumerator.Value.Message + vbCrLf + strErrors
                    End If
                End If

            End While
            Return strErrors
        End Function


        Private Class objErrorObj
            ' Stores the Severity level
            Private m_Severity As Integer = 1
            Public Property Severity() As Integer
                Get
                    Severity = m_Severity
                End Get
                Set(ByVal value As Integer)
                    m_Severity = value
                End Set
            End Property
            ' Stores the error message
            Private m_Message As String = ""
            Public Property Message() As String
                Get
                    Message = m_Message
                End Get
                Set(ByVal value As String)
                    m_Message = value
                End Set
            End Property

            ' Stores the calling module
            Private m_CallingModule As String = ""
            Public Property CallingModule() As String
                Get
                    CallingModule = m_CallingModule
                End Get
                Set(ByVal value As String)
                    m_CallingModule = value
                End Set
            End Property

            Friend Sub New() 'if someone creates a new object, just default it to nothing...  Can be set later.
                m_Message = ""
                m_Severity = 1
                m_CallingModule = "[]"
            End Sub

        End Class
    End Class
End Module

