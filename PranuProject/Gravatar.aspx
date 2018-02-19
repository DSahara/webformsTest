<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gravatar.aspx.cs" Inherits="PranuProject.Gravatar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <ajaxToolkit:Gravatar ID="Gravatar1" runat="server"
            Email="test1@gmail.com"
            DefaultImageBehavior="MonsterId"
     />
        <ajaxToolkit:BalloonPopupExtender ID="Gravatar1_BalloonPopupExtender" runat="server"
             BehaviorID="Gravatar1_BalloonPopupExtender"
             BalloonPopupControlID="TextBox1"
             Enabled="true"
             TargetControlID="Gravatar1">
        </ajaxToolkit:BalloonPopupExtender>

    </div>
    </form>
</body>
</html>
