<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/admin.master" AutoEventWireup="false" CodeFile="add_subjects.aspx.vb" Inherits="Admin_add_subjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content" style="background-color: #ffffff; background-image: url('/admin/img/b.jpg')">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/home.aspx">Home</a></li>
                        <li><i class="icon_book"></i><a href="/admin/add_subject.aspx">Add Subjects</a></li>
                    </ol>
                </div>
            </div>
        </section>
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading" style="background-color: rgba(29, 151, 254, 0.85); color: #fff;">
                        Add Subjects
                    </header>
                    <form class="form-validate form-horizontal " method="get" runat="server">
                        <div class="panel-body">
                            <br />
                            <h2 class="text-center">Entry Form For New Subject</h2>
                            <br />
                            <br />
                            <div class="col-lg-4 ">
                                Subject Code:
                                <asp:TextBox ID="txt_sub_code" CssClass="form-control " runat="server"></asp:TextBox>
                            </div>
                            <div class="col-lg-4 ">
                                Subject Name:
                                <asp:TextBox ID="txt_sub_name" CssClass="form-control " runat="server"></asp:TextBox>

                            </div>
                            <div class="col-lg-4 ">
                                Subject Semester:
                                <asp:TextBox ID="txt_sub_sem" CssClass="form-control " runat="server"></asp:TextBox>
                            </div>
                            <div class="col-lg-2 ">
                                <br />
                                    <asp:Button ID="btnadd_sub" CssClass ="btn btn-primary form-control "  runat ="server" Text="Save" />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </div>
                        </div>
                    </form>
                </section>
            </div>
        </div>
        </section>
</asp:Content>

