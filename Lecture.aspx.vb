Imports System.Data
Imports Model

Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Property lectures As DataTable
    Protected Property currentUnit As Integer
    Sub Page_Load(ByVal Sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim units As New Dictionary(Of String, String)
        lectures = New Lecture().getLectures()
    End Sub
End Class
