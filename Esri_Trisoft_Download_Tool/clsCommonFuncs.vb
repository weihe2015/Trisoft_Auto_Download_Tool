Imports System.IO
Imports System.Xml
Imports System.Text
Public Class clsCommonFuncs
    Private ReadOnly strModuleName As String = "CommonFuncs"
    Public Structure XMLTemplateStruct
        Dim map As XmlDocument
        Dim mapblob() As Byte
        Dim concept As XmlDocument
        Dim conceptblob() As Byte
        Dim task As XmlDocument
        Dim taskblob() As Byte
        Dim reference As XmlDocument
        Dim referenceblob() As Byte
        Dim troubleshooting As XmlDocument
        Dim troubleshootingblob() As Byte
    End Structure

    Public XMLTemplates As New XMLTemplateStruct
    ''' <summary>
    ''' Given an XML Document type, returns a base-64 encoded blob that can be fed directly to the CMS.
    ''' </summary>

    Public Function BuildPubMetaDataFilter(ByVal GUID As String, Optional ByVal Version As String = "latest", Optional ByVal Language As String = "", Optional ByVal OutputType As String = "all") As StringBuilder
        Dim requestedmeta As New StringBuilder

        requestedmeta.Append("<ishfields>")


        If Version = "latest" Then
            'Get all versions. Returns multiple ishobjects.
        Else
            'Get the specified version only.
            requestedmeta.Append("<ishfield name=""FMAPID"" level=""lng"">" + GUID + "</ishfield>")
        End If

        If OutputType = "all" Then
            'Get all versions. By not including the filter, all outputs will be returned.
        Else
            'Get the specified output type only
            requestedmeta.Append("<ishfield name=""FISHOUTPUTFORMATREF"" level=""lng"">" + OutputType + "</ishfield>")
        End If

        If Language.Length > 0 Then
            'A specific language is wanted. Return only outputs that are of that language.  otherwise, all languages are returned.
            requestedmeta.Append("<ishfield name=""DOC-LANGUAGE"" level=""lng"">" + Language + "</ishfield>")
        End If
        requestedmeta.Append("<ishfield name=""VERSION"" level=""version"">" + Version + "</ishfield>")
        requestedmeta.Append("</ishfields>")
        Return requestedmeta
    End Function

    Public Function BuildRequestedMetadata(ByVal Resolution As String) As StringBuilder
        Dim requestedmeta As New StringBuilder
        requestedmeta.Append("<ishfields>")
        requestedmeta.Append("<ishfield name=""FTITLE"" level=""logical""/>")
        requestedmeta.Append("<ishfield name=""VERSION"" level=""version""/>")
        If Resolution = "" Then
            requestedmeta.Append("<ishfield name=""FAUTHOR"" level=""lng""/>")
        Else
            requestedmeta.Append("<ishfield name=""FILLUSTRATOR"" level=""lng""/>")
            requestedmeta.Append("<ishfield name=""FRESOLUTION"" level=""lng""/>")
        End If
        requestedmeta.Append("<ishfield name=""FSTATUS"" level=""lng""/>")
        requestedmeta.Append("<ishfield name=""DOC-LANGUAGE"" level=""lng""/>")
        'requestedmeta.Append("<ishfield name=""EDT-FILE-EXTENSION"" level=""lng""/>")
        requestedmeta.Append("</ishfields>")
        Return requestedmeta
    End Function

    Public Function BuildFullPubMetadata() As StringBuilder
        Dim requestedmeta As New StringBuilder
        requestedmeta.Append("<ishfields>")
        requestedmeta.Append("<ishfield name=""VERSION"" level=""version""/>")
        requestedmeta.Append("<ishfield name=""FISHPUBSTATUS"" level=""lng""/>")
        requestedmeta.Append("<ishfield name=""FISHISRELEASED"" level=""version""/>")
        requestedmeta.Append("<ishfield name=""DOC-LANGUAGE"" level=""lng""/>")
        requestedmeta.Append("<ishfield name=""FISHOUTPUTFORMATREF"" level=""lng""/>")
        requestedmeta.Append("<ishfield name=""FTITLE"" level=""logical""/>")
        requestedmeta.Append("</ishfields>")
        Return requestedmeta
    End Function

    Public Function BuildMinTopicMetadata(ByVal Resolution) As StringBuilder
        Dim requestedmeta As New StringBuilder
        requestedmeta.Append("<ishfields>")
        If Resolution <> "" Then
            requestedmeta.Append("<ishfield name=""FRESOLUTION"" level=""lng""/>")
        End If
        requestedmeta.Append("<ishfield name=""FSTATUS"" level=""lng""/>")
        requestedmeta.Append("<ishfield name=""FNOTRANSLATIONMGMT"" level=""logical""/>")
        requestedmeta.Append("</ishfields>")
        Return requestedmeta
    End Function


    Public Function BuildMinPubMetadata() As StringBuilder
        Dim requestedmeta As New StringBuilder
        requestedmeta.Append("<ishfields>")
        requestedmeta.Append("<ishfield name=""VERSION"" level=""version""/>")
        requestedmeta.Append("<ishfield name=""FISHISRELEASED"" level=""version""/>")
        requestedmeta.Append("<ishfield name=""FTITLE"" level=""logical""/>")
        requestedmeta.Append("<ishfield name=""FISHMASTERREF"" level=""version""/>")
        requestedmeta.Append("<ishfield name=""FISHBASELINE"" level=""version""/>")
        requestedmeta.Append("</ishfields>")
        Return requestedmeta
    End Function

    Public Function GetISHTypeFromMeta(ByVal doc As XmlDocument) As String
        Dim MyNode As XmlNode
        Dim ishtype As String = ""
        MyNode = doc.SelectSingleNode("//ishobject")
        'Get the ISHType:
        For Each ishattrib As XmlAttribute In MyNode.Attributes
            If ishattrib.Name = "ishtype" Then
                ishtype = ishattrib.Value
            End If
        Next
        Return ishtype
    End Function

    Public Function GetFilenameFromIshMeta(ByVal IshMetaData As XmlDocument) As String
        Dim filename As New StringBuilder
        Try
            'first, check to make sure we actually have attributes we need:
            If IshMetaData.ChildNodes.Count = 0 Then
                Return ""
            End If
            'Next, return the basic data that all objects have:
            filename.Append(IshMetaData.SelectSingleNode("/ishobjects/ishobject/ishfields/ishfield[contains(@name, 'FTITLE')]").InnerText + "=")
            filename.Append(IshMetaData.SelectSingleNode("/ishobjects/ishobject/@ishref").Value + "=") ' get guid
            filename.Append(IshMetaData.SelectSingleNode("/ishobjects/ishobject/ishfields/ishfield[contains(@name, 'VERSION')]").InnerText + "=")
            filename.Append(IshMetaData.SelectSingleNode("/ishobjects/ishobject/ishfields/ishfield[contains(@name, 'DOC-LANGUAGE')]").InnerText + "=")

            'last, check to see if we have an image.  If we do, we need to get the data and return it as part of the string too.  Otherwise, we just return ""
            Dim resolution As String = ""
            If Not IshMetaData.SelectSingleNode("/ishobjects/ishobject/ishfields/ishfield[contains(@name, 'FRESOLUTION')]") Is Nothing Then
                'there is text here... let's capture it:
                resolution = IshMetaData.SelectSingleNode("/ishobjects/ishobject/ishfields/ishfield[contains(@name, 'FRESOLUTION')]").InnerText
            End If
            filename.Append(resolution)

            Return filename.ToString
        Catch ex As Exception
            modErrorHandler.Errors.PrintMessage(3, "One or more metadata was not found while trying to build a filename from a located GUID. " + ex.Message, strModuleName)
            Return ""
        End Try
        Return True
    End Function

    ''' <summary>
    ''' Retrieves CMS metadata from a local file including CMSFilename for XML files.  File must be exported from the CMS or preprocessed for the CMS.
    ''' </summary>
    Public Function GetCommonMetaFromLocalFile(ByVal LocalFilePath As String, ByRef CMSFileName As String, ByRef GUID As String, ByRef Version As String, ByRef Language As String, ByRef Resolution As String) As Boolean
        'most commonly used to get parameters for deleting an object in the CMS...
        Dim myfile As New FileInfo(LocalFilePath)
        Dim aryMeta As New ArrayList
        Try
            For Each metapiece As String In myfile.Name.Replace(myfile.Extension, "").Split("=")
                aryMeta.Add(metapiece)
            Next
            CMSFileName = aryMeta(0)
            GUID = aryMeta(1)
            Version = aryMeta(2)
            Language = aryMeta(3)
            If aryMeta.Count > 4 Then
                Resolution = aryMeta(4)
            Else
                Resolution = ""
            End If
            'Extension = myfile.Extension
            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function


    Public Function GetMetaDataXMLStucture(ByVal CMSTitle As String, ByVal Version As String, ByVal Author As String, ByVal Status As String, ByVal Resolution As String,
                                           ByVal Language As String, Optional ByVal ModuleType As String = "", Optional ByVal Illustrator As String = "mmatus") As String
        'If CMSTitle = "" Or Version = "" Or Author = "" Or Status = "" Then
        '    'if one or more required fields are blank, abort opperation!
        '    modErrorHandler.Errors.PrintMessage(3, "One or more required Metadata fields are blank. Check the Author, Status, CMSTitle, and Version values.", strModuleName + "-GetMetadataXMLStructure")
        '    Return ""
        'End If
        Dim XMLString As New StringBuilder
        XMLString.Append("<ishfields>")
        If CMSTitle.Length > 0 Then
            XMLString.Append("<ishfield name=""FTITLE"" level=""logical"">")
            XMLString.Append(CMSTitle)
            XMLString.Append("</ishfield>")
        End If
        'If we have a ModuleType, we need to set the metadata appropriately for the LOV.
        If Not ModuleType = "" Then
            Select Case ModuleType.ToLower
                Case "concept", "task", "reference", "topic", "dita", "troubleshooting", "glossary", "glossary term"
                    XMLString.Append("<ishfield name=""FMODULETYPE"" level=""logical"">")
                Case "map", "submap"
                    XMLString.Append("<ishfield name=""FMASTERTYPE"" level=""logical"">")
                Case "graphic", "icon", "screenshot"
                    XMLString.Append("<ishfield name=""FILLUSTRATIONTYPE"" level=""logical"">")

            End Select
            XMLString.Append(ModuleType)
            XMLString.Append("</ishfield>")
        End If
        'if we have an image, need to set the default illustrator for it.
        If Resolution.Length > 0 Then
            XMLString.Append("<ishfield name=""FILLUSTRATOR"" level=""lng"">")
            XMLString.Append(Illustrator)
            XMLString.Append("</ishfield>")
            XMLString.Append("<ishfield type=""hidden"" name=""FNOTRANSLATIONMGMT"" level=""logical"" label=""Disable translation management"">No</ishfield>")
        End If
        If Author.Length > 0 Then
            XMLString.Append("<ishfield name=""FAUTHOR"" level=""lng"">")
            XMLString.Append(Author)
            XMLString.Append("</ishfield>")
        End If
        If Status.Length > 0 Then
            XMLString.Append("<ishfield name=""FSTATUS"" level=""lng"">")
            XMLString.Append(Status)
            XMLString.Append("</ishfield>")
        End If
        XMLString.Append("</ishfields>")
        Return XMLString.ToString
    End Function



    ''' <summary>
    ''' Given a path to a file of any type, returns a base-64 encoded blob that can be fed directly to the CMS.
    ''' </summary>
    Public Function GetIshBlobFromFile(ByVal FilePath As String) As Byte()
        Dim Data() As Byte
        Try
            Dim fInfo As New FileInfo(FilePath)
            Dim numBytes As Long = fInfo.Length
            Dim fStream As New FileStream(FilePath, FileMode.Open, FileAccess.Read)
            Dim br As New BinaryReader(fStream)
            Data = br.ReadBytes(CInt(numBytes))
            br.Close()
            fStream.Close()
            Return Data
        Catch ex As Exception
            modErrorHandler.Errors.PrintMessage(3, FilePath + ": Failed to convert content to Base64 blob. Message: " + ex.Message, strModuleName + "-GetIshBlobFromFile")
            Return Nothing
        End Try
    End Function

    Public Function GetBinaryOut(ByVal DITANode As XmlNode) As Byte()
        Dim CDataNode As XmlNode
        Dim CData As String = ""
        Dim decodedBytes As Byte()

        Dim settings As XmlReaderSettings
        Dim resolver As New DITAResolver()
        settings = New XmlReaderSettings()
        settings.DtdProcessing = False
        'settings.ProhibitDtd = False
        settings.ValidationType = ValidationType.None
        settings.XmlResolver = resolver
        settings.CloseInput = True
        settings.IgnoreWhitespace = False


        CDataNode = DITANode.FirstChild
        CData = CDataNode.InnerText
        decodedBytes = Convert.FromBase64String(CData)
        Return decodedBytes
    End Function

    Public Class DITAResolver
        Inherits XmlUrlResolver
        Private ReadOnly Property strModuleName() As String
            Get
                strModuleName = "DITAResolver"
            End Get
        End Property
        Public Shared myHash As New Hashtable()

        Public Sub New()
        End Sub 'New

        Public Overrides Function GetEntity(ByVal absoluteUri As Uri, ByVal role As String, ByVal ofObjectToReturn As Type) As Object
            Dim pubid1slash As String
            Dim Pubid As String
            Pubid = "-//VMWARE//DTD DITA "
            pubid1slash = "-/VMWARE/DTD DITA "
            Dim mapid1slash As String
            Dim Mapid As String
            Mapid = "-//ESRI//DTD DITA "
            mapid1slash = "-/ESRI/DTD DITA "
            Dim absURI As String = absoluteUri.ToString
            Console.WriteLine("URI: " & absURI)
            If (absoluteUri.ToString().Contains(Pubid) Or absoluteUri.ToString().Contains(Mapid) Or absoluteUri.ToString().Contains(pubid1slash) Or absoluteUri.ToString().Contains(mapid1slash)) Then
                Dim DTDpath As String
                DTDpath = Path.GetTempPath() & "nbsp.dtd"
                Return New FileStream(DTDpath, FileMode.Open, FileAccess.Read, FileShare.Read)
                ' Return New FileStream(DTDTopic, FileMode.Open, FileAccess.Read, FileShare.Read)


            ElseIf myHash.ContainsKey(absoluteUri) Then
                modErrorHandler.Errors.PrintMessage(1, "Reading resource" + absoluteUri.ToString() + " from cached stream", strModuleName)
                'Returns the cached stream.
                Return New FileStream(CType(myHash(absoluteUri), [String]), FileMode.Open, FileAccess.Read, FileShare.Read)
            Else
                Return MyBase.GetEntity(absoluteUri, role, ofObjectToReturn)

            End If
        End Function 'GetEntity
    End Class 'CustomResolver

End Class
