<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tracing.aspx.cs" Inherits="WebformEx.Tracing" %> <%--Trace="true"--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%= Session["master"].ToString()%><br />
        <%= Application["test"] .ToString()%><br />
        <asp:Button ID="btnSession" runat="server"  Text="Create session" OnClick="btnSession_Click" />
        <asp:Button ID="btnDelete" runat="server"  Text="Delete session" OnClick="btnDelete_Click" />
    </div>
        <asp:Button OnClick="btnSubmit_Click" ID="btnSubmit"  runat="server"/>
    </form>
</body>
</html>
