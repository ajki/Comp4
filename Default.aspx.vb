Imports System.Data
Imports Model

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim userLogin As New UserLogin()

        If (userLogin.login(Username.Text, Password.Text)) Then
            Session("UserName") = Username.Text
            Server.Transfer("Homepage.aspx")
        Else
            Label1.Text = "Please sign up below."
        End If
    End Sub
End Class
