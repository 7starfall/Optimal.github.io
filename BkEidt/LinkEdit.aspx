<%@ Page Title="" Language="C#" MasterPageFile="~/BkEidt/OPTIMALEdit.Master" AutoEventWireup="true" CodeBehind="LinkEdit.aspx.cs" Inherits="OPTIMALWeb.BkEidt.LinkEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .redFont {
            color: red;
            font-weight: 800;
            font-size: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <h2><a href="../Links.aspx" target="_blank">Links.aspx</a>(外部资源链接)页面插入、删除、更新后台操作!</h2>
        <p><b>插入使用说明</b>：由于没有对空字段作判断，所以插入的时候，<b>不要为空</b>。格式说明如下：</p>
        <p><b>序号</b>：自动生成(不需要输入) &nbsp;&nbsp; <b>名称</b>：ICDM ,资源简称</p>
        <p><b>描述</b>：资源的详细描述。2014 IEEE International Conference on Data Mining, Time: Dec 14-17, 2014 Shenzhen, China.</p>
        <p><b>链接</b>：icdm2014.sfu.ca/home.html (<span class="redFont">切记，链接不要加前缀 http:// </span>) </p>
        <p><b class="redFont">类型(一定要选择！对应前台相应的显示位置，选择其中1个值)： 1为学者主页，2为会议，3为期刊，4为其他</b></p>
        <p><b>数据插入操作在表格最后一行！</b></p>
        <h2 style="border-bottom: 1px dotted #CCCCCC"></h2>
        <asp:Label ID="Label1" runat="server" Text="类型选择："></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="1">学者主页</asp:ListItem>
            <asp:ListItem Value="2">会议</asp:ListItem>
            <asp:ListItem Value="3">期刊</asp:ListItem>
            <asp:ListItem Value="4">其他</asp:ListItem>
        </asp:DropDownList>
        <br />

        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="DB" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="link_nameLabel" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Eval("link_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="link_discriptionLabel" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Eval("link_discription") %>' />
                    </td>
                    <td>
                        <asp:Label ID="link_urlLabel" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Eval("link_url") %>' />
                    </td>
                    <td>
                        <asp:Label ID="link_typeLabel" runat="server" Text='<%# Eval("link_type") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #ff0000; color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="link_nameTextBox" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Bind("link_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="link_discriptionTextBox" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Bind("link_discription") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="link_urlTextBox" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Bind("link_url") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="link_typeTextBox" runat="server" Text='<%# Bind("link_type") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                    <tr>
                        <td>未返回数据。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="link_nameTextBox" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Bind("link_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="link_discriptionTextBox" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Bind("link_discription") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="link_urlTextBox" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Bind("link_url") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="link_typeTextBox" runat="server" Text='<%# Bind("link_type") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #DCDCDC; color: #000000;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="link_nameLabel" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Eval("link_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="link_discriptionLabel" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Eval("link_discription") %>' />
                    </td>
                    <td>
                        <asp:Label ID="link_urlLabel" runat="server" Text='<%# Eval("link_url") %>' />
                    </td>
                    <td>
                        <asp:Label ID="link_typeLabel" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Eval("link_type") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                    <th runat="server"></th>
                                    <th style="width: 40px" runat="server">序号</th>
                                    <th style="width: 200px" runat="server">名称</th>
                                    <th style="width: 400px" runat="server">描述</th>
                                    <th style="width: 400px" runat="server">链接</th>
                                    <th style="width: 30px" runat="server"><span class="redFont">类型</span></th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="link_nameLabel" runat="server" Text='<%# Eval("link_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="link_discriptionLabel" runat="server" Text='<%# Eval("link_discription") %>' />
                    </td>
                    <td>
                        <asp:Label ID="link_urlLabel" runat="server" Text='<%# Eval("link_url") %>' />
                    </td>
                    <td>
                        <asp:Label ID="link_typeLabel" runat="server" Text='<%# Eval("link_type") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>

        <asp:AccessDataSource ID="DB" runat="server" DataFile="~/Data/OPTIMALDB.mdb"
            SelectCommand="SELECT * FROM [Links] WHERE ([link_type] = ?)"
            DeleteCommand="DELETE FROM [Links] WHERE [ID] = ?"
            InsertCommand="INSERT INTO [Links] ([link_name], [link_discription], [link_url], [link_type]) VALUES (?, ?, ?, ?)"
            UpdateCommand="UPDATE [Links] SET [link_name] = ?, [link_discription] = ?, [link_url] = ?, [link_type] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="link_name" Type="String" />
                <asp:Parameter Name="link_discription" Type="String" />
                <asp:Parameter Name="link_url" Type="String" />
                <asp:Parameter Name="link_type" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="link_type" SessionField="CType" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="link_name" Type="String" />
                <asp:Parameter Name="link_discription" Type="String" />
                <asp:Parameter Name="link_url" Type="String" />
                <asp:Parameter Name="link_type" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>

    </div>

</asp:Content>
