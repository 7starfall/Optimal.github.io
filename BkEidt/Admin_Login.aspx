<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="OPTIMALWeb.BkEidt.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>用户登录：</h3>
             <p><asp:Label ID="Label1" runat="server" Text=""  ForeColor="Red" Font-Size="Larger"></asp:Label></p>
            <p>用户名：<asp:TextBox ID="TextBox1" runat="server" MaxLength="20"></asp:TextBox>&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="必填选项"></asp:RequiredFieldValidator>
            </p>
            <p>密码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="必填选项"></asp:RequiredFieldValidator>
            </p>
            <p><asp:Button ID="Button1" runat="server" Text=" 登  录 " Height="24px" OnClick="Button1_Click1"/> </p>
        </div>
    </form>
</body>
</html>
