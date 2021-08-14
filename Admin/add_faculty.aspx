<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/admin.master" AutoEventWireup="false" CodeFile="add_faculty.aspx.vb" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .form-group .form-control, .btn{
            border-radius :0;
            height :35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content" style="background-color: #ffffff; background-image: url('/admin/img/b.jpg')">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/home.aspx">Home</a></li>
                        <li><i class=" fa fa-user  "></i><a href="/admin/drop_active.aspx.aspx">Add Faculties</a></li>
                    </ol>
                </div>
            </div>
        </section>
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading" style="background-color: rgba(29, 151, 254, 0.85); color: #fff;">
                        Add Faculty
                    </header>
                    <form class="form-validate form-horizontal text-center" method="get" runat="server">
                        <div class="panel-body">
                            <div class="form" >
                                <h2>Entry For New Faculty</h2>
                                <br />
                                <div class="form-group " style ="color :#525050">
                                    <label for="cname" class="control-label col-lg-2">First Name <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <asp:TextBox ID="first_name" runat="server" class="form-control" name="fullname" type="text" required="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group "style ="color :#525050">
                                    <label for="cname" class="control-label col-lg-2">Middle Name <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <asp:TextBox ID="middle_name" runat="server" class="form-control" name="fullname" type="text" required="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group " style ="color :#525050">
                                    <label for="cname" class="control-label col-lg-2">Last Name <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <asp:TextBox ID="last_name" runat="server" class="form-control" name="fullname" type="text" required="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group " style ="color :#525050">
                                    <label for="cname" class="control-label col-lg-2">Join Date<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <asp:TextBox ID="join_date" runat="server" class="form-control datepicker" name="fullname" type="text" required="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group " style ="color :#525050">
                                    <label for="cname" class="control-label col-lg-2">Phone Number <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <asp:TextBox ID="phone_number" runat="server" class="form-control" name="fullname" minlength="10" type="text" required="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group " style ="color :#525050">
                                    <label for="cemail" class="control-label col-lg-2">E-Mail <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <asp:TextBox ID="email_address" runat="server" class="form-control" name="fullname" type="email" required="true"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group " style ="color :#525050">
                                    <label for="curl" class="control-label col-lg-2">Password</label>
                                    <div class="col-lg-10">
                                        <asp:TextBox ID="pass" runat="server" class="form-control" name="fullname" type="text" required="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class=" col-lg-offset-1 col-sm-4">
                                        <button runat="server" class="btn btn-primary" onserverclick="ins_fac" style="background-color: rgba(29, 151, 254, 0.85);" type="submit" >Save</button>
                                        <button runat="server" class="btn btn-default" type="button">Cancel</button>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </form>
                </section>
            </div>
        </div>
        </section>
    <script>
        $(document).ready(function () {
            $('.datepicker').datepicker({
                format:"dd-mm-yyyy"

            });


        });
    </script>
</asp:Content>

