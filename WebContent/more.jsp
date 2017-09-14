<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>恩爱社区</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="js/sliders.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
<!-- 返回顶部调用 begin -->
<script type="text/javascript" src="js/js.js"></script>
<!-- 返回顶部调用 end-->
<script src="js/jquery.slides.js"></script>
<link rel="stylesheet" type="text/css" href="css/index_2.css">
</head>
<body>
<a href="index.jsp"><img alt="logo" src="images/logo_red.png"style="width:200px;height:80px;position: absolute;left:30px;top:20px;"></a>
<!--  导航 begin   -->
  <div class="banner">
    <div class="leftBanner ban">
      <ul>
        <li><a href="index.jsp" class="index">首页</a></li>
        <li><a href="/yuanJu/OurWordsServlet">恋爱日记</a></li>
        <li><a href="/yuanJu/GetPublicWordsServlet">恩爱社区</a></li>
      </ul>
    </div>

    <div class="centerLogo ban"><a href="/yuanJu/TreeInitialSelvet"></a></div>

    <div class="rightBanner ban">
      <ul>
        <li><a href="about.jsp">恋爱协议</a></li>
        <li><a href="/yuanJu/ShowOrNotServlet">恋爱相册</a></li>
        <%
        if(session.getAttribute("username") == null){%>
            <li><a href="login.jsp">登录</a></li>
        <%}else{%>
            <li><a href="/yuanJu/logout.do">注销</a></li>
        <%}%>
        <!-- <li><a href="/yuanJu/logout.do">注销</a></li> -->
      </ul>
    </div>
  </div>
<article>
  <div class="l_box f_l">
    <div class="banner">
      <div id="slide-holder">
        <div id="slide-runner"> <a href="#" ><img id="slide-img-1" src="images/a1.jpg"  alt="" /></a> <a href="#" ><img id="slide-img-2" src="images/a2.jpg"  alt="" /></a> <a href="#" ><img id="slide-img-3" src="images/a3.jpg"  alt="" /></a> <a href="#" ><img id="slide-img-4" src="images/a4.jpg"  alt="" /></a>
          <div id="slide-controls">
            <p id="slide-client" class="text"><strong></strong><span></span></p>
            <p id="slide-desc" class="text"></p>
            <p id="slide-nav"></p>
          </div>
        </div>
      </div>
      <script>
	  if(!window.slider) {
		var slider={};
	}

	slider.data= [
    {
        "id":"slide-img-1", // 与slide-runner中的img标签id对应
        "client":"恋爱日记",
        "desc":"记录两个人在一起的点点滴滴，酸甜苦辣" //这里修改描述
    },
    {
        "id":"slide-img-2",
        "client":"爱情树",
        "desc":"即使再忙，两个人也应该一起为自己的树浇浇水"
    },
    {
        "id":"slide-img-3",
        "client":"恋爱相册",
        "desc":"每一个精彩瞬间，都不应该被遗忘"
    },
    {
        "id":"slide-img-4",
        "client":"恋爱协议",
        "desc":"恋人彼此的承诺，大概是真正永恒的了吧"
    } 
	];

	  </script> 
    </div>
    <!-- banner代码 结束 -->
    <div class="topnews">
      <h2><b>文章</b>推荐</h2>
      <div class="blogs">
        <figure><img src="images/aa1.jpg"></figure>
        <ul>
          <h3><a href="#">风雨过后，清愁如期</a></h3>
          <p>人生有太多的不能够，谁又能左右命运的弃守。也许真爱天生就无法圆满，为爱雕刻丰碑永恒不朽。其实谁又能筑建温巢，潇洒红尘，飘逸无忌,云水间无法断念，藩篱里缠绵不清。无法清修的思念之苦，攀上乌鬓，染上霜色；用千万缕发丝数着日子，白一丝 ...</p>
          <p class="autor"><span class="lm f_l"><a href="#">小峰</a></span><span class="dtime f_l">2014-02-19</span></p>
        </ul>
      </div>
      <div class="blogs">
        <figure><img src="images/aa2.jpg"></figure>
        <ul>
          <h3><a href="#">如何维护您和伴侣的关系</a></h3>
          <p>初次相识的喜悦，让你觉得似乎找到了知音。于是，对于投缘的人，开始了较频繁的交往。渐渐地，初识的喜悦退尽，接下来就是仅仅保持着联系，平淡到偶尔在节假曰发短信互致问候...</p>
          <p class="autor"><span class="lm f_l"><a href="#">小静</a></span></p>
        </ul>
      </div>
      <div class="blogs">
        <figure><img src="images/aa3.jpg"></figure>
        <ul>
          <h3><a href="#">原来以为，一个人的勇敢是，删掉他的手机号码...</a></h3>
          <p>原来以为，一个人的勇敢是，删掉他的手机号码、QQ号码等等一切，努力和他保持距离。等着有一天，习惯不想念他，习惯他不在身边,习惯时间把他在我记忆里的身影磨蚀干净... </p>
          <p class="autor"><span class="lm f_l"><a href="#">小杰</a></span></p>
        </ul>
      </div>
      <div class="blogs">
        <figure><img src="images/aa4.jpg"></figure>
        <ul>
          <h3><a href="#">偷渡者的故事·匿于影下的爱意</a></h3>
          <p>我叫德贝尔，我来自战火纷飞的叙利亚。
  2013年的夏天，我正在位于吉斯尔舒古尔的家中看书。突然，母亲急忙的推开了我的门，还未等我回头，母亲变焦急的喊着：“快走，他们来了！”我问：“怎么回事？”母亲拉起我的手，慌忙失措...</p>
          <p class="autor"><span class="lm f_l"><a href="#">飞燕</a></span></p>
        </ul>
      </div>
      <div class="blogs">
        <figure><img src="images/aa5.jpg"></figure>
        <ul>
          <h3><a href="#">你面对的是生活而不是手机</a></h3>
          <p>每一次与别人吃饭，总会有人会拿出手机。以为他们在打电话或者有紧急的短信，但用余光瞟了一眼之后发现无非就两件事：1、看小说，2、上人人或者QQ...</p>
          <p class="autor"><span class="lm f_l"><a href="#">小雪</a></span></p>
        </ul>
      </div>
      <div class="blogs">
        <figure><img src="images/aa6.jpg"></figure>
        <ul>
          <h3><a href="#">我爱的人，她在朋友圈</a></h3>
          <p> 
