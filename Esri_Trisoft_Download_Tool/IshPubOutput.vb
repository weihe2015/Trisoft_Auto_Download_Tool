Imports System.Xml
Imports System
Imports System.IO
Imports System.Text

Public Class IshPubOutput
    Inherits mainAPIclass
#Region "Private Members"
    Private ReadOnly strModuleName As String = "IshPubOutput"
#End Region
#Region "Constructors"
    Public Sub New(ByVal Username As String, ByVal Password As String, ByVal ServerURL As String)
        oISHAPIObjs = New ISHObjs(Username, Password, ServerURL)
        oISHAPIObjs.ISHAppObj.Login("InfoShareAuthor", Username, Password, Context)
    End Sub
#End Region

#Region "Methods"
    'Written by Wei He on July 24, 2015
    Public Function DownloadOutput(ByVal PubGUID As String, ByVal PubVer As String, ByVal OutLang As String, ByVal myFolder As String, ByVal logFolder As String,
                                   ByVal CheckedState As Boolean, ByVal Type1 As String, ByVal TopicStatus As String, ByVal AddNewLanguage As Boolean) As String
        Try
            Dim topics As HashSet(Of String) = GetTopicIDs(PubGUID, PubVer, Type1, OutLang)
            For Each topic As String In topics
                Dim perTopics As String() = topic.Split("#")
                Dim topicGUID As String = ""
                Dim Version As String = ""
                Dim Type As String = ""
                For k As Integer = 0 To perTopics.Length() - 1
                    If k = 0 Then
                        topicGUID = perTopics(k)
                    ElseIf k = 1 Then
                        Version = perTopics(k)
                    ElseIf k = 2 Then
                        Type = perTopics(k)
                    End If
                Next
                If topicGUID <> "" And Version <> "" And Type <> "" Then
                    If EnableL10N(topicGUID, Version, "") = True Then
                        Dim output As String
                        output = GetObjByID(topicGUID, Version, OutLang, "", myFolder, logFolder, Type, TopicStatus, AddNewLanguage)
                        If output = "Done" Then
                            If CheckedState = True Then
                                Dim strResolution = ""
                                Dim status As String = GetCurrentState(topicGUID, Version, "", OutLang)
                                If status.Equals("To be translated") Then
                                    Dim change As Boolean = False
                                    change = ChangeState("In translation", topicGUID, Version, OutLang, strResolution)
                                    Dim writer As New System.IO.StreamWriter(logFolder & "\log.txt", True)
                                    If change = True Then
                                        writer.WriteLine("Successfully changed state from 'To be translated' to 'In translation' for " & topicGUID & "=" & Version & "=" & OutLang & ".xml")
                                    Else
                                        writer.WriteLine("Fail to change state from 'To be translated' to 'In translation' for " & topicGUID & "=" & Version & "=" & OutLang & ".xml")
                                    End If
                                    writer.Close()
                                    writer = Nothing
                                End If
                            End If
                        ElseIf output = "New Language" And AddNewLanguage = True Then
                            'GetObjByID(topicGUID, Version, OutLang, "", myFolder, logFolder, Type, TopicStatus, AddNewLanguage)
                        End If
                    End If
                End If
            Next
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        Return ""
    End Function

    Public Function ChangeState(ByVal strDesiredState As String, ByVal strGUID As String, ByVal strVer As String, ByVal strLanguage As String, ByVal strResolution As String) As Boolean
        Dim myCurrentState As String = GetCurrentState(strGUID, strVer, strResolution, strLanguage)
        Dim processingresult As Boolean = True
        Dim strMetaState As String = "<ishfields><ishfield name=""FSTATUS"" level=""lng"">" + strDesiredState + "</ishfield></ishfields>"
        Dim result As Boolean = False
        result = CanMoveToState(strDesiredState, strGUID, strVer, strResolution, strLanguage)
        If (result = True) Then
            If SetMeta(strMetaState, strGUID, strVer, strResolution, strLanguage) = True Then
                'MsgBox("Changed state for " + strGUID + "=" + strVer + "=" + strResolution + "=" + strLanguage + "." + strModuleName + "-ChangeState")
            Else
                processingresult = False
            End If
        Else
            If myCurrentState.Equals(strDesiredState) Then
                processingresult = True
            Else
                processingresult = False
            End If

        End If
        Return processingresult
    End Function

    Public Function CanMoveToState(ByVal strState As String, ByVal strGUID As String, ByVal strVersion As String, ByVal strResolution As String, Optional ByVal strLanguage As String = "en") As Boolean

        Dim OutStates As String() = Nothing
        Try
            ' Clear variable for the result
            oISHAPIObjs.ISHDocObj.GetPossibleTransitionStates(Context, strGUID, strVersion, strLanguage, strResolution, OutStates)

        Catch ex As Exception
            modErrorHandler.Errors.PrintMessage(2, "Error getting possible transition states for " + strGUID + "" + strVersion + "" + strLanguage + ". Message: " + ex.Message.ToString, strModuleName + "-CanMoveToState")
            Return False
        End Try

        ' Now check to see if we can move to desired state:
        If (OutStates.Length > 0) Then
            Dim s As String
            For Each s In OutStates
                If (s.Equals(strState)) Then
                    CanMoveToState = True
                    Exit Function
                End If
            Next
        End If
        Return False
    End Function

#End Region

End Class
