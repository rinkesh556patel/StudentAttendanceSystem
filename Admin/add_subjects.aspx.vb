Imports suid
Partial Class Admin_add_subjects
    Inherits System.Web.UI.Page

    Protected Sub btnadd_sub_Click(sender As Object, e As EventArgs) Handles btnadd_sub.Click
        Dim s_code = txt_sub_code.Text
        Dim s_name = txt_sub_name.Text
        Dim s_sem = txt_sub_sem.Text
        Dim query = "insert into bca_subject_master(subject_name,subject_code,subject_sem) values ('" & s_name & "','" & s_code & "','" & s_sem & "')"
        suid.iud(query)
        txt_sub_code.Text = ""
        txt_sub_name.Text = ""
        txt_sub_sem.Text = ""
    End Sub
End Class
