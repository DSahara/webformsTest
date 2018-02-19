<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GravatarTest.aspx.cs" Inherits="PranuProject.GravatarTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
        <ajaxToolkit:Gravatar ID="Gravatar1" runat="server"
             Email="test1@gmail.com" DefaultImageBehavior="MonsterId"/>
    
    </div>
    </form>
</body>
</html>
