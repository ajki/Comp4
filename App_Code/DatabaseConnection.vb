Imports Microsoft.VisualBasic
Imports System.Data

Public Class DatabaseConnection

    Private Shared prop As DatabaseConnection = New DatabaseConnection()
    Private connection As OleDb.OleDbConnection


    Public Function GetConnection() As OleDb.OleDbConnection
        Return connection
    End Function

    Public Shared ReadOnly Property Instance() As DatabaseConnection
        Get
            Return prop
        End Get
    End Property

    Private Sub New()
        ' Private constructor prevents instantiation outside the class

        Dim dbProvider As String = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
        Dim dbSource As String = "Data Source= |DataDirectory|\Database.mdb"
        connection = New OleDb.OleDbConnection(dbProvider & dbSource)
    End Sub

End Class
