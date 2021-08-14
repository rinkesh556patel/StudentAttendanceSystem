Imports suid
Partial Class Admin_Default2
    Inherits System.Web.UI.Page
    Protected Sub ins_fac()
        Dim fname = first_name.Text
        Dim mname = middle_name.Text
        Dim lname = last_name.Text
        Dim jd = join_date.Text
        Dim email = email_address.Text
        Dim phno = phone_number.Text
        Dim pas = pass.Text
        Dim query = "insert into faculty_master(first_name,middle_name,last_name,join_date,mobile_number,email_id,pass) values ('" & fname & "','" & mname & "','" & lname & "','" & jd & "','" & phno & "','" & email & "','" & pas & "')"
        suid.iud(query)
        Response.Redirect("/admin/add_stud.aspx")
        first_name.Text = ""
        middle_name.Text = ""
        last_name.Text = ""
        join_date.Text = ""
        email_address.Text = ""
        phone_number.Text = ""
        pass.Text = ""
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
