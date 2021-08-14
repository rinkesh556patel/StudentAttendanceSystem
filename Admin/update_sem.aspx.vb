Imports System.Data.SqlClient
Imports System.Data
Imports suid
Imports connection_string
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lb_tot_stud.Visible = False
        Dim get_fy = "select count(*) from FY "
        Dim got_fy = suid.iud_sclar(get_fy)
        If got_fy = 0 Then
            ins_fy_sem_1()
        End If
        Dim fy = suid.iud_sclar("select distinct sem from FY")
        Dim sy = suid.iud_sclar("select distinct sem from SY")
        Dim ty = suid.iud_sclar("select distinct sem from TY")
        Label1.Text = fy
        Label2.Text = sy
        Label3.Text = ty
        If Label1.Text = 1 Or Label2.Text = 3 Or Label3.Text = 5 Then
            odd.Visible = True
            even.Visible = False
        Else
            odd.Visible = False
            even.Visible = True
        End If
        Dim div = "select count(*) from FY where division is NULL "
        Dim null_div = suid.iud_sclar(div)
        If null_div >= 1 Then
            w_lbl.Visible = True
            war.Visible = True
        Else
            w_lbl.Visible = False
            war.Visible = False
        End If
        Dim div1 = "select count(*) from SY where division is NULL "
        Dim null_div1 = suid.iud_sclar(div1)
        If null_div1 >= 1 Then
            w_lbl1.Visible = True
            war1.Visible = True
        Else
            w_lbl1.Visible = False
            war1.Visible = False

        End If
        Dim div2 = "select count(*) from TY where division is NULL "
        Dim null_div2 = suid.iud_sclar(div2)
        If null_div2 >= 1 Then
            w_lbl2.Visible = True
            war2.Visible = True
        Else
            w_lbl2.Visible = False
            war2.Visible = False

        End If
    End Sub
    Protected Sub upd_sem()
        Dim upd_stud = "update student_master set sem = case sem when 1 then 2 when  3 then 4  when 5 then 6 end where pursuing_status='c'"
        suid.iud(upd_stud)
        Dim upd_year = "update student_master set course_year = case sem when 1 then 'FY' when 2 then 'FY' when 3 then 'SY' when 4 then 'SY' when 5 then 'TY' when 6 then 'TY' end where pursuing_status='c'"
        suid.iud(upd_year)
        Dim del_fy = "delete from FY"
        suid.iud(del_fy)

        Dim del_sy = "delete from SY"
        suid.iud(del_sy)

        Dim del_ty = "delete from TY"
        suid.iud(del_ty)
        ins_fy_sem_2()
        ins_sy_sem_4()
        ins_ty_sem_6()
        Response.Redirect("/admin/update_sem.aspx")
    End Sub
    Protected Sub upd_e_sem()
        Dim upd_stud = "update student_master set sem = case sem when 2 then 3 when 4 then 5 when 6 then 6 else 1 end where pursuing_status='c'"
        suid.iud(upd_stud)

        Dim upd_year = "update student_master set course_year = case sem when 1 then 'FY' when 2 then 'FY' when 3 then 'SY' when 4 then 'SY' when 5 then 'TY' when 6 then 'TY' end where pursuing_status='c'"
        suid.iud(upd_year)

        Dim del_fy = "delete from FY"
        suid.iud(del_fy)

        Dim del_sy = "delete from SY"
        suid.iud(del_sy)

        Dim del_ty = "delete from TY"
        suid.iud(del_ty)
        Dim copy_stud = "insert into student_master_copy select * from student_master where sem=6 and pursuing_status='c'"
        suid.iud(copy_stud)
        Dim del_stud_master = "delete from student_master where sem=6 and pursuing_status='c'"
        suid.iud(del_stud_master)
        ins_fy_sem_1()
        ins_sy_sem_3()
        ins_ty_sem_5()
        Response.Redirect("/admin/update_sem.aspx")
    End Sub
    Public Sub ins_fy_sem_1()
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter
        Dim q = "select * from student_master where sem=1  and pursuing_status='c' order by last_name,first_name,middle_name"
        sqlcon.Open()
        da = New SqlDataAdapter(q, sqlcon)
        da.Fill(ds)
        sqlcon.Close()
        Dim tot_row As Integer = Convert.ToInt64(ds.Tables(0).Rows.Count.ToString())
        Dim rno = 0
        For i = 0 To tot_row - 1
            rno = i + 1
            Dim grno = ds.Tables(0).Rows(i)("grno").ToString
            Dim first_name = ds.Tables(0).Rows(i)("first_name").ToString
            Dim middle_name = ds.Tables(0).Rows(i)("middle_name").ToString
            Dim last_name = ds.Tables(0).Rows(i)("last_name").ToString
            Dim course = ds.Tables(0).Rows(i)("course").ToString
            Dim sem = ds.Tables(0).Rows(i)("sem").ToString
            Dim pursuing_status = ds.Tables(0).Rows(i)("pursuing_status").ToString
            Dim query = "insert into FY (ID,grno,first_name,middle_name,last_name,course,sem,pursuing_status) values ('" & rno & "','" & grno & "','" & first_name & "', '" & middle_name & "','" & last_name & "','" & course & "','" & sem & "','" & pursuing_status & "')"
            suid.iud(query)
        Next
        ds.Dispose()
    End Sub
    Public Sub ins_fy_sem_2()
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter
        Dim q = "select * from student_master where sem=2  and pursuing_status='c' order by last_name,first_name,middle_name"
        sqlcon.Open()
        da = New SqlDataAdapter(q, sqlcon)
        da.Fill(ds)
        sqlcon.Close()
        Dim tot_row As Integer = Convert.ToInt64(ds.Tables(0).Rows.Count.ToString())
        Dim rno = 0
        For i = 0 To tot_row - 1
            rno = i + 1
            Dim grno = ds.Tables(0).Rows(i)("grno").ToString
            Dim first_name = ds.Tables(0).Rows(i)("first_name").ToString
            Dim middle_name = ds.Tables(0).Rows(i)("middle_name").ToString
            Dim last_name = ds.Tables(0).Rows(i)("last_name").ToString
            Dim course = ds.Tables(0).Rows(i)("course").ToString
            Dim sem = ds.Tables(0).Rows(i)("sem").ToString
            Dim pursuing_status = ds.Tables(0).Rows(i)("pursuing_status").ToString
            Dim query = "insert into FY (ID,grno,first_name,middle_name,last_name,course,sem,pursuing_status) values (" & rno & ",'" & grno & "','" & first_name & "', '" & middle_name & "','" & last_name & "','" & course & "','" & sem & "','" & pursuing_status & "')"
            suid.iud(query)
        Next
        ds.Dispose()
    End Sub
    Public Sub ins_sy_sem_3()
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter
        Dim q = "select * from student_master where sem=3  and pursuing_status='c' order by last_name,first_name,middle_name"
        sqlcon.Open()
        da = New SqlDataAdapter(q, sqlcon)
        da.Fill(ds)
        sqlcon.Close()
        Dim tot_row As Integer = Convert.ToInt64(ds.Tables(0).Rows.Count.ToString())
        Dim rno = 0
        For i = 0 To tot_row - 1
            rno = i + 1
            Dim grno = ds.Tables(0).Rows(i)("grno").ToString
            Dim first_name = ds.Tables(0).Rows(i)("first_name").ToString
            Dim middle_name = ds.Tables(0).Rows(i)("middle_name").ToString
            Dim last_name = ds.Tables(0).Rows(i)("last_name").ToString
            Dim course = ds.Tables(0).Rows(i)("course").ToString
            Dim sem = ds.Tables(0).Rows(i)("sem").ToString
            Dim pursuing_status = ds.Tables(0).Rows(i)("pursuing_status").ToString
            Dim query = "insert into SY (ID,grno,first_name,middle_name,last_name,course,sem,pursuing_status) values (" & rno & ",'" & grno & "','" & first_name & "', '" & middle_name & "','" & last_name & "','" & course & "','" & sem & "','" & pursuing_status & "')"
            suid.iud(query)
        Next
        ds.Dispose()
    End Sub
    Public Sub ins_sy_sem_4()
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter
        Dim q = "select * from student_master where sem=4  and pursuing_status='c' order by last_name,first_name,middle_name"
        sqlcon.Open()
        da = New SqlDataAdapter(q, sqlcon)
        da.Fill(ds)
        sqlcon.Close()
        Dim tot_row As Integer = Convert.ToInt64(ds.Tables(0).Rows.Count.ToString())
        Dim rno = 0
        For i = 0 To tot_row - 1
            rno = i + 1
            Dim grno = ds.Tables(0).Rows(i)("grno").ToString
            Dim first_name = ds.Tables(0).Rows(i)("first_name").ToString
            Dim middle_name = ds.Tables(0).Rows(i)("middle_name").ToString
            Dim last_name = ds.Tables(0).Rows(i)("last_name").ToString
            Dim course = ds.Tables(0).Rows(i)("course").ToString
            Dim sem = ds.Tables(0).Rows(i)("sem").ToString
            Dim pursuing_status = ds.Tables(0).Rows(i)("pursuing_status").ToString
            Dim query = "insert into SY (ID,grno,first_name,middle_name,last_name,course,sem,pursuing_status) values (" & rno & ",'" & grno & "','" & first_name & "', '" & middle_name & "','" & last_name & "','" & course & "','" & sem & "','" & pursuing_status & "')"
            suid.iud(query)
        Next
        ds.Dispose()
    End Sub
    Public Sub ins_ty_sem_5()
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter
        Dim q = "select * from student_master where sem=5 and pursuing_status='c' order by last_name,first_name,middle_name"
        sqlcon.Open()
        da = New SqlDataAdapter(q, sqlcon)
        da.Fill(ds)
        sqlcon.Close()
        Dim tot_row As Integer = Convert.ToInt64(ds.Tables(0).Rows.Count.ToString())
        Dim rno = 0
        For i = 0 To tot_row - 1
            rno = i + 1
            Dim grno = ds.Tables(0).Rows(i)("grno").ToString
            Dim first_name = ds.Tables(0).Rows(i)("first_name").ToString
            Dim middle_name = ds.Tables(0).Rows(i)("middle_name").ToString
            Dim last_name = ds.Tables(0).Rows(i)("last_name").ToString
            Dim course = ds.Tables(0).Rows(i)("course").ToString
            Dim sem = ds.Tables(0).Rows(i)("sem").ToString
            Dim pursuing_status = ds.Tables(0).Rows(i)("pursuing_status").ToString
            Dim query = "insert into TY (ID,grno,first_name,middle_name,last_name,course,sem,pursuing_status) values (" & rno & ",'" & grno & "','" & first_name & "', '" & middle_name & "','" & last_name & "','" & course & "','" & sem & "','" & pursuing_status & "')"
            suid.iud(query)
        Next
        ds.Dispose()
    End Sub
    Public Sub ins_ty_sem_6()
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter
        Dim q = "select * from student_master where sem=6 and pursuing_status='c' order by last_name,first_name,middle_name"
        sqlcon.Open()
        da = New SqlDataAdapter(q, sqlcon)
        da.Fill(ds)
        sqlcon.Close()
        Dim tot_row As Integer = Convert.ToInt64(ds.Tables(0).Rows.Count.ToString())
        Dim rno = 0
        For i = 0 To tot_row - 1
            rno = i + 1
            Dim grno = ds.Tables(0).Rows(i)("grno").ToString
            Dim first_name = ds.Tables(0).Rows(i)("first_name").ToString
            Dim middle_name = ds.Tables(0).Rows(i)("middle_name").ToString
            Dim last_name = ds.Tables(0).Rows(i)("last_name").ToString
            Dim course = ds.Tables(0).Rows(i)("course").ToString
            Dim sem = ds.Tables(0).Rows(i)("sem").ToString
            Dim pursuing_status = ds.Tables(0).Rows(i)("pursuing_status").ToString
            Dim query = "insert into TY (ID,grno,first_name,middle_name,last_name,course,sem,pursuing_status) values (" & rno & ",'" & grno & "','" & first_name & "', '" & middle_name & "','" & last_name & "','" & course & "','" & sem & "','" & pursuing_status & "')"
            suid.iud(query)
        Next
        ds.Dispose()
    End Sub

    
    Protected Sub dd_sem_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dd_sem.SelectedIndexChanged
        If dd_sem.Text = 1 Then
            txt_div_1.Visible = True
            txt_div_2.Visible = False
            txt_div_3.Visible = False
        ElseIf dd_sem.Text = 2 Then
            txt_div_1.Visible = True
            txt_div_2.Visible = True
            txt_div_3.Visible = False
        Else
            txt_div_1.Visible = True
            txt_div_2.Visible = True
            txt_div_3.Visible = True
        End If
        lb_tot_stud.Visible = True
    End Sub

    Protected Sub dd_year_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dd_year.SelectedIndexChanged
        Dim val = dd_year.Text
        Dim sel_val = "select count(*) from " & dd_year.Text & ""
        lb_tot_stud.Text = "TOTAL STUDENTS OF " + val + " ARE " + suid.iud_sclar(sel_val).ToString
        dd_sem.Visible = True
        lb_tot_stud.Visible = True

    End Sub
    Protected Sub upd_div()
        If dd_sem.Text = 1 Then
            Dim upd_div = "update top(" & txt_div_1.Text & ")" + dd_year.Text +" set division=1"
            suid.iud(upd_div)
        ElseIf dd_sem.Text = 2 Then
            Dim upd_div = "update top(" & txt_div_1.Text & ") " + dd_year.Text + " set division=1"
            suid.iud(upd_div)
            Dim upd_div_1 = "update " + dd_year.Text + " set division=2 where division is NULL"
            suid.iud(upd_div_1)
        Else
            Dim upd_div = "update top(" & txt_div_1.Text & ") " & dd_year.Text & " set division=1"
            suid.iud(upd_div)
            Dim upd_div_1 = "update top(" & txt_div_2.Text & ") " & dd_year.Text & " set division=2 where division is NULL"
            suid.iud(upd_div_1)
            Dim upd_div_2 = "update top(" & txt_div_3.Text & ") " & dd_year.Text & " set division=3 where division is NULL"
            suid.iud(upd_div_2)
        End If
        Response.Redirect("/admin/update_sem.aspx")
    End Sub
End Class
