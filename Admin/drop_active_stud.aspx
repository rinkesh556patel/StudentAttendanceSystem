<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/admin.master" AutoEventWireup="false" CodeFile="drop_active_stud.aspx.vb" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading" style="background-color: rgba(29, 151, 254, 0.85); color: #fff;">
                        Drop OR Active Students
                    </header>
                    
                    <div class="panel-body">
                        <div class="form ">
                            <form class="form-validate form-horizontal text-center" method="get" runat="server">
                                
                                <h1>Drop OR Active Students</h1>
                                <br />
                                <div class="col-lg-6 " style="border-right :1px solid #808080;">
                                  <h3>Panel To Drop Students</h3>
                                    <br />
                                    <br/>
                                    <asp:DropDownList ID="DropDownList1" CssClass =" form-control  " runat="server" DataSourceID="SqlDataSource1" DataTextField="grno" DataValueField="grno"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=online_attendance_db;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [grno] FROM [student_master]"></asp:SqlDataSource>
                                    <br />
                                    <br />
                                    <asp:Button ID="btndrop" CssClass =" btn btn-primary form-control"  runat="server" Text="Drop Student" />
                                    <br />
                                     <br />
                                    <br />
                                     <br />
                                </div>
                                 <div class="col-lg-6 ">
                                   <h3>Panel To Active Students</h3>
                                      <br />
                                    <br/>
                                     <asp:DropDownList ID="DropDownList2" CssClass ="form-control "  runat="server" DataSourceID="SqlDataSource2" DataTextField="grno" DataValueField="grno"></asp:DropDownList>
                                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=online_attendance_db;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [grno] FROM [drop_student]"></asp:SqlDataSource>
                                     <br />
                                     <br />
                                     <asp:Button ID="btncon" CssClass ="btn btn-primary form-control " runat="server" Text="Active Student" />
                                     <br />
                                     <br />
                                     <br />
                                     <br />
                                </div>
                            </form>
                        </div>

                    </div>
                </section>
                </div>
            </div>
        </section>
</asp:Content>

