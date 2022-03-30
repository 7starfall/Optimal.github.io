<%@ Page Title="" Language="C#" MasterPageFile="~/BkEidt/OPTIMALEdit.Master" AutoEventWireup="true" CodeBehind="PublicationEdit.aspx.cs" Inherits="OPTIMALWeb.BkEidt.PublicationEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .redFont {
            color: red;
            font-weight: 800;
            font-size: 20px;
        }

        .tdbrLine {
            word-break: break-all;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2><a href="../Publications.aspx" target="_blank">Publications.aspx</a>(论文管理)页面插入、删除、更新后台操作!</h2>
        <p><b>插入使用说明</b>：由于没有对空字段作判断，所以插入的时候，<b>文献链接允许为空，所有的标点用英文格式</b>。格式说明如下：</p>
        <p><b>序号</b>：自动生成(不需要输入) &nbsp;&nbsp; <b>作者</b>：外面编辑好粘贴到作者处, 通信作者请加*</p>
        <p><b>文献链接</b>：<span class="redFont">不需要加前缀 http:// </span>建议使用 dx.doi.org/DOI号，如dx.doi.org/10.1016/j.patcog.2015.10.008 </p>
        <p><b>卷(期):页码</b>： 52(8): 61-74</p>
        <p><b>是否代码</b>： 打勾则为有代码，<span class="redFont"><b>代码链接</b>中添加格式：xxx.html, 代码默认放在Resource目录下。</span></p>
        <p>链接比较长，编辑的时候，不能看全。建议外部编辑好之后，Ctrl+A全选，再直接粘贴！</p>
        <p><b class="redFont">类型(一定要填)： 1为期刊，2为会议</b></p>
        <p><b>数据插入操作在表格最后一行！</b></p>

        <h2 style="border-bottom: 1px dotted #CCCCCC"></h2>
        <asp:Label ID="Label1" runat="server" Text="年限选择："></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server"
            AutoPostBack="True"
            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
            DataSourceID="DB_DropDown"
            DataTextField="years"
            DataValueField="years">
        </asp:DropDownList>
        <asp:AccessDataSource ID="DB_DropDown" runat="server" DataFile="~/Data/OPTIMALDB.mdb"
            SelectCommand="SELECT DISTINCT [years] FROM [Publications] ORDER BY [years] DESC"></asp:AccessDataSource>
        <br />
        <div style="width: 1800px;">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="AccessDataSource1" InsertItemPosition="LastItem">
                <EditItemTemplate>
                    <tr style="background-color: #008A8C; color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
                        </td>
                        <td>
                            <asp:TextBox Width="95%" ID="authorsTextBox" runat="server" Text='<%# Bind("authors") %>' />
                        </td>
                        <td>
                            <asp:TextBox Width="95%" ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                        </td>
                        <td>
                            <asp:TextBox Width="95%" ID="journalTextBox" runat="server" Text='<%# Bind("journal") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="yearsTextBox" runat="server" Text='<%# Bind("years") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="VolandPagesTextBox" runat="server" Text='<%# Bind("VolandPages") %>' />
                        </td>
                        <td>
                            <asp:TextBox Width="95%" ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="IsCodeCheckBox" runat="server" Checked='<%# Bind("IsCode") %>' />
                        </td>
                        <td>
                            <asp:TextBox Width="95%" ID="Link_CodeTextBox" runat="server" Text='<%# Bind("Link_Code") %>' />
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
                            <asp:TextBox Width="30px" ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
                        </td>
                        <td>
                            <asp:TextBox Width="95%" ID="authorsTextBox" runat="server" Text='<%# Bind("authors") %>' />
                        </td>
                        <td>
                            <asp:TextBox Width="95%" ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                        </td>
                        <td>
                            <asp:TextBox Width="95%" ID="journalTextBox" runat="server" Text='<%# Bind("journal") %>' />
                        </td>
                        <td>
                            <asp:TextBox Width="50px" ID="yearsTextBox" runat="server" Text='<%# Bind("years") %>' />
                        </td>
                        <td>
                            <asp:TextBox Width="130px" ID="VolandPagesTextBox" runat="server" Text='<%# Bind("VolandPages") %>' />
                        </td>
                        <td>
                            <asp:TextBox Width="95%" ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="IsCodeCheckBox" runat="server" Checked='<%# Bind("IsCode") %>' />
                        </td>
                        <td>
                            <asp:TextBox Width="80%" ID="Link_CodeTextBox" runat="server" Text='<%# Bind("Link_Code") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #ffffff; color: #000000;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>' />
                        </td>
                        <td>
                            <asp:Label ID="authorsLabel" runat="server" Text='<%# Eval("authors") %>' />
                        </td>
                        <td>
                            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                        </td>
                        <td>
                            <asp:Label ID="journalLabel" runat="server" Text='<%# Eval("journal") %>' />
                        </td>
                        <td>
                            <asp:Label ID="yearsLabel" Width="10px" runat="server" Text='<%# Eval("years") %>' />
                        </td>
                        <td>
                            <asp:Label ID="VolandPagesLabel" runat="server" Text='<%# Eval("VolandPages") %>' />
                        </td>
                        <td class="tdbrLine">
                            <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="IsCodeCheckBox" runat="server" Checked='<%# Eval("IsCode") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="Link_CodeLabel" runat="server" Text='<%# Eval("Link_Code") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="table-layout: fixed; background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                        <th runat="server"></th>
                                        <th width="3%" runat="server">序号</th>
                                        <th runat="server"><span style="color:red">类型</span></th>
                                        <th runat="server">作者</th>
                                        <th runat="server">标题</th>
                                        <th runat="server">期刊</th>
                                        <th runat="server">年</th>
                                        <th runat="server">卷(期):页</th>
                                        <th runat="server">链接</th>
                                        <th width="4%" runat="server">IsCode</th>
                                        <th runat="server">代码链接</th>
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
                            <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>' />
                        </td>
                        <td>
                            <asp:Label ID="authorsLabel" runat="server" Text='<%# Eval("authors") %>' />
                        </td>
                        <td>
                            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                        </td>
                        <td>
                            <asp:Label ID="journalLabel" runat="server" Text='<%# Eval("journal") %>' />
                        </td>
                        <td>
                            <asp:Label ID="yearsLabel" Width="10px" runat="server" Text='<%# Eval("years") %>' />
                        </td>
                        <td>
                            <asp:Label ID="VolandPagesLabel" runat="server" Text='<%# Eval("VolandPages") %>' />
                        </td>
                        <td>
                            <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="IsCodeCheckBox" runat="server" Checked='<%# Eval("IsCode") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="Link_CodeLabel" runat="server" Text='<%# Eval("Link_Code") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/Data/OPTIMALDB.mdb"
                SelectCommand="SELECT * FROM [Publications] WHERE ([years] = ?)"
                DeleteCommand="DELETE FROM [Publications] WHERE [ID] = ?"
                InsertCommand="INSERT INTO [Publications] ([authors], [title], [journal], [years], [VolandPages], [Link], [IsCode], [Link_Code], [Type]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)"
                UpdateCommand="UPDATE [Publications] SET [authors] = ?, [title] = ?, [journal] = ?, [years] = ?, [VolandPages] = ?, [Link] = ?, [IsCode] = ?, [Link_Code] = ?, [Type] = ? WHERE [ID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="authors" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="journal" Type="String" />
                    <asp:Parameter Name="years" Type="String" />
                    <asp:Parameter Name="VolandPages" Type="String" />
                    <asp:Parameter Name="Link" Type="String" />
                    <asp:Parameter Name="IsCode" Type="Boolean" />
                    <asp:Parameter Name="Link_Code" Type="String" />
                    <asp:Parameter Name="Type" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="2016" Name="years" SessionField="CYear" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="authors" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="journal" Type="String" />
                    <asp:Parameter Name="years" Type="String" />
                    <asp:Parameter Name="VolandPages" Type="String" />
                    <asp:Parameter Name="Link" Type="String" />
                    <asp:Parameter Name="IsCode" Type="Boolean" />
                    <asp:Parameter Name="Link_Code" Type="String" />
                    <asp:Parameter Name="Type" Type="Int32" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:AccessDataSource>

        </div>

</asp:Content>
