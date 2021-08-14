<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/admin.master" AutoEventWireup="false" CodeFile="add_stud.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .form-group .form-control, .btn{
            border-radius :0;
            height :35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content" >
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="home.aspx">Home</a></li>
						<li><i class=" fa fa-users"></i><a href="/admin/add_stud.aspx">Add Students</a></li>
					</ol>
				</div>
			</div>
          </section>
                <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading" style="background-color :rgba(29, 151, 254, 0.85); color :#fff;">
                              STUDENET INFORMATION
                          </header>
                          
                          <div class="panel-body">
                              <div class="form">
                                  <form class="form-validate form-horizontal" id="feedback_form" method="get"  runat ="server" >
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">First Name <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="first_name" runat="server" class="form-control"  name="fullname"  type="text" required="true"></asp:TextBox>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Middle Name <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="middle_name" runat="server" class="form-control"  name="fullname"  type="text" required="true"></asp:TextBox>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Last Name <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="last_name" runat="server" class="form-control"  name="fullname"  type="text" required="true"></asp:TextBox>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Address <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="address" runat="server" class="form-control"  name="fullname"  type="text" required="true"></asp:TextBox>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Phone Number <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="phone_number" runat="server" class="form-control"  name="fullname" minlength="10" type="text" required="true"></asp:TextBox>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="cemail" class="control-label col-lg-2">E-Mail <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                            <asp:TextBox ID="email_address" runat="server" class="form-control"  name="fullname"  type="email" required="true"></asp:TextBox>
                                          </div>
                                      </div>

                                      <div class="form-group ">
                                          <label for="curl" class="control-label col-lg-2 " >Date Of Birth</label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="date_of_birth" runat="server" class="form-control datepicker"  name="fullname"  type="text" required="true"></asp:TextBox>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">HSC Percentage <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="hsc_per" runat="server" class="form-control"  name="fullname"  type="text" required="true"></asp:TextBox>
                                          </div>
                                      </div>                                      
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <button runat ="server"  class="btn btn-primary" style ="background-color:rgba(29, 151, 254, 0.85);" type="submit" onserverclick="ins_Click">Save</button>
                                              <button runat ="server" class="btn btn-default" type="button">Cancel</button>
                                          </div>
                                      </div>
                                  </form>
                              </div>

                          </div>
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

