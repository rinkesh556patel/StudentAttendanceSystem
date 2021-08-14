<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/admin.master" AutoEventWireup="false" CodeFile="subject_allocation.aspx.vb" Inherits="Admin_subject_allocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content" style="background-color: #ffffff; background-image: url('/admin/img/b.jpg')">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/home.aspx">Home</a></li>
                        <li><i class=" icon_book "></i><a href="/admin/subject_allocation.aspx">Subject Allocation</a></li>
                    </ol>
                </div>
            </div>
        </section>
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading" style="background-color: rgba(29, 151, 254, 0.85); color: #fff;">
                        Allocate Subject To Faculty
                    </header>
                    <form class="form-validate form-horizontal " method="get" runat="server">
                        <div class="panel-body">
                            <div class="form">
                                <h2 class ="text-center ">Subject Allocation To Faculty</h2>
                                <br />
                                
                                <div class="col-lg-4 ">
                                    
                                </div>
                                <div class="col-lg-4 " >
                                    <br />
                                    Select Semester:
                                    <asp:DropDownList ID="dd_sem" CssClass="form-control " runat="server" AutoPostBack="True">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                     <br />
                                    Select Subject:
                                    <asp:DropDownList ID="dd_sub" CssClass="form-control " runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="subject_name" DataValueField="subject_name"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=online_attendance_db;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [subject_name] FROM [bca_subject_master] WHERE ([subject_sem] = @subject_sem)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="dd_sem" Name="subject_sem" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                    Select Faculty:
                                    <asp:DropDownList ID="dd_fac" CssClass="form-control " runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="first_name" DataValueField="first_name"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=online_attendance_db;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [first_name], [middle_name], [last_name] FROM [faculty_master]"></asp:SqlDataSource>
                                    <br />
                                    <asp:Button ID="btnassign" CssClass ="btn btn-primary form-control "  runat ="server" Text="Assign" />
                                </div>
                                <div class="col-lg-4 ">
                                    
                                </div>
                            </div>

                        </div>
                    </form>
                </section>
                </div>
            </div>
        </section>
</asp:Content>

