<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajax.aspx.cs" Inherits="PranuProject.ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <ajaxToolkit:Gravatar ID="Gravatar1" runat="server"  DefaultImageBehavior="MysteryMan" Email="restanhope@outlook.com"/>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    </div>
    </form>
</body>
</html>
