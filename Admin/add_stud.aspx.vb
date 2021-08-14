Imports suid
Imports connection_string
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Protected Sub ins_Click()
        'INSERT QUERY FOR ADDING MORE STUDENTS IN STUDENT MASTER TABLE
        Dim fname = first_name.Text
        Dim mname = middle_name.Text
        Dim lname = last_name.Text
        Dim add = address.Text
        Dim email = email_address.Text
        Dim phno = phone_number.Text
        Dim dob = date_of_birth.Text
        Dim hsc = hsc_per.Text
        Dim query = "insert into student_master(first_name,middle_name,last_name,addres,phone_no,email_address,DOB,hsc_per) values ('" & fname & "','" & mname & "','" & lname & "','" & add & "','" & phno & "','" & email & "','" & dob & "'," & hsc & ")"
        suid.iud(query)
        Response.Redirect("/admin/add_stud.aspx")
        first_name.Text = ""
        middle_name.Text = ""
        last_name.Text = ""
        address.Text = ""
        email_address.Text = ""
        phone_number.Text = ""
        date_of_birth.Text = ""
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    End Sub
End Class
