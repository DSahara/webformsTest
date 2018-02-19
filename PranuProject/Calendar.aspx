<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="PranuProject.Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <asp:TextBox ID="TextBox1" runat="server"  />&nbsp;&nbsp;
      
        <asp:Image ID="Image1" runat="server" ImageUrl="Calendar_icon.png" />
        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" 
            TargetControlID="TextBox1" 
            PopupButtonID="Image1"/>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
