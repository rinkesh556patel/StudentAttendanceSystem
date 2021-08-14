Imports System.Data
Imports suid
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim q = "select first_name from faculty_master"
        Dim dt As New DataTable
        dt = suid.data(q)
        'Dim html As New StringBuilder
        'html.Append("<table class=""table"">")

        ''Building the Header row.
        'html.Append("<tr>")
        'For Each column As DataColumn In dt.Columns
        '    html.Append("<th>")
        '    html.Append(column.ColumnName)
        '    html.Append("</th>")
        'Next
        'html.Append("</tr>")

        ''Building the Data rows.
        'For Each row As DataRow In dt.Rows
        '    html.Append("<tr>")
        '    For Each column As DataColumn In dt.Columns
        '        html.Append("<td>")
        '        html.Append(row(column.ColumnName))
        '        html.Append("</td>")
        '    Next
        '    For Each column As DataColumn In dt.Columns
        '        html.Append("<td>")
        '        html.Append("<input type=""checkbox"" id=""ch""runat=""server"">")
        '        html.Append("</div>")
        '        html.Append("</td>")
        '    Next
        '    html.Append("</tr>")

        'Next

        ''Table end.
        'html.Append("</table>")

        ''Append the HTML string to Placeholder.
        'PlaceHolder1.Controls.Add(New Literal() With { _
        '   .Text = html.ToString() _
        ' })

        Dim row As TableRow = Nothing
        row = New TableRow
        For j As Integer = 0 To dt.Columns.Count - 1
            Dim th As New TableHeaderCell
            th.Text = dt.Columns(j).ColumnName
            row.Cells.Add(th)
        Next
        Table1.Rows.Add(row)
        For i As Integer = 0 To dt.Rows.Count - 1
            row = New TableRow
            Dim ch As New CheckBox
            ch.ID = "chk" & i & ""
            For j As Integer = 0 To dt.Columns.Count - 1
                Dim tc As New TableCell
                tc.Text = dt.Rows(i)(j).ToString
                row.Cells.Add(tc)
            Next
            Table1.Rows.Add(row)
        Next
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    End Sub
End Class
