Imports Microsoft.VisualBasic
Imports System.Data

Public Class Test

    Public Function FillTest1(ByVal Test1Questions As List(Of String))

        Dim connection As OleDb.OleDbConnection = DatabaseConnection.Instance.GetConnection
        Dim sql = "SELECT Question, Unit1QuestionID " & "FROM [TestUnit1] "
        connection.Open()

        Dim dataAdapter As OleDb.OleDbDataAdapter = New OleDb.OleDbDataAdapter(sql, connection)
        Dim Test1Table As DataTable = New DataTable
        dataAdapter.Fill(Test1Table, "Test_Unit1")
        connection.Close()

        Dim Questions = (From row In Test1Table Select colB = row(1).ToString).ToList

        Dim askQuestions(19) As String
        Dim value As Integer

        For i = 0 To 9
            Randomize()                             ' Initialize the random-number generator.
            value = CInt(Int((9 * Rnd()) + 1))      ' Generate random value between 1 and 9. 
            askQuestions(i) = Questions(value)
            Questions.RemoveAt(value)               ' Removes already generated questions
        Next

        Return askQuestions(20)
    End Function

End Class
