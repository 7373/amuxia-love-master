<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>终身伴侣</title>
<link type="text/css" href="css/2.css" rel="stylesheet" />
<link rel="stylesheet" href="css/1.css" type="text/css" />
<link type="text/css" href="css/3.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/fullPage.js"></script>
<script type="text/javascript" src="js/4.js"></script>
</head>
<style type="text/css">
	.reigstIndex{
		position:absolute;
		left:46%;
		top:45%;
		color:#CCBA62;
		font-size:25px;
		letter-spacing:5px;
	}
	.page1_section{
				background:url('images/frist1.jpg') no-repeat;
				background-size:100% 100%;
	}
</style>
<body>


<div id="fullpage">
    
    <div class="section page1_section">
    	<div class="content-2">
        	<div class="con-con">
            	<!-- <img src="images/record.jpg" /> -->
            </div>
        </div>
    </div>
    <div class="section">
    	<div class="content-3">
        	<ul>
            	<li>
                	<a></a>
                    <a></a>
                    <a href="#">
                    	<img src="images/1.jpg" />
                    	<p></p>
                    </a>
                </li>
                <li>
                	<a href="#">
                    	<img src="images/2.jpg" />
                    	<p></p>
                    </a>
                    <a href="#">
                    	<img src="images/3.jpg" />
                    	<p></p>
                    </a>
                    <a href="#">
                    	<img src="images/4.jpg" />
                    	<p></p>
                    </a>
                </li>
                <li>
                	<a href="#">
                    	<img src="images/5.jpg" />
                    	<p></p>
                    </a>
                    <a href="#">
                    	<img src="images/6.jpg" />
                    	<p></p>
                    </a>
                    <a href="#">
                    	<img src="images/7.jpg" />
                    	<p></p>
                    </a>
                </li>
                <li>
                	<a href="#">
                    	<img src="images/1.jpg" />
                    	<p></p>
                    </a>
                    <a href="#">
                    	<img src="images/2.jpg" />
                    	<p></p>
                    </a>
                    <a href="#">
                    	<img src="images/3.jpg" />
                    	<p></p>
                    </a>
                </li>
                <li>
                	<a href="#">
                    	<img src="images/4.jpg" />
                    	<p></p>
                    </a>
                    <a></a>
                    <a></a>
                </li>
            </ul>
        </div>
    </div>
    <div class="section">
    	<div class="contact">
        	<h3 class="me">在终身伴侣完成了你们的爱情见证！赶快把这个喜讯分享一下吧！</h3>
        </div>
        <a class = "reigstIndex" href="regist.jsp">点击注册</a>
        <div class="line">
        	<div class="share">
            	<a onClick="xinlang('将我的个人主页分享至新浪','index.html','images/ewm.png');" class="xinlang"  data-container="body" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="分享至新浪微博">
                	<img src="images/xinlang.png" />
                </a>
                <a href="javascript:;" class="qq" onClick="qqShare();"  data-container="body" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="分享至QQ好友">
                	<img src="images/qq.png" />
                </a>
                <a class="jiathis_button_weixin"  data-container="body" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="分享至微信">
                	<img src="images/weixin.png" />
                </a>
            </div>
            
        </div>
    </div>
</div>
<script>
$(function(){
    $('#fullpage').fullpage({
        'verticalCentered': false,
        'css3': true,
        'sectionsColor': ['#825b56', '#343b4e', '#4b6558', '#822c2b'],
        anchors: ['page1', 'page2', 'page3', 'page4'],
        'navigation': true,
        'navigationPosition': 'right',
        'navigationTooltips': ['', '', '', ''],
    });
	
	$("[data-toggle='popover']").popover();

})
//分享到新浪
function xinlang(title,url,picurl){
	var sharesinastring='http://v.t.sina.com.cn/share/share.php?title='+title+'&url='+url+'&content=utf-8&sourceUrl='+url+'&pic='+picurl;  
	window.open(sharesinastring,'newwindow','height=400,width=400,top=100,left=100');
}

//分享給QQ好友
function qqShare(){
    var p = {
    url:'http://www.ysblv.cn/yuanJu/', /*获取URL，可加上来自分享到QQ标识，方便统计*/
    desc:'我在终身伴侣搭起了自己的小屋，你还不来吗', 
    title:'月亮上飞来的邀请函', /*分享标题(可选)*/
    summary:'', /*分享摘要(可选)*/
    pics:'', /*分享图片(可选)*/
    flash: '', /*视频地址(可选)*/
    site:'http://www.ysblv.cn/yuanJu/', /*分享来源(可选) 如：QQ分享*/
    style:'203',
    width:16,
    height:16
    };
    var s = [];
    for(var i in p){
        s.push(i + '=' + encodeURIComponent(p[i]||''));
    }
    var qhref = "http://connect.qq.com/widget/shareqq/index.html?"+s.join('&');
    $(".qq").attr({href:qhref,target:"_blank"});
};


//分享給微信好友
$(".jiathis_button_weixin").mouseenter(function(){
	$(this).attr("title","");
});

//作品循环
$(".content-3 ul li").each(function (i) {
	$(this).attr("style", "-webkit-transition-delay:" + i * 0.2 + "s;"
			+ "-moz-transition-delay:" + i * 0.2 + "s;"
			+ "-o-transition-delay:" + i * 0.2 + "s;"
			+ "transition-delay:" + i * 0.2 + "s;");
});

</script>
</body>
</html>
