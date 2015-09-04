Imports System
Imports System.Xml
Imports System.IO
Imports System.Xml.XmlReader
Imports System.Text

Imports System.Collections
Imports Microsoft.VisualBasic.ControlChars
Imports Microsoft.VisualBasic.FileIO
Imports Microsoft.VisualBasic.FileIO.FileSystem
Imports System.Convert
Imports System.Text.RegularExpressions

Public Class mainAPIclass
#Region "Private Members"
    Private ReadOnly strModuleName As String = "CustomCMSFuncs"
#End Region
#Region "Constructors"
    Sub New()
        'Can be overridden by subs. Should report an error if ever called.
        'Do nothing.
    End Sub

#End Region
#Region "Properties"
    Public Context As String = ""
    Public oISHAPIObjs As IshObjs
    Public oCommonFuncs As New clsCommonFuncs
#End Region

#Region "Topic ID Funcs"
    Public Function GetTopicIDs(ByVal GUID As String, ByVal Version As String, ByVal Type As String,
                                Optional ByVal Language As String = "en") As HashSet(Of String)
        Dim TopicGUID As HashSet(Of String) = New HashSet(Of String)()
        'Get the pub's baseline ID from the pub object
        Dim outObjectList As String = ""
        Dim GUIDs(0) As String
        GUIDs(0) = GUID
        Dim Languages(0) As String
        Languages(0) = Language
        Dim Resolutions() As String
        Resolutions = {"High", "Low", " "}
        oISHAPIObjs.ISHMetaObj.GetLOVValues(Context, "DRESOLUTION", Resolutions)

        'Get the existing publication content at the specified version.
        oISHAPIObjs.ISHPubOutObj25.RetrieveVersionMetadata(Context, _
                        GUIDs, _
                        Version, _
                        oCommonFuncs.BuildMinPubMetadata.ToString, _
                        outObjectList)

        Dim VerDoc As New XmlDocument
        VerDoc.LoadXml(outObjectList)
        If VerDoc Is Nothing Or VerDoc.HasChildNodes = False Then
            modErrorHandler.Errors.PrintMessage(3, "Unable to find publication for specified GUID: " + GUID, strModuleName + "-GetBaselineObjects")
            Return Nothing
        End If
        'Get the Baseline ID from the publication:
        Dim baselineID As String = ""
        Dim baselinename As String
        Dim ishfields As XmlNode = VerDoc.SelectSingleNode("//ishfields")
        baselinename = ishfields.SelectSingleNode("ishfield[@name='FISHBASELINE']").InnerText
        'Pull the baseline info
        oISHAPIObjs.ISHBaselineObj.GetBaselineId(Context, baselinename, baselineID)
        oISHAPIObjs.ISHBaselineObj.GetReport(Context, baselineID, Nothing, Languages, Languages, Languages, Resolutions, outObjectList)
        'Load the resulting baseline string as an xml document
        Dim baselineDoc As New XmlDocument
        baselineDoc.LoadXml(outObjectList)
        'for each object referenced, store the various info in an object and then store them in the hashSet.
        For Each baselineObject As XmlNode In baselineDoc.SelectNodes("/baseline/objects/object")
            Dim ishtype As String = baselineObject.Attributes.GetNamedItem("type").Value
            If ishtype = "ISHModule" Or ishtype = "ISHLibrary" Or ishtype = "ISHIllustration" Or ishtype = "ISHMasterDoc" Then
                Dim refGuid As String = baselineObject.Attributes.GetNamedItem("ref").Value
                Dim refver As String = baselineObject.Attributes.GetNamedItem("versionnumber").Value
                If Type = "Both Image and Topic" Then
                    If ishtype = "ISHModule" Or ishtype = "ISHLibrary" Or ishtype = "ISHIllustration" Or ishtype = "ISHMasterDoc" Then
                        TopicGUID.Add(refGuid & "#" & refver & "#" & ishtype)
                    End If
                ElseIf Type = "Image Only" Then
                    If ishtype = "ISHIllustration" Or ishtype = "ISHMasterDoc" Then
                        TopicGUID.Add(refGuid & "#" & refver & "#" & ishtype)
                    End If
                Else
                    If ishtype = "ISHModule" Or ishtype = "ISHLibrary" Or ishtype = "ISHMasterDoc" Then
                        TopicGUID.Add(refGuid & "#" & refver & "#" & ishtype)
                    End If
                End If
            End If
        Next
        Return TopicGUID
    End Function

