Imports Microsoft.VisualBasic
Imports connection_string
Imports System.Data.SqlClient
Imports System.Data
Public Class suid
    Public Shared Function data(ByVal query As String) As DataTable
        Dim sqlcmd As SqlCommand
        Dim da As New SqlDataAdapter
        Dim dt As New DataTable
        sqlcmd = New SqlCommand(query, sqlcon)
        da.SelectCommand = sqlcmd
        da.Fill(dt)
        Return dt
    End Function
    Public Shared Sub iud(ByVal query As String)
        Dim sqlcmd As SqlCommand
        sqlcmd = New SqlCommand(query, sqlcon)
        sqlcon.Open()
        Try
            sqlcmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox("error" + ex.ToString, MsgBoxStyle.Critical)
        Finally
            sqlcon.Close()
        End Try
    End Sub
    Public Shared Function iud_sclar(ByVal query As String) As Integer
        Dim sqlcmd As SqlCommand
        Dim total_row As Integer
        sqlcmd = New SqlCommand(query, sqlcon)
        sqlcon.Open()
        Try
            total_row = sqlcmd.ExecuteScalar
        Catch ex As Exception
            MsgBox("error" + ex.ToString, MsgBoxStyle.Critical)
        Finally
            sqlcon.Close()
        End Try
        Return total_row
    End Function
End Class
