<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewXml.aspx.cs" Inherits="WebformEx.GridViewXml" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" OnPageIndexChanging="OnPageIndexChanging" ></asp:GridView>
        <asp:Menu ID="Menu1" runat="server">
    <Items>
        <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home">
        </asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/Employee.aspx" Text="Employee" Value="Employee">
            <asp:MenuItem NavigateUrl="~/UploadResume.aspx" Text="Upload Resume" Value="Upload Resume">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/EditResume.aspx" Text="Edit Resume" Value="Edit Resume">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/ViewResume.aspx" Text="View Resume" Value="View Resume">
            </asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/Employer.aspx" Text="Employer" Value="Employer">
            <asp:MenuItem NavigateUrl="~/UploadJob.aspx" Text="Upload Job" Value="Upload Job">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/EditJob.aspx" Text="Edit Job" Value="Edit Job">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/ViewJob.aspx" Text="View Job" Value="View Job">
            </asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/Admin.aspx" Text="Admin" Value="Admin">
            <asp:MenuItem NavigateUrl="~/AddUser.aspx" Text="Add User" Value="Add User">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/EditUser.aspx" Text="Edit User" Value="Edit User">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/ViewUser.aspx" Text="View User" Value="View User">
            </asp:MenuItem>
        </asp:MenuItem>
    </Items>
</asp:Menu>
        <asp:TreeView ID="TreeView1" runat="server">
    <Nodes> 
        <asp:TreeNode Text="Home" NavigateUrl="~/Home.aspx" Target="_blank" />
        <asp:TreeNode Text="Employee" NavigateUrl="~/Employee.aspx" Target="_blank">
            <asp:TreeNode Text="Upload Resume" NavigateUrl="~/UploadResume.aspx" Target="_blank"/>
            <asp:TreeNode Text="Edit Resume" NavigateUrl="~/EditResume.aspx" Target="_blank"/>
            <asp:TreeNode Text="View Resume" NavigateUrl="~/ViewResume.aspx" Target="_blank"/>
        </asp:TreeNode>
        <asp:TreeNode Text="Employer" NavigateUrl="~/Employer.aspx" Target="_blank">
            <asp:TreeNode Text="Upload Job" NavigateUrl="~/UploadJob.aspx" Target="_blank"/>
            <asp:TreeNode Text="Edit Job" NavigateUrl="~/EditJob.aspx" Target="_blank"/>
            <asp:TreeNode Text="View Job" NavigateUrl="~/ViewJob.aspx" Target="_blank"/>
        </asp:TreeNode>
        <asp:TreeNode Text="Admin" NavigateUrl="~/Admin.aspx" Target="_blank">
            <asp:TreeNode Text="Add User" NavigateUrl="~/AddUser.aspx" Target="_blank"/>
            <asp:TreeNode Text="Edit User" NavigateUrl="~/EditUser.aspx" Target="_blank"/>
            <asp:TreeNode Text="View User" NavigateUrl="~/ViewUser.aspx" Target="_blank"/>
        </asp:TreeNode>
    </Nodes>
</asp:TreeView>
    </div>
    </form>
</body>
</html>
