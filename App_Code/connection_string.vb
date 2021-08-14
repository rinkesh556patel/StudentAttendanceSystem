Imports Microsoft.VisualBasic
Imports System.Data.SqlClient

Public Class connection_string
    Public Shared sqlcon As SqlConnection = New SqlConnection((ConfigurationManager.ConnectionStrings("myconn").ConnectionString))
End Class
