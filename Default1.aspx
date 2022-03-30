<%@ Page Title="" Language="C#" MasterPageFile="~/OPTIMAL.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OPTIMALWeb.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/jquery-1.4a2.min.js" type="text/javascript"></script>
    <script src="js/jquery.KinSlideshow-1.2.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#KinSlideshow").KinSlideshow({
                moveStyle: "right",
                titleBar: { titleBar_height: 30, titleBar_bgColor: "#08355c", titleBar_alpha: 0.5 },
                titleFont: { TitleFont_size: 16, TitleFont_color: "#FFFFFF", TitleFont_weight: "normal" },
                btn: { btn_bgColor: "#FFFFFF", btn_bgHoverColor: "#1072aa", btn_fontColor: "#000000", btn_fontHoverColor: "#FFFFFF", btn_borderColor: "#cccccc", btn_borderHoverColor: "#1188c0", btn_borderWidth: 1 }
            });
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH_Rightbody" runat="server">

    <div style="width:800px;">
        <div class="date_box"></div>
        <h3><a name="Introduction">&nbsp; Introduction</a> </h3>
        <p><span style="font-size: 20px; color: maroon;"><b>OPTIMAL Group</b>  is a research group organized by <a href="http://www.optimal-group.org/member/syh.html">Dr. Yuan-Hai Shao</a> and supervised by <a href="http://www.optimal-group.org/member/dny.html">Prof. Nai-Yang Deng </a>. "OPTIMAL" means optimization for machine learning and data mining. The group has been formed since 2011 to study the theory and applications of Optimization for Machine Learning and Data Mining.</span></p>
    </div>

    <div style="width:800px;">
        <div class="date_box"></div>
        <h3><a name="Seminars">&nbsp; Seminars (biweekly)</a> </h3>
        <p><span style="font-size: 20px;">The seminars are held biweekly via QQ group (175761622), and the topics are detailed as: <a href="./Activities.aspx">[link]</a></span></p>      
    </div>

    <div style="width:800px;">
        <div class="date_box"></div>
        <h3><a name="Album">&nbsp;  Album (Activities)</a> </h3>
        <br />
            <div id="KinSlideshow" style="visibility: hidden;" align="center" >
				<a href="#"><img src="Image/201610HangZhou.jpg" alt="Oct, 2016, ZhuanTang, Hangzhou. " width="600" height="350"/></a>			
                <a href="#"><img src="Image/201609ShaoXing.jpg" alt="Sep, 2016, Zhijiang, ShaoXing. " width="600" height="350"/></a>
                <a href="#"><img src="Image/201602Hangzhou.jpg" alt="Feb, 2016, Zhijiang, Hangzhou. " width="600" height="350"  /></a>
                <a href="#"><img src="Image/201405Jinhua.jpg" alt="May, 2014, Jinhua. " width="600" height="350" /></a>
                <a href="#"><img src="Image/201405Hangzhou.jpg" alt="Apr, 2014, Hangzhou. " width="600" height="350" /></a>
                <a href="#"><img src="Image/201311Hangzhou.jpg" alt="Nov, 2013, Hangzhou. " width="600" height="350" /></a>
                <a href="#"><img src="Image/201305Suzhou.jpg" alt="May, 2013, Suzhou. " width="600" height="350" /></a>
            </div>

    </div>
    <br />
    <p style="border-bottom: 1px dotted #CCCCCC;" />
    <p>[<a href="#top" target="_self">go top</a>]</p>
</asp:Content>