认识一个月了，时间很短暂，你可想而知短短的时间内投入很多的感情是一种多么冒险的行为，正如我第一次对你产生感觉到现在，我慌了，已经没有了退路...</p>
          <p class="autor"><span class="lm f_l"><a href="#">小雨</a></span></p>
        </ul>
      </div>
      <div class="blogs">
        <figure><img src="images/aa1.jpg"></figure>
        <ul>
          <h3><a href="#">爱只有一次</a></h3>
          <p>你的冷漠，就像我给你买了一杯热奶茶，在楼下等你，我知道这个时间段你会下楼，于是我等了好久却怎么也没有等到你，然后那杯热奶茶已经凉了，可是我依旧一直等你...</p>
          <p class="autor"><span class="lm f_l"><a href="#">青青</a></span></p>
        </ul>
      </div>
    </div>
  </div>
  <div class="r_box f_r">
    <div class="tit01">
      <h3>联系我们</h3>
      <div class="gzwm">
        <ul>
          <li><a class="xlwb" href="#" >新浪微博</a></li>
          <li><a class="txwb" href="#" >腾讯微博</a></li>
          <li><a class="rss" href="" >RSS</a></li>
          <li><a class="wx" href="">邮箱</a></li>
        </ul>
      </div>
    </div>
    <!--tit01 end-->
    <div class="ad300x100"> <img src="images/book.jpg"> </div>
    <div class="moreSelect" id="lp_right_select"> 
      <script>
