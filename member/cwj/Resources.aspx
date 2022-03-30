<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resources.aspx.cs" Inherits="ChanWeb.Links" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Wei-Jie Chen's Homepage</title>
    <link rel="stylesheet" type="text/css" href="CSS/hpstyle.css" />
    <link rel="stylesheet" type="text/css" href="CSS/tooltipster.bundle.min.css" />
    <link rel="stylesheet" type="text/css" href="CSS/tooltipster-sideTip-light.min.css" />
    <script type="text/javascript" src="js/jquery-1.10.0.min.js"></script>
    <script type="text/javascript" src="js/tooltipster.bundle.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.tooltip').tooltipster({
                animation: 'fade',
                side: 'right',
                maxWidth: 700,
                minWidth: 700,
                delay: 50,
                theme: 'tooltipster-light',
                functionPosition: function (instance, helper, position) {
                    position.coord.top += 0;
                    position.coord.left += 10;
                    return position;
                }
            });
        });
    </script>
    <style type="text/css">
        li {list-style-type:none;}
        .div_listview {
            width: 1000px;
        }

        .div_item {
            font-family: Georgia;
            font-size: 17px;
            line-height: 25px;            
            text-align: justify;
        }

            .div_item:hover {
                background-color: #dedede;
            }

            .div_item b {
                text-shadow: 1px 1px 2px rgb(181, 181, 181);
                font-size: 1.0em;
            }

            .div_item a {
                text-decoration: none;
                color: #6600FF;
                font-weight:bold;
                line-height: 20px;
            }

                .div_item a:hover {
                    text-decoration: none;
                    color: red;
                }

        .bullet li {
            display: inline-block;
            list-style-type:none;
            *display:inline;
            *zoom:1;
            padding: 10px 20px 10px 20px;
            font-size: 18px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server" style="width: 1000px; margin: auto;">
        <div style="text-align:center">
            <asp:BulletedList ID="BulletedList1" runat="server" CssClass="bullet" DataSourceID="Chan_Link_BB" DataTextField="L_B_Content" DataValueField="L_B_ID" DisplayMode="LinkButton" OnClick="BB_Click"></asp:BulletedList>
        </div>
        <asp:AccessDataSource ID="Chan_Link_BB" runat="server" DataFile="~/member/cwj/DB/ChanDB.mdb" SelectCommand="SELECT * FROM [Links_BB] ORDER BY [L_B_ID]"></asp:AccessDataSource>
        <p style="border-bottom: 1px dotted #CCCCCC;" />
        <div class="div_listview">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="ChanDB" ItemPlaceholderID="item_hold_researchers">
                <LayoutTemplate>
                    <div runat="server" id="item_hold_researchers"></div>
                </LayoutTemplate>
                <ItemTemplate>
                    <div class="div_item">
                        <li>
                            <asp:HyperLink class="tooltip" runat="server" NavigateUrl='<%#"http://"+Eval("link_url")%>' Target="_blank" ToolTip='<%#Eval("link_tip") %>' Text='<%#Eval("link_name")%>' />: <%#Eval("link_discription")%></li>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:AccessDataSource ID="ChanDB" runat="server" DataFile="~/member/cwj/DB/ChanDB.mdb"
                SelectCommand="SELECT * FROM [Links] WHERE ([link_type] = ?) ORDER BY [link_name]">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="link_type" SessionField="Link_Type" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </div>
        <p style="border-bottom: 1px dotted #CCCCCC;" />
        <p>[<a href="#top" target="_self">go top</a>]</p>                
    </form>
</body>

</html>
