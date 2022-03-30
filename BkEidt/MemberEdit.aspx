<%@ Page Title="" Language="C#" MasterPageFile="~/BkEidt/OPTIMALEdit.Master" AutoEventWireup="true" CodeBehind="MemberEdit.aspx.cs" Inherits="OPTIMALWeb.BkEidt.MemberEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .redFont {color:red;font-weight:800;font-size:20px;}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <h2><a href="../Members.aspx" target="_blank">Members.aspx</a>(成员管理)页面插入、删除、更新后台操作!</h2>
            <p><b>插入使用说明</b>：由于没有对空字段作判断，所以插入的时候，<b>主页可以为空，其他不要为空，特别是“标识”</b>。格式说明如下：</p>
            <p><b>序号</b>：自动生成(不需要输入) &nbsp;&nbsp; <b>姓名</b>：Wei-Jie Chen</p>
            <p><b>主页链接</b>：xxx.html (即放在member目录下的, 个人主页文件名, 个人主页暂时为静态网页)</p>
            <p><b>学位/职称</b>：老师为Ph.D., Associate Professor；学生为Ph.D./Master Candidate (2011-2016) 括号为学习时间</p>
            <p><b>学位/职称标识(<span class="redFont">一定要选择！选择其中1个值</span>)：1为director，2为教授，3为副教授，4为讲师，5为博士研究生，6为硕士研究生</b></p>
            <p><b>数据插入操作在表格最后一行！</b></p>
            <h2 style="border-bottom: 1px dotted #CCCCCC"></h2>
            <asp:Label ID="Label1" runat="server" Text="类型选择："></asp:Label><asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="1">团队负责人</asp:ListItem>
                <asp:ListItem Value="2">教授</asp:ListItem>
                <asp:ListItem Value="3">副教授</asp:ListItem>
                <asp:ListItem Value="4">讲师</asp:ListItem>
                <asp:ListItem Value="5">博士研究生</asp:ListItem>
                <asp:ListItem Value="6">硕士研究生</asp:ListItem>
            </asp:DropDownList>

            <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="AccessDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FAFAD2; color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Mem_nameLabel" runat="server" Text='<%# Eval("Mem_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Mem_pageLabel" runat="server" Text='<%# Eval("Mem_page") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DegreeLabel" runat="server" Text='<%# Eval("Degree") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Degree_idLabel" runat="server" Text='<%# Eval("Degree_id") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #ff0000; color: #000080;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Mem_nameTextBox" runat="server" Text='<%# Bind("Mem_name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Mem_pageTextBox" runat="server" Text='<%# Bind("Mem_page") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DegreeTextBox" Width="100%" runat="server" Text='<%# Bind("Degree") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Degree_idTextBox" runat="server" Text='<%# Bind("Degree_id") %>' />
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
                            <asp:TextBox ID="Mem_nameTextBox" runat="server" Text='<%# Bind("Mem_name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Mem_pageTextBox" runat="server" Text='<%# Bind("Mem_page") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DegreeTextBox" Width="100%" runat="server" Text='<%# Bind("Degree") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="Degree_idTextBox" runat="server" Text='<%# Bind("Degree_id") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #FFFBD6; color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Mem_nameLabel" runat="server" Text='<%# Eval("Mem_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Mem_pageLabel" runat="server" Text='<%# Eval("Mem_page") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DegreeLabel" Width="100%" runat="server" Text='<%# Eval("Degree") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Degree_idLabel" runat="server" Text='<%# Eval("Degree_id") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #FFFBD6; color: #333333;">
                                        <th runat="server"></th>
                                        <th style="width: 40px" runat="server">序号</th>
                                        <th style="width: 100px" runat="server">姓名</th>
                                        <th style="width: 200px" runat="server">主页链接</th>
                                        <th style="width: 500px" runat="server">学位/职称</th>
                                        <th style="width: 40px" runat="server">学位/职称标识</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #FFCC66; font-weight: bold; color: #000080;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Mem_nameLabel" runat="server" Text='<%# Eval("Mem_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Mem_pageLabel" runat="server" Text='<%# Eval("Mem_page") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DegreeLabel" runat="server" Text='<%# Eval("Degree") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Degree_idLabel" runat="server" Text='<%# Eval("Degree_id") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>


            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/Data/OPTIMALDB.mdb"
                SelectCommand="SELECT * FROM [Members] WHERE ([Degree_id] = ?)" 
                DeleteCommand="DELETE FROM [Members] WHERE [id] = ?" 
                InsertCommand="INSERT INTO [Members] ([Mem_name], [Mem_page], [Degree], [Degree_id]) VALUES (?, ?, ?, ?)" 
                UpdateCommand="UPDATE [Members] SET [Mem_name] = ?, [Mem_page] = ?, [Degree] = ?, [Degree_id] = ? WHERE [id] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>                    
                    <asp:Parameter Name="Mem_name" Type="String" />
                    <asp:Parameter Name="Mem_page" Type="String" />
                    <asp:Parameter Name="Degree" Type="String" />
                    <asp:Parameter Name="Degree_id" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="Degree_id" SessionField="CDegree" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Mem_name" Type="String" />
                    <asp:Parameter Name="Mem_page" Type="String" />
                    <asp:Parameter Name="Degree" Type="String" />
                    <asp:Parameter Name="Degree_id" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:AccessDataSource>

        </div>
</asp:Content>
