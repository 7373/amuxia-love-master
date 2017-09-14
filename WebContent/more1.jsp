<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="net.jvsun.model.*"%>
<%@page import="net.jvsun.dao.*"%>
<%@page import="net.jvsun.tools.*"%>
<%@page import="net.jvsun.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>秀恩爱</title>
	<link href="css/home.css" rel="stylesheet">
	<link href="css/more.css" rel="stylesheet">
	<link href="css/banner_H.css" rel="stylesheet">
	<style type="text/css">
	html,body{
		min-height:800px;
	}
	.ban li a{
  		color:green;  
	}
	</style>
<script type="text/javascript" src="js/jquery-3.0.0.min.js"></script>
<script>
var lanren = {
	changeClass: function (target,id) {
       	var className = $(target).attr('class');
       	var ids = document.getElementById(id);
       	(className == 'on')
           	? $(target).removeClass('on').addClass('off')
           	: $(target).removeClass('off').addClass('on');
       	(className == 'on')
           	? ids.pause()
           	: ids.play();
   	},
	play:function(){
		document.getElementById('media').play();
	}
}
lanren.play(); 
<!--代码部分end-->

</script>
  </head>
  <body>
  <div id="lanren">
	<div id="audio-btn" class="on" onclick="lanren.changeClass(this,'media')">
	<audio loop="loop" src="mp3/誓言 - 求佛.mp3" id="media" preload="metadata"></audio>
</div>
</div>

  <!--  导航 begin   -->
  <div class="banner">
    <div class="leftBanner ban">
      <ul>
        <li><a href="index.jsp" class="index">首页</a></li>
        <li><a href="/yuanJu/OurWordsServlet">点点滴滴</a></li>
        <li><a href="/yuanJu/GetPublicWordsServlet">秀恩爱</a></li>
      </ul>
    </div>

    <div class="centerLogo ban"><a href="/yuanJu/TreeInitialSelvet"></a></div>

    <div class="rightBanner ban">
      <ul>
        <li><a href="about.jsp">关于我们</a></li>
        <li><a href="/yuanJu/ShowOrNotServlet">图片记忆</a></li>
       <!--  <%
        if(session.getAttribute("username") == null){%>
            <li><a href="login.jsp">登录</a></li>
        <%}else{%>
            <li><a href="/yuanJu/logout.do">注销</a></li>
        <%}%> -->
        <li><a href="/yuanJu/logout.do">注销</a></li>
      </ul>
    </div>
  </div>
<!--    导航 end   -->


		
		
		<div class="photo" id="photo"></div>
    <div id="tickerContainer">
      <dl id="ticker">
      	<div class="r_box" id="r_box">
        <%
        	List<Whisper> list = (List)session.getAttribute("list");
        	for(Whisper w : list){%>    		
					<li class = "liWords">
						<h3>
							<span class="title"><%=w.getPublisher() %></span>
        					<span class="publishTime"><%=w.getPublishTime() %></span>
        				</h3>
						<p><%=w.getContent() %></p>
					</li>
       <%  }%>
        </div> 
      </dl>
    </div>
    
    <script src="js/jquery.transit.js"></script>
    <script type="text/javascript">
	  $(function() {
		  moveWord();
		  pictureRotate(); 
		  
		  function moveWord(){
			  var ticker = $("#r_box");
				ticker.children().filter("li").each(function() {
				  var li = $(this),
				    container = $("<div>");
				  li.next().appendTo(container);
				  li.prependTo(container);
				  container.appendTo(ticker);
				});
				ticker.css("overflow", "hidden");
				function animator(currentItem) {
				  var distance = currentItem.height();
					duration = (distance + parseInt(currentItem.css("marginTop"))) / 0.015;
				  currentItem.animate({ marginTop: -distance }, duration, "linear", function() {
					currentItem.appendTo(currentItem.parent()).css("marginTop", 0);
					animator(currentItem.parent().children(":first"));
				  }); 
				};
				/* alert(ticker.children(":first")).text(); */
				$("#ticker").mouseover(function(){
					ticker.children().stop();
				});
				animator(ticker.children(":first")); 
				/* t.mouseenter(function() {
				  ticker.children().stop();
				}); */
				$("#ticker").mouseleave(function() {
				  animator(ticker.children(":first"));
				}); 
		  }
		 
		  function pictureRotate(){
			  var url = "/yuanJu/MoreServlet";
			  var time = new Date();
			  var argus = {'time':time};
			  $.getJSON(url,argus,function(data){
				  
				  var picList = new Array(data.length);
				  /* alert(data.length); */
				  for(var k  in data){
					  /* alert(data[k]); */
					  picList[k] = data[k];
				  }
				  /* alert(picList.length); */
				  if(data.length>1){
					  pic_Rotate(picList);
				  }
					 
				  /* return picList; */
			  });
		  }
			  
			  
			  function pic_Rotate(array){
				  var $container = $("#photo");
				  
				 setInterval(function(){	
					 var bodyHeight = $("body").height() -200 ;
					/*  console.log(bodyHeight); */
					 var uri = array[[Math.floor(Math.random() *(array.length - 1) ) ]];
					  var top = Math.random() * bodyHeight <100 ? 120 : Math.random() * bodyHeight -100;
					  /* console.log(top); */
					  var left = Math.random() * 1200 <100 ? 120 : Math.random() * 1200 ;
					  var $p = $('<div/>').css({
						  'background':'url(http://localhost/photo/' + uri + ')'+'no-repeat',
						  'top':top,
						   'left':left,
						   'background-size':'100% 100%'
					  }).addClass("pic");
					 $container.append($p); 
					 $p.transition({},10000,function(){
						 $(this).remove();
					 });
				 },1000);
			  }
	  });
    </script>
</body>
</html>