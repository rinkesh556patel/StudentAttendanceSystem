Imports System.Data
Imports suid
Partial Class Default2
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim bfield As New BoundField()
            bfield.HeaderText = "Name"
            bfield.DataField = "first_name"
            GridView1.Columns.Add(bfield)
            For i As Integer = 0 To 9
                Dim tfield As New TemplateField()
                tfield.HeaderText = i
                GridView1.Columns.Add(tfield)
            Next
        End If
        Me.bind()
    End Sub
    Private Sub bind()
        Dim dt As New DataTable
        Dim q = "select first_name from faculty_master"
        dt = suid.data(q)
        GridView1.DataSource = dt
        GridView1.DataBind()
        GridView1.UseAccessibleHeader = True
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader
    End Sub
    Public Sub db(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs)
        For i As Integer = 1 To 10
            If e.Row.RowType = DataControlRowType.DataRow Then
                Dim check_box As New CheckBox
                check_box.ID = "check" & i & ""
                e.Row.Cells(i).Controls.Add(check_box)
            End If
        Next
    End Sub

    Protected Sub Unnamed1_Click(sender As Object, e As EventArgs)
        For Each grv As GridViewRow In GridView1.Rows
            For i As Integer = 1 To 10
                Dim o = CType(grv.FindControl("check" & i & ""), CheckBox).Checked
                If o = True Then
                    Dim lbl = grv.Cells(0).Text
                    Dim h = GridView1.HeaderRow.Cells(i).Text
                    Dim q = "insert into at values ('" & lbl & "','" & h & "')"
                    suid.iud(q)
                End If
            Next
        Next grv
    End Sub
End Class
