<%@ Page Title="" Language="C#" MasterPageFile="~/BkEidt/OPTIMALEdit.Master" AutoEventWireup="true" CodeBehind="ResourceEdit.aspx.cs" Inherits="OPTIMALWeb.BkEidt.ResourceEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        textbox {
            background: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
            <h2><a href="../Resources.aspx" target="_blank">Resources.aspx</a>(资源管理)页面插入、删除、更新后台操作!</h2>
            <p><b>插入使用说明</b>：由于没有对空字段作判断，所以插入的时候，<b>不要为空</b>。格式说明如下：</p>
            <p><b>序号</b>：自动生成(不需要输入) &nbsp;&nbsp; <b>资源名称</b>：LUHC ,资源简称</p>
            <p><b>资源描述</b>：资源的详细描述。LUHC is a Laplacian Unit-Hyperplane Learning for positive and unlabeled learning problem.</p>
            <p><b>资源链接</b>：xxx.html (<span style="color:red;font-weight:800">即放在Resources目录下的，代码放Code子目录，数据放Datasets子目录，工具或其他放Tools目录</span> </p>
            <p><b>(注意：Resource为老系统使用，新系统不用)</b></p>
            <p><b>资源类型(非常重要)：1为Code，2为Datasets，3为Tools or Others</b></p>
            <p><b>数据插入操作在表格最后一行！</b></p>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource1" DataKeyNames="ID" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <li style="background-color: #FFF8DC;">序号:
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        资源名称:
                        <asp:Label ID="Res_nameLabel" Width="90%" runat="server" Text='<%# Eval("Res_name") %>' />
                        <br />
                        资源描述:
                        <asp:Label ID="Res_descriptionLabel" Width="90%" runat="server" Text='<%# Eval("Res_description") %>' />
                        <br />
                        资源链接:
                        <asp:Label ID="Res_linkLabel" Width="90%" runat="server" Text='<%# Eval("Res_link") %>' />
                        <br />
                        资源类型:
                        <asp:Label ID="Res_TypeLabel" Width="90%" runat="server" Text='<%# Eval("Res_Type") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="background-color: #ff6a00; color: #FFFFFF;">序号:
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        资源名称:
                        <asp:TextBox ID="Res_nameTextBox" Width="90%" runat="server" Text='<%# Bind("Res_name") %>' />
                        <br />
                        资源描述:
                        <asp:TextBox ID="Res_descriptionTextBox" Width="90%" runat="server" Text='<%# Bind("Res_description") %>' />
                        <br />
                        资源链接:
                        <asp:TextBox ID="Res_linkTextBox" Width="90%" runat="server" Text='<%# Bind("Res_link") %>' />
                        <br />
                        资源类型:
                        <asp:TextBox ID="Res_TypeTextBox" Width="90%" runat="server" Text='<%# Bind("Res_Type") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    未返回数据。
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">资源名称:
                        <asp:TextBox ID="Res_nameTextBox" Width="90%" runat="server" Text='<%# Bind("Res_name") %>' />
                        <br />
                        资源描述:
                        <asp:TextBox ID="Res_descriptionTextBox" Width="90%" runat="server" Text='<%# Bind("Res_description") %>' />
                        <br />
                        资源链接:
                        <asp:TextBox ID="Res_linkTextBox" Width="90%" runat="server" Text='<%# Bind("Res_link") %>' />
                        <br />
                        资源类型:
                        <asp:TextBox ID="Res_TypeTextBox" Width="90%" runat="server" Text='<%# Bind("Res_Type") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    </li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
                    <br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="background-color: #DCDCDC; color: #000000;">序号:
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        资源名称:
                        <asp:Label ID="Res_nameLabel" runat="server" Text='<%# Eval("Res_name") %>' />
                        <br />
                        资源描述:
                        <asp:Label ID="Res_descriptionLabel" runat="server" Text='<%# Eval("Res_description") %>' />
                        <br />
                        资源链接:
                        <asp:Label ID="Res_linkLabel" runat="server" Text='<%# Eval("Res_link") %>' />
                        <br />
                        资源类型:
                        <asp:Label ID="Res_TypeLabel" runat="server" Text='<%# Eval("Res_Type") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">ID:
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        Res_name:
                        <asp:Label ID="Res_nameLabel" runat="server" Text='<%# Eval("Res_name") %>' />
                        <br />
                        Res_description:
                        <asp:Label ID="Res_descriptionLabel" runat="server" Text='<%# Eval("Res_description") %>' />
                        <br />
                        Res_link:
                        <asp:Label ID="Res_linkLabel" runat="server" Text='<%# Eval("Res_link") %>' />
                        <br />
                        Res_Type:
                        <asp:Label ID="Res_TypeLabel" runat="server" Text='<%# Eval("Res_Type") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>

    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/Data/OPTIMALDB.mdb"
        SelectCommand="SELECT * FROM [Resources] ORDER BY [Res_Type], [Res_name]"
        DeleteCommand="DELETE FROM [Resources] WHERE [ID] = ?"
        InsertCommand="INSERT INTO [Resources] ([Res_name], [Res_description], [Res_link], [Res_Type]) VALUES (?, ?, ?, ?)"
        UpdateCommand="UPDATE [Resources] SET [Res_name] = ?, [Res_description] = ?, [Res_link] = ?, [Res_Type] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Res_name" Type="String" />
            <asp:Parameter Name="Res_description" Type="String" />
            <asp:Parameter Name="Res_link" Type="String" />
            <asp:Parameter Name="Res_Type" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Res_name" Type="String" />
            <asp:Parameter Name="Res_description" Type="String" />
            <asp:Parameter Name="Res_link" Type="String" />
            <asp:Parameter Name="Res_Type" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>

</asp:Content>
