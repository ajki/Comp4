
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Name_Init(sender As Object, e As EventArgs) Handles Name.Init
        Name.Text = Session("UserName")
    End Sub
End Class
