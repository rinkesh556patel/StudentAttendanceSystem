<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="awesome-bootstrap-checkbox-master/demo/bootstrap.css" rel="stylesheet" />
    <link href="awesome-bootstrap-checkbox-master/demo/build.css" rel="stylesheet" />
    <link href="awesome-bootstrap-checkbox-master/bower_components/Font-Awesome/css/font-awesome.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="">
        <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />
    </div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:Table ID="Table1" runat="server" CssClass ="table">
            
        </asp:Table>
    </form>
 </body>
</html>
