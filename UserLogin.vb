Imports Microsoft.VisualBasic
Imports System.Data

Namespace Model

    Public Class UserLogin

        Public Function login(ByVal username As String, ByVal password As String) As Boolean
            Dim connection As OleDb.OleDbConnection = DatabaseConnection.Instance.GetConnection

            Dim sql = "SELECT * " & "FROM [User] " & "WHERE Username = '" & username & "'" & _
            "AND Password ='" & password & "'"

            connection.Open()
            Dim dAdapter As OleDb.OleDbDataAdapter = New OleDb.OleDbDataAdapter(sql, connection)
            Dim dSet As DataSet = New DataSet
            dAdapter.Fill(dSet, "User")
            connection.Close()

            Return dSet.Tables("User").Rows.Count > 0
        End Function

        Public Function signup(ByVal username As String, ByVal password As String) As Boolean
            If (userExists(username)) Then
                Return False
            End If

            Dim connection As OleDb.OleDbConnection = DatabaseConnection.Instance.GetConnection
            Dim insertSql As String = "INSERT INTO [User] (Username, [Password]) VALUES ('" & username & "', '" & password & "')"
            Console.WriteLine(insertSql)


            connection.Open()
            Dim cmd = New OleDb.OleDbCommand(insertSql, connection)
            cmd.ExecuteNonQuery()
            connection.Close()

            Return True
        End Function

        Public Function userExists(ByVal username As String) As Boolean
            Dim connection As OleDb.OleDbConnection = DatabaseConnection.Instance.GetConnection

            Dim sql = "SELECT * " & "FROM [User] " & "WHERE Username = '" & username & "'"

            connection.Open()
            Dim dAdapter As OleDb.OleDbDataAdapter = New OleDb.OleDbDataAdapter(sql, connection)
            Dim dSet As DataSet = New DataSet

            dAdapter.Fill(dSet, "User")
            connection.Close()

            Return dSet.Tables("User").Rows.Count > 0
        End Function
    End Class

End Namespace

