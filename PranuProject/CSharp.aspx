<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSharp.aspx.cs" Inherits="PranuProject.CSharp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID">
        <EmptyDataTemplate>
            <span>No data for this event was found.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <asp:Label Text='<%#Eval("ID") %>' runat="server" />
            <br />
            <asp:Label Text='<%#Eval("Name") %>' runat="server" />
            <br />
            <asp:Image ImageUrl='<%# Eval("ID", "ImageCSharp.aspx?ImageID={0}")%>' Height="100px"
                Width="100px" runat="server" />

        </ItemTemplate>
    </asp:ListView>
</div>
    </form>
</body>
</html>
