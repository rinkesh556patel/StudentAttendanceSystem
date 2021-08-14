Imports suid
Partial Class Admin_subject_allocation
    Inherits System.Web.UI.Page

    Protected Sub btnassign_Click(sender As Object, e As EventArgs) Handles btnassign.Click
        Dim scode = "select subject_code from bca_subject_master where subject_name='" & dd_sub.Text & "'"
        Dim code = suid.iud_sclar(scode)
        Dim fid = "select fid from faculty_master where first_name='" & dd_fac.Text & "'"
        Dim f_id = suid.iud_sclar(fid)

        Dim q = "insert into subject_alloc(fid,subject_code) values('" & f_id & "','" & code & "')"
        suid.iud(q)
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
