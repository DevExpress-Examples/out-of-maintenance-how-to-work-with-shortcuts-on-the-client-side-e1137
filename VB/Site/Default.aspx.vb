Imports System
Imports DevExpress.Web

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        ASPxWebControl.RegisterBaseScript(Me)
    End Sub
End Class
