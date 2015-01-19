Imports Microsoft.VisualBasic
Imports System.Data

Namespace Model

    Public Class Lecture
        Public Function getLectures() As DataTable
            Dim connection As OleDb.OleDbConnection = DatabaseConnection.Instance.GetConnection

            Dim sql = "SELECT * FROM [Notes]"

            connection.Open()
            Dim dAdapter As OleDb.OleDbDataAdapter = New OleDb.OleDbDataAdapter(sql, connection)
            Dim dSet As DataSet = New DataSet
            dAdapter.Fill(dSet, "Notes")
            connection.Close()

            System.Diagnostics.Debug.WriteLine(dSet.Tables("Notes").Rows.Count)

            Return dSet.Tables("Notes")
        End Function
    End Class
End Namespace