#End Region

    ''' <summary>
    ''' Converts a string (ISHIllustration, ISHBaseline, etc.) to a valid ISHType object.
    ''' </summary>
    ''' 

    Public Function StringToISHType(ByVal IshType As String) As DocumentObj20.eISHType
        Select Case IshType
            Case "ISHBaseline"
                Return DocumentObj20.eISHType.ISHBaseline
            Case "ISHIllustration"
                Return DocumentObj20.eISHType.ISHIllustration
            Case "ISHLibrary"
                Return DocumentObj20.eISHType.ISHLibrary
            Case "ISHMasterDoc"
                Return DocumentObj20.eISHType.ISHMasterDoc
            Case "ISHModule"
                Return DocumentObj20.eISHType.ISHModule
            Case "ISHNone"
                Return DocumentObj20.eISHType.ISHNone
            Case "ISHPublication"
                Return DocumentObj20.eISHType.ISHPublication
            Case "ISHReusedObj"
                Return DocumentObj20.eISHType.ISHReusedObj
            Case "ISHTemplate"
                Return DocumentObj20.eISHType.ISHTemplate
            Case Else
                Return DocumentObj20.eISHType.ISHNone
        End Select

    End Function

    Public Function GetObject(ByVal GUID As String, ByVal Version As String, ByVal Language As String, ByVal Resolution As String) As XmlDocument
        Dim requestedmeta As StringBuilder = oCommonFuncs.BuildRequestedMetadata(Resolution)
        Dim XMLString As String = ""
        Dim ISHResult As String = ""
        Dim MyDoc As New XmlDocument
        Try
            ISHResult = oISHAPIObjs.ISHDocObj.GetDocObj(Context, GUID, Version, Language, Resolution, "", "", requestedmeta.ToString, XMLString)
            MyDoc.LoadXml(XMLString)
            Return MyDoc
        Catch ex As Exception
            'modErrorHandler.Errors.PrintMessage(3, "Failed to retrieve XML from CMS server: " + ex.Message, strModuleName)
            Return Nothing
        End Try
    End Function

    Public Function GetLatestPubVersionNumber(ByVal GUID As String) As String
        Dim outObjectList As String = ""
        Dim GUIDs(0) As String
        GUIDs(0) = GUID
        oISHAPIObjs.ISHPubOutObj25.RetrieveVersionMetadata(Context, GUIDs, "latest", oCommonFuncs.BuildMinPubMetadata.ToString, outObjectList)
        Console.WriteLine(outObjectList)
        Dim VerDoc As New XmlDocument
        VerDoc.LoadXml(outObjectList)
        If VerDoc Is Nothing Or VerDoc.HasChildNodes = False Then
            modErrorHandler.Errors.PrintMessage(3, "Unable to find publication for specified GUID: " + GUID, strModuleName + "-GetLatestPubVersionNumber")
            Return Nothing
        End If
        'Iterate through each returned obj and figure out the highest number value for 'Version returned'
        Dim ishfields As XmlNode = VerDoc.SelectSingleNode("//ishfields")
        Dim VersionNode As XmlNode = ishfields.SelectSingleNode("ishfield[@name='VERSION']")
        Return VersionNode.InnerText
    End Function

    Public Function SetMeta(ByVal strMeta As String, ByVal GUID As String, ByVal Version As String, ByVal strResolution As String, Optional ByVal Language As String = "en") As Boolean
        Try
            ' Clear variable for the result
            oISHAPIObjs.ISHDocObj.SetMetaData(Context, GUID, Version, Language, strResolution, strMeta, "")
        Catch ex As Exception
            modErrorHandler.Errors.PrintMessage(2, "Error setting meta for " + GUID + "" + Version + "" + Language + ". Message: " + ex.Message.ToString, strModuleName + "-SetMeta")
            Return False
        End Try
        Return True
    End Function

    ''' <summary>
    ''' Pulls the specified object from the CMS and saves it at the specified location.  Returns true if successful and file has been saved.
    ''' </summary>
    Public Function GetObjByID(ByVal GUID As String, ByVal Version As String, ByVal Language As String, ByVal Resolution As String, ByVal SavePath As String,
                               ByVal LogFolder As String, ByVal Type As String, ByVal TopicStatus As String, ByVal AddNewLanguage As Boolean) As String
        Using swriter As StreamWriter = File.AppendText(LogFolder & "\log.txt")
            If Type = "ISHIllustration" Then
                SavePath = SavePath & "\img"
            ElseIf Type = "ISHModule" Or Type = "ISHLibrary" Then
                SavePath = SavePath & "\topic"
            ElseIf Type = "ISHMasterDoc" Then
                SavePath = SavePath & "\map"
            End If
            Dim strXMLMetaDataFilter As StringBuilder = oCommonFuncs.BuildPubMetaDataFilter(GUID)
            Dim strXMLRequestedMetadata As StringBuilder = oCommonFuncs.BuildFullPubMetadata()
            Dim MyNode As XmlNode = Nothing
            Dim MyDoc As New XmlDocument
            Dim MyMeta As New XmlDocument
            Dim XMLString As String = ""
            Dim ISHMeta As String = ""
            Dim ISHResult As String = ""
            Dim filename As String = "BROKEN_FILENAME"
            Dim extension As String = "FIX"
            Dim requestedmeta As StringBuilder = oCommonFuncs.BuildRequestedMetadata(Resolution)
            'Call the CMS to get our content!
            Try
                ISHResult = oISHAPIObjs.ISHDocObj.GetDocObj(Context, GUID, Version, Language, Resolution, "", "", requestedmeta.ToString, XMLString)
                Dim status As String = GetCurrentState(GUID, Version, "", Language)
                If Not TopicStatus.Contains(status) Then
                    Return "No status"
                End If
            Catch ex As Exception
                swriter.WriteLine("Failed to retrieve " & GUID & " Version:" & Version & " language: " & Language & " XML from CMS server: " + ex.Message)
                'Create New language:
                If Language <> "en" And AddNewLanguage = True Then
                    'CreateNewLanguage(GUID, Version, Language, "")
                    Return "New Language"
                End If
                'modErrorHandler.Errors.PrintMessage(3, "Failed to retrieve XML from CMS server: " + ex.Message, strModuleName + "-GetObjByID")
            End Try

            'Load the XML and get the metadata:
            Try
                MyDoc.LoadXml(XMLString)
                filename = oCommonFuncs.GetFilenameFromIshMeta(MyDoc)
                'Remove any characters not allowed by windows operating system on filenames.
                filename = filename.Replace("\", "")
                filename = filename.Replace("/", "")
                filename = filename.Replace(":", "")
                filename = filename.Replace("*", "")
                filename = filename.Replace("?", "")
                filename = filename.Replace("""", "")
                filename = filename.Replace("<", "")
                filename = filename.Replace(">", "")
                filename = filename.Replace("|", "")
                MyNode = MyDoc.SelectSingleNode("//ishdata")
                'Get the extension:
                For Each ishattrib As XmlAttribute In MyNode.Attributes
                    If ishattrib.Name = "fileextension" Then
                        extension = ishattrib.Value
                    End If
                Next
            Catch ex As Exception
                modErrorHandler.Errors.PrintMessage(3, "Failed to retrieve object metadata from returned XML: " + ex.Message, strModuleName)
                Return False
            End Try
            'check to see if it's already been exported first, exit if it has...
            If File.Exists(SavePath + "\" + filename + "." + extension.ToLower) Then
                modErrorHandler.Errors.PrintMessage(2, "File already exists. Skipping: " + SavePath + "\" + filename + "." + extension.ToLower, strModuleName)
                Return "File exists"
            End If
            'Convert the CDATA to byte array
            Dim finalfile() As Byte
            Try
                'Convert CDATA Blob to Byte array
                finalfile = oCommonFuncs.GetBinaryOut(MyNode)
            Catch ex As Exception
                modErrorHandler.Errors.PrintMessage(3, "Failed to convert CDATA Blob to binary stream - no content returned from CMS: " + ex.Message, strModuleName)
                Return "Fail"
            End Try
            'Save the content out to a file:
            Try
                'Create the save path if it doesn't exist:
                If Directory.Exists(SavePath) = False Then
                    Directory.CreateDirectory(SavePath)
                End If
                'write to filename, bytes we extracted, don't append

                My.Computer.FileSystem.WriteAllBytes(SavePath + "\" + filename + "." + extension.ToLower, finalfile, False)
                'swriter.WriteLine(GUID & "=" & Version & "=" & Language & ".xml has been created successfully")
                Return "Done"
            Catch ex As Exception
                modErrorHandler.Errors.PrintMessage(3, "Failed to save returned object to a file: " + ex.Message, strModuleName)
                swriter.WriteLine("Failed to save returned object to a file: " + ex.Message & " " & GUID & "=" & Version & "=" & Language)
                Return "Fail"
            End Try
        End Using
    End Function

    ''' <summary>
    ''' Check to see if an object with the specified parameters exists in the CMS.  Returns true if exists.
    ''' </summary>
    Public Function ObjectExists(ByVal GUID As String, ByVal Version As String, ByVal Language As String, Optional ByVal Resolution As String = "") As Boolean
        Dim XMLString As String = ""
        Dim ISHResult As String = ""
        Dim requestedmeta As StringBuilder = oCommonFuncs.BuildRequestedMetadata(Resolution)

        'Call the CMS to get our content!
        Try
            ISHResult = oISHAPIObjs.ISHDocObj.GetDocObj(Context, GUID, Version, Language, Resolution, "", "", requestedmeta.ToString, XMLString)
            Return True
        Catch ex As Exception
            modErrorHandler.Errors.PrintMessage(3, "Failed to retrieve XML from CMS server: " + ex.Message, strModuleName)
            Return False
        End Try
    End Function

    Public Function GetCurrentState(ByVal GUID As String, ByVal Version As String, ByVal strResolution As String, Optional ByVal Language As String = "en") As String

        Dim state As String = "nothing"
        Dim OutXML As String = ""
        Try
            '' Declare variable for the Application service

            Dim strMeta As String = "<ishfields><ishfield name=""FSTATUS"" level=""lng""/></ishfields>"

            oISHAPIObjs.ISHDocObj.GetMetaData(Context, GUID, Version, Language, strResolution, strMeta, OutXML)
            Dim docInfo As New XmlDocument
            docInfo.LoadXml(OutXML)
            state = docInfo.SelectSingleNode("//ishfield[@name=""FSTATUS""]").InnerText
            Return state
        Catch ex As Exception
            modErrorHandler.Errors.PrintMessage(2, "Error getting current state for " + GUID + "" + Version + "" + Language + ". Message: " + ex.Message.ToString, strModuleName + "-GetCurrentState")
            Return Nothing
        End Try
    End Function

    Public Function EnableL10N(ByVal GUID As String, ByVal Version As String, ByVal Resolution As String) As Boolean
        Dim requestmeta As StringBuilder = oCommonFuncs.BuildMinTopicMetadata(Resolution)
        Dim OutXML As String = ""
        Dim L10N As String = ""
        Dim status As String = ""
        Try
            oISHAPIObjs.ISHDocObj.GetMetaData(Context, GUID, Version, "en", Resolution, requestmeta.ToString, OutXML)
            Dim docInfo As New XmlDocument
            docInfo.LoadXml(OutXML)
            status = docInfo.SelectSingleNode("//ishfield[@name=""FSTATUS""]").InnerText
            L10N = docInfo.SelectSingleNode("//ishfield[@name=""FNOTRANSLATIONMGMT""]").InnerText
            If L10N = "No" And status = "Released" Then
                Return True
            Else
                Return False
            End If
        Catch ex As Exception

        End Try

    End Function

End Class
