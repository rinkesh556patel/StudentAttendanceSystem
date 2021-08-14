<%@ Page Title="" Language="VB" MasterPageFile="~/faculty/faculty.master" AutoEventWireup="false" CodeFile="attendance.aspx.vb" Inherits="faculty_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Admin/css/datepicker.css" rel="stylesheet" />
    <script src="../Admin/js/bootstrap-datepicker.js"></script>
    <style >
       
        table th{
           
                background: #00CDAB;
                border-color: #00CDAB;
        }
        table {

            border:0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper"  style ="background-color :#ffffff ; background-image :url('assets/img/bg.jpg') " >
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header" style ="color :#ffffff;">ATTENDANCE SHEET 
                        </h1>
                        <ol class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li class="active">Attendace Sheet</li>
                        </ol>
                    </div>
                </div>
                <div class=" container-fluid " style ="color :#ffffff;">
                    <div class ="col-lg-12 ">
                       <div class ="col-lg-3 ">
                           Select Semester:
                           <asp:DropDownList ID="dd_sem" CssClass =" form-control " runat="server"></asp:DropDownList>
                       </div>
                        <div class ="col-lg-3 ">
                            Select Division:
                            <asp:DropDownList ID="dd_div" CssClass =" form-control " runat="server"></asp:DropDownList>
                       </div>
                        <div class ="col-lg-3 ">
                            Select Subject:
                            <asp:DropDownList ID="dd_sub" CssClass =" form-control " runat="server"></asp:DropDownList>
                       </div>
                        <div class ="col-lg-3 ">
                            Select Lecture Number:
                            <asp:DropDownList ID="dd_lec_no" CssClass =" form-control " runat="server"></asp:DropDownList>
                       </div>
                        <br />

                       <div class=" col-lg-6 ">
                           From : 
                           <asp:TextBox ID="txtdt1" CssClass =" form-control datepicker " runat="server"></asp:TextBox>
                       </div>
                        <div class=" col-lg-6 ">
                            To:
                           <asp:TextBox ID="txtdt2" CssClass =" form-control datepicker " runat="server"></asp:TextBox>
                       </div>
                        
                    </div>
                    <br /><br />
                </div>
        <div class ="container-fluid ">
             <div class =" table-responsive">
                 <br />
                 <br />
                        <asp:GridView ID="GridView1" CssClass =" table " AutoGenerateColumns ="false" OnRowDataBound ="db"  runat="server" BorderStyle="None" GridLines="None" BorderColor="White" HorizontalAlign="Center">
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle BorderStyle="None" ForeColor="White" VerticalAlign="Middle" />
                 </asp:GridView>
                    </div> 
        </div>
                <!-- /. PAGE INNER  -->
                
            </div>
</asp:Content>

