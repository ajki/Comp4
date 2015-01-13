Imports System.Data
Imports Model

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Username.Text = "" Then
            Label1.Text = ("Please do not leave username blank")
        ElseIf Password.Text = "" Then
            Label1.Text = ("Please do not leave passwod blank")
        ElseIf Password.Text <> Conf_Password.Text Then
            Label1.Text = ("Please enter your password correctly in both spaces")
        Else
            Dim userLogin As New UserLogin()

            If userLogin.signup(Username.Text, Password.Text) Then
                Label1.Text = "New user created!"
            Else
                Label1.Text = "User already exists"
            End If
        End If
    End Sub
End Class
