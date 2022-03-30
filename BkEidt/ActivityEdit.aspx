<%@ Page Title="" Language="C#" MasterPageFile="~/BkEidt/OPTIMALEdit.Master" AutoEventWireup="true" CodeBehind="ActivityEdit.aspx.cs" Inherits="OPTIMALWeb.BkEidt.ActivityEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        p {
            line-height: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2><a href="../Activities.aspx" target="_blank">Activities.aspx</a>(讨论班动态)页面插入、删除、更新后台操作!</h2>
        <p><b>插入使用说明</b>：由于没有对空字段作判断，所以插入的时候，<b>主题、报告人不要为空，参考文献允许为空</b>。格式说明如下：</p>
        <p><b>序号</b>：自动生成(不需要输入) &nbsp;&nbsp; <b>日期(<span style="color:red;font-weight:800">按格式，否则会出错</span>)</b>：2016/9/9</p>
        <p><b>参考文献</b>：Y Shao, N Deng, Z Yang. Least squares recursive projection twin support vector machine for classification[J]. Pattern Recognition. 2012, 45(6): 2299-2307.</p>
        <p><b>参考文献链接</b>：文献下载/参考的链接(<span style="color:red;font-weight:800">注意，不要加http://</span> )。比如：www.sciencedirect.com/science/article/pii/S0031320311004821</p>
        <p>参考文献及链接比较长，编辑的时候，不能看全。建议外部编辑好之后，Ctrl+A全选，再直接粘贴！</p>
        <p><b>数据插入操作在表格最后一行！</b></p>
        <div>
            <asp:ListView ID="lv_activity_edit" runat="server" 
                DataKeyNames="id" DataSourceID="DB_activities" InsertItemPosition="LastItem" style="margin-top: 0px">

                <AlternatingItemTemplate>
                    <tr style="background-color: #FFF8DC;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date","{0:d}") %>' />
                        </td>
                        <td>
                            <asp:Label ID="topicLabel" runat="server" Text='<%# Eval("topic") %>' />
                        </td>
                        <td>
                            <asp:Label ID="reporterLabel" runat="server" Text='<%# Eval("reporter") %>' />
                        </td>
                        <td>
                            <asp:Label ID="referenceLabel" runat="server" Text='<%# Eval("reference") %>' />
                        </td>
                        <td>
                            <asp:Label ID="r_linkLabel" runat="server" Text='<%# Eval("r_link") %>' />
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
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date","{0:d}") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="topicTextBox" runat="server" Text='<%# Bind("topic") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="reporterTextBox" runat="server" Text='<%# Bind("reporter") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="referenceTextBox" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Bind("reference") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="r_linkTextBox" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Bind("r_link") %>' />
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
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="topicTextBox" runat="server" Text='<%# Bind("topic") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="reporterTextBox" runat="server" Text='<%# Bind("reporter") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="referenceTextBox" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Bind("reference") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="r_linkTextBox" TextMode="MultiLine" Width="100%" runat="server" Text='<%# Bind("r_link") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #f2ebeb; color: #000000;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date","{0:d}") %>' />
                        </td>
                        <td>
                            <asp:Label ID="topicLabel" runat="server" Text='<%# Eval("topic") %>' />
                        </td>
                        <td>
                            <asp:Label ID="reporterLabel" runat="server" Text='<%# Eval("reporter") %>' />
                        </td>
                        <td>
                            <asp:Label ID="referenceLabel" runat="server" Text='<%# Eval("reference") %>' />
                        </td>
                        <td>
                            <asp:Label ID="r_linkLabel" runat="server" Text='<%# Eval("r_link") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                        <th runat="server" width="3%">操作</th>
                                        <th runat="server" width="3%">序号</th>
                                        <th runat="server" width="10%">日期</th>
                                        <th runat="server">主题</th>
                                        <th runat="server">报告人</th>
                                        <th runat="server" width="40%">参考文献</th>
                                        <th runat="server" width="40%">参考文献链接</th>
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
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
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
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date")%>' />
                        </td>
                        <td>
                            <asp:Label ID="topicLabel" runat="server" Text='<%# Eval("topic") %>' />
                        </td>
                        <td>
                            <asp:Label ID="reporterLabel" runat="server" Text='<%# Eval("reporter") %>' />
                        </td>
                        <td>
                            <asp:Label ID="referenceLabel" runat="server" Text='<%# Eval("reference") %>' />
                        </td>
                        <td>
                            <asp:Label ID="r_linkLabel" runat="server" Text='<%# Eval("r_link") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:AccessDataSource ID="DB_activities" runat="server" DataFile="~/Data/OPTIMALDB.mdb"
                DeleteCommand="DELETE FROM [Activities] WHERE [id] = ?"
                InsertCommand="INSERT INTO [Activities] ([date], [topic], [reporter], [reference], [r_link]) VALUES (?, ?, ?, ?, ?)"
                SelectCommand="SELECT * FROM [Activities] ORDER BY [date] DESC"
                UpdateCommand="UPDATE [Activities] SET [date] = ?, [topic] = ?, [reporter] = ?, [reference] = ?, [r_link] = ? WHERE [id] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="date" Type="DateTime" />
                    <asp:Parameter Name="topic" Type="String" />
                    <asp:Parameter Name="reporter" Type="String" />
                    <asp:Parameter Name="reference" Type="String" />
                    <asp:Parameter Name="r_link" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="date" Type="DateTime" />
                    <asp:Parameter Name="topic" Type="String" />
                    <asp:Parameter Name="reporter" Type="String" />
                    <asp:Parameter Name="reference" Type="String" />
                    <asp:Parameter Name="r_link" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:AccessDataSource>
        </div>

</asp:Content>
