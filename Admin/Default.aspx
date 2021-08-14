<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/admin.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <section id="main-content" style="background-color: #ffffff; background-image: url('/admin/img/b.jpg')">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/home.aspx">Home</a></li>
                        <li><i class=" fa fa-certificate "></i><a href="/admin/drop_active.aspx.aspx">Drop OR Active Studnets</a></li>
                    </ol>
                </div>
            </div>
        </section>

    <div class="input-append date" id="dp3" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
        <input class="span2  datepicker " size="16" type="text" value="12-02-2012"   />
        <br />
        <br />
        <br />
        <div class ="table-responsive">
        <asp:GridView ID="GridView1" runat="server" CssClass ="table table-hover table-bordered dataTable  " AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField  HeaderStyle-CssClass =" success" DataField="grno" HeaderText="grno" SortExpression="grno" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                <asp:BoundField DataField="middle_name" HeaderText="middle_name" SortExpression="middle_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                <asp:BoundField DataField="addres" HeaderText="addres" SortExpression="addres" />
                <asp:BoundField DataField="phone_no" HeaderText="phone_no" SortExpression="phone_no" />
                <asp:BoundField DataField="email_address" HeaderText="email_address" SortExpression="email_address" />
                <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
                <asp:BoundField DataField="course_year" HeaderText="course_year" SortExpression="course_year" />
                <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                <asp:BoundField DataField="pursuing_status" HeaderText="pursuing_status" SortExpression="pursuing_status" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="hsc_per" HeaderText="hsc_per" SortExpression="hsc_per" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_attendance_dbConnectionString %>" SelectCommand="SELECT * FROM [student_master]"></asp:SqlDataSource>
        </div>
        <input type="checkbox" runat ="server" class ="checkbox-circle " />
    </div>
        <table border ="1"  runat ="server">
            <tr>
                <td>
                    hellooo
                </td>
                <td>
                    hiiii
                </td>
            </tr>
             <tr>
                <td >
                    hellooo
                </td>
                <td>
                    hiiii
                </td>
            </tr>
             <tr>
                <td>
                    hellooo
                </td>
                <td>
                    hiiii
                </td>
            </tr>
             <tr>
                <td>
                    hellooo
                </td>
                <td>
                    hiiii
                </td>
            </tr>
        </table>
    </section>
    <script >
        $(document).ready(function () {
            $('.datepicker').datepicker({
                format: "dd-mm-yyyy"


            });
        });
    </script>
    </form>
</asp:Content>

 