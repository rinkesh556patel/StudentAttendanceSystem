<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/admin.master" AutoEventWireup="false" CodeFile="update_sem.aspx.vb" MaintainScrollPositionOnPostback ="true"  Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content" style="background-color: #ffffff; background-image: url('/admin/img/b.jpg')">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/home.aspx">Home</a></li>
                        <li><i class=" fa fa-certificate "></i><a href="/admin/update_sem.aspx">Update Sem's</a></li>
                    </ol>
                </div>
            </div>
        </section>
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading" style="background-color: rgba(29, 151, 254, 0.85); color: #fff;">
                        Update Student Sem's
                    </header>
                    <div runat="server" id="war" class="alert alert-info fade in text-center ">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <asp:Label ID="w_lbl" runat="server" Text="Division allocation of FY students is still left" Font-Size="Larger" ForeColor="#F84949" Font-Bold="True" Font-Italic="True"></asp:Label>
                    </div>
                    <div runat="server" id="war1" class="alert alert-info fade in text-center ">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <asp:Label ID="w_lbl1" runat="server" Text="Division allocation of SY students is still left" Font-Size="Larger" ForeColor="#F84949" Font-Bold="True" Font-Italic="True"></asp:Label>
                    </div>
                    <div runat="server" id="war2" class="alert alert-info fade in text-center ">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <asp:Label ID="w_lbl2" runat="server" Text="Division allocation of TY students is still left" Font-Size="Larger" ForeColor="#F84949" Font-Bold="True" Font-Italic="True"></asp:Label>
                    </div>
                    <div class="panel-body">
                        <div class="form ">
                            <form class="form-validate form-horizontal text-center" method="get" runat="server">
                                
                                <h1>Update Semesters Of Students</h1>
                                <br />
                                <div class="col-lg-12 ">
                                    <div class="col-sm-12 text-center  ">
                                        <table class="table table-hover ">
                                            <tr>
                                                <td>FIRST YEAR CURRENT SEM</td>
                                                <td>SECOND YEAR CURRENT SEM</td>
                                                <td>THIRD YEAR CURRENT SEM</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-12 text-center ">
                                        <button id="odd" runat="server" class="btn btn-primary col-lg-12 " type="submit" onserverclick="upd_sem">Update O Sem's</button>
                                        <br />
                                        <button id="even" runat="server" class="btn btn-primary col-lg-12 " type="submit" onserverclick="upd_e_sem">Update E Sem's</button>
                                    </div>

                                </div>
                                <div class="col-lg-4 "></div>
                                <div class="col-lg-4 text-center ">
                                    <br />
                                    <h3>Allocate Division To Students</h3>
                                    <br />
                                    <asp:DropDownList ID="dd_year" runat="server" CssClass="dropdown form-control " AutoPostBack="True">
                                        <asp:ListItem>Select Year To Update Div</asp:ListItem>
                                        <asp:ListItem>FY</asp:ListItem>
                                        <asp:ListItem>SY</asp:ListItem>
                                        <asp:ListItem>TY</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <asp:DropDownList ID="dd_sem" runat="server" CssClass="dropdown form-control " AutoPostBack="True">
                                        <asp:ListItem>Select Total Div</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <asp:Label ID="lb_tot_stud" runat="server" Text="Label"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:TextBox ID="txt_div_1" placeholder="Enter number of stud for div 1" runat="server" Visible ="false"  CssClass ="form-control "></asp:TextBox>
                                    <br />
                                    <asp:TextBox ID="txt_div_2" placeholder="Enter number of stud for div 2" runat="server" Visible ="false"  CssClass ="form-control " ></asp:TextBox>
                                    <br />
                                    <asp:TextBox ID="txt_div_3" placeholder="Enter number of stud for div 3" runat="server" Visible ="false"  CssClass ="form-control "></asp:TextBox>
                                    <br />
                                    <button id="btn_div_upd" runat="server" onserverclick="upd_div" class="btn btn-primary col-lg-12 " type="submit">Update Div</button>
                                </div>
                                <div class="col-lg-4 "></div>
                            </form>
                        </div>

                    </div>
                </section>
            </div>
        </div>



    </section>
            <div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Information</h4>
            </div>
            <div class="modal-body text-center ">
				<p>Insert The New Students Information Before Updating Sem's</p>
                <p>By Doing That Your Data Base Will Be Managed Correctly</p>
                    <a href="add_stud.aspx" class="btn btn-primary ">ADD MORE STUDENTS</a>
            </div>
        </div>
    </div>
</div>
   <script>
       $(window).load(function () {
           var fy = "<%=Label1.Text%>";
           var sy = "<%=Label2.Text%>";
           var ty = "<%=Label3.Text%>";
           if (fy == 2 ) {
               $('#myModal').modal('show');
           }
       });
   </script>
</asp:Content>


