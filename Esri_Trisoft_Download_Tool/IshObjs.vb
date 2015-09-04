Public Class IshObjs
    Public ISHAppObj As New Application20.Application20
    Public ISHDocObj As New DocumentObj20.DocumentObj20
    Public ISHDocObj25 As New DocumentObj25.DocumentObj25
    Public ISHPubObj As New Publication20.Publication20
    Public ISHPubOutObj20 As New PublicationOutput20.PublicationOutput20
    Public ISHPubOutObj25 As New PublicationOutput25.PublicationOutput25
    Public ISHBaselineObj As New Baseline25.BaseLine25
    Public ISHMetaObj As New MetaDataAssist20.MetaDataAssist20
    Public ISHEventMonitor25 As New EventMonitor25.EventMonitor25
    Public ISHOutputFormat25 As New OutputFormat25.OutputFormat25

    Sub New(ByVal Username As String, ByVal Password As String, ByVal ServerURL As String)
        ISHAppObj.Url = ServerURL + "/infosharews/Application20.asmx"
        ISHDocObj.Url = ServerURL + "/infosharews/DocumentObj20.asmx"
        ISHDocObj25.Url = ServerURL + "/infosharews/DocumentObj25.asmx"
        ISHPubObj.Url = ServerURL + "/infosharews/Publication20.asmx"
        ISHPubOutObj20.Url = ServerURL + "/infosharews/PublicationOutput20.asmx"
        ISHPubOutObj25.Url = ServerURL + "/infosharews/PublicationOutput25.asmx"
        ISHBaselineObj.Url = ServerURL + "/infosharews/Baseline25.asmx"
        ISHMetaObj.Url = ServerURL + "/infosharews/MetaDataAssist20.asmx"
        ISHEventMonitor25.Url = ServerURL + "/infosharews/EventMonitor25.asmx"
        ISHOutputFormat25.Url = ServerURL + "/infosharews/OutputFormat25.asmx"
    End Sub
End Class
