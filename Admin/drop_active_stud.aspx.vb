Imports suid
Partial Class Admin_Default2
    Inherits System.Web.UI.Page

    Protected Sub btndrop_Click(sender As Object, e As EventArgs) Handles btndrop.Click
        Dim upd_stud = "update student_master set pursuing_status='d' where grno='" & DropDownList1.Text & "'"
        suid.iud(upd_stud)
        Dim copy_stud = "insert into drop_student select grno,first_name,middle_name,last_name,addres,phone_no,email_address,course,course_year,sem,pursuing_status,DOB,hsc_per from student_master where grno='" & DropDownList1.Text & "'"
        suid.iud(copy_stud)
        Response.Redirect("/admin/drop_active_stud.aspx")
    End Sub

    Protected Sub btncon_Click(sender As Object, e As EventArgs) Handles btncon.Click
        Dim upd_stud = "update student_master set pursuing_status='c' where grno='" & DropDownList2.Text & "'"
        suid.iud(upd_stud)
        Dim del_drop = "delete from drop_student where grno='" & DropDownList2.Text & "'"
        suid.iud(del_drop)
        Response.Redirect("/admin/drop_active_stud.aspx")
    End Sub
End Class
