<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="awesome-bootstrap-checkbox-master/demo/build.css" rel="stylesheet" />
    <link href="awesome-bootstrap-checkbox-master/awesome-bootstrap-checkbox.css" rel="stylesheet" />
    <link href="awesome-bootstrap-checkbox-master/demo/build.css" rel="stylesheet" />
    <style >
       
        table th{
           
                background: #00CDAB;
                border-color: #00CDAB;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class ="table-responsive" style =" border :0">
        <asp:GridView ID="GridView1" runat="server" CssClass ="  table-hover table  table-condensed" AutoGenerateColumns ="false"   OnRowDataBound ="db" BorderStyle="None" BorderColor="White" CellPadding="5" GridLines="None" Height="440px" HorizontalAlign="Center">
            </asp:GridView>
        <asp:Button runat="server" Text="Button" OnClick="Unnamed1_Click" /> 
    </div>
    </form>
    <script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>