window.onload = function ()
{
	var oLi = document.getElementById("tab").getElementsByTagName("li");
	var oUl = document.getElementById("ms-main").getElementsByTagName("div");
	
	for(var i = 0; i < oLi.length; i++)
	{
		oLi[i].index = i;
		oLi[i].onmouseover = function ()
		{
			for(var n = 0; n < oLi.length; n++) oLi[n].className="";
			this.className = "cur";
			for(var n = 0; n < oUl.length; n++) oUl[n].style.display = "none";
			oUl[this.index].style.display = "block"
		}	
	}
}
</script>
      <div class="ms-top">
        <ul class="hd" id="tab">
          <li class="cur"><a href="#">点击排行</a></li>
          <li><a href="#">最新文章</a></li>
          <li><a href="#">站长推荐</a></li>
        </ul>
      </div>
      <div class="ms-main" id="ms-main">
        <div style="display: block;" class="bd bd-news" >
          <ul>
            <li><a href="#" >因为爱你，所以害怕</a></li>
            <li><a href="#" >情侣相处六大法则</a></li>
            <li><a href="#" >爱情需要浇灌</a></li>
            <li><a href="#" >我想陪你慢慢变老</a></li>
            <li><a href="#" >你面对的是生活而不是手机</a></li>
            <li><a href="#" >陪伴是最长情的告白</a></li>
          </ul>
        </div>
        <div  class="bd bd-news">
          <ul>
            <li><a href="#" >踮起脚尖爱你是最好的时光...</a></li>
            <li><a href="#" >爱的旋律是第2次的初恋</a></li>
            <li><a href="#" >我想陪你慢慢变老</a></li>
            <li><a href="#" >陪伴是最长情的告白</a></li>
            <li><a href="#" >你面对的是生活而不是手机</a></li>
            <li><a href="#" >青春煮酒，何人交杯</a></li>
          </ul>
        </div>
        <div class="bd bd-news">
          <ul>
            <li><a href="#" >你面对的是生活而不是手机</a></li>
            <li><a href="#" >陪伴是最长情的告白</a></li>
            <li><a href="#" >青春煮酒，何人交杯</a></li>
            <li><a href="#" >因为爱你，所以害怕</a></li>
            <li><a href="#" >踮起脚尖爱你是最好的时光</a></li>
            <li><a href="#" >原来以为，一个人的勇敢是，删掉他的手机号码...</a></li>
          </ul>
        </div>
      </div>
      <!--ms-main end --> 
    </div>
    <!--切换卡 moreSelect end -->
    
    <div class="cloud">
      <h3>标签云</h3>
      <ul>
        <li><a href="#">我们的故事</a></li>
        <li><a href="#">情侣趣事</a></li>
        <li><a href="#">恋爱秘籍</a></li>
        <li><a href="#">星座</a></li>
        <li><a href="#">情侣活动</a></li>
        <li><a href="#">纪念日</a></li>
        <li><a href="#">恋爱相册</a></li>
        <li><a href="#">爱情树</a></li>
        <li><a href="#">秀恩爱</a></li>
        <li><a href="#">恋爱糗事</a></li>
        <li><a href="#">精选礼物</a></li>
        <li><a href="#">甜言蜜语</a></li>
        <li><a href="#">好文推荐</a></li>
        <li><a href="#">祝福他/她</a></li>
      </ul>
    </div>
    <div class="tuwen">
      <h3>图文推荐</h3>
      <ul>
        <li><a href="#"><img src="images/aa2.jpg"><b>我们结婚吧</b></a>
          <p><span class="tulanmu"><a href="#">小峰</a></span><span class="tutime">2015-02-15</span></p>
        </li>
        <li><a href="#"><img src="images/aa3.jpg"><b>再见了，曾经的过往</b></a>
          <p><span class="tulanmu"><a href="#">张杰</a></span><span class="tutime">2015-02-15</span></p>
        </li>
        <li><a href="#" title="手机的16个惊人小秘密，据说99.999%的人都不知"><img src="images/aa5.jpg"><b>遇见你真好</b></a>
          <p><span class="tulanmu"><a href="#">小娜</a></span><span class="tutime">2015-02-15</span></p>
        </li>
        <li><a href="#"><img src="images/aa4.jpg"><b>一生不长，岁月匆忙</b></a>
          <p><span class="tulanmu"><a href="#">小安</a></span><span class="tutime">2015-02-15</span></p>
        </li>
        <li><a href="#"><img src="images/aa1.jpg"><b>我愿用一生来爱你</b></a>
          <p><span class="tulanmu"><a href="#">静静</a></span><span class="tutime">2015-02-15</span></p>
        </li>
      </ul>
    </div>
    <div class="ad"> <img src="images/home.jpg"> </div>
    <div class="links">
      <h3><span>[<a href="#">申请友情链接</a>]</span>友情链接</h3>
      <ul>
        <li><a href="#">珍爱网</a></li>
        <li><a href="#">百合网</a></li>
        <li><a href="#">世纪佳缘</a></li>
        <li><a href="#">赶集婚恋</a></li>
        <li><a href="#">红娘网</a></li>
        <li><a href="#">非诚勿扰</a></li>
        <li><a href="#">爱在这儿</a></li>
        <li><a href="#">同城相亲</a></li>
        <li><a href="#">淘男网</a></li>
        <li><a href="#">恋爱秘籍</a></li>
        <li><a href="#">玫瑰情人网</a></li>
        <li><a href="#">小恩爱</a></li>
        <li><a href="#">QQ情侣空间</a></li>
      </ul>
    </div>
  </div>
  <!--r_box end --> 
</article>
<footer>
  <p class="ft-copyright"> Copyright © 2048 <a href="index.jsp">终身伴侣</a> | from <a href="index.jsp" target="_parent"></a> | 终身伴侣，您永远的港湾</p>
</footer>
</body>
</html>
