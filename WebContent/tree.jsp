<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
 <%@page import="net.jvsun.model.*" %>
<%@page import="net.jvsun.dao.*" %>
<%@page import="net.jvsun.tools.*" %>
<%@page import="net.jvsun.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tree_02</title>
    <style type="text/css">
    a{
    text-decoration: none;
    color: black;
  }
  
   /*    导航 begin----  */
  .banner{
    position: fixed;
    right: -70px;
    width:100px;
    height:100%;
  }
  .banner:hover{
    right: 5px;
  }
  .leftBanner , .rightBanner{
    width:33%;
    height:40%;
    margin-left:33%;

  }
  .leftBanner{
    margin-top: 5px;
    
  }


  .leftBanner ul li a{
  	/* color:pink; 		设置上面字体颜色*/
  	color:black;
  }
  .rightBanner{
    margin-top: -10px;  
  	
  }
   .rightBanner ul li a{
  	/* color: #548FC1; 		设置下面字体颜色*/
  	color:black;
  }
  .centerLogo{
       width: 100%;
       height: 20%;
       max-height:100px;
       margin-top:15px;
  }
  .centerLogo a:hover{
   -webkit-animation-play-state:paused;
   -moz-animation-play-state:paused;
   -ms-animation-play-state:paused;
   animation-play-state: paused;
   
 }
 .centerLogo a{
  display: inline-block;
  width: 100%;
  height: 100%;
  background-image: url(images/treeLogo_lightBlue.png);
  background-size: 100% 100%;
  border-radius: 50px 50px;
  box-shadow: 0 0 5px 3px blue;

  -webkit-animation: tree_logo 1s infinite ;
  -moz-animation: tree_logo 1s infinite ;
  animation: tree_logo 1s infinite ;
}

@-webkit-keyframes tree_logo {
  0%{
    -webkit-box-shadow: 0 0 3px 1px blue;
  }
  25%{
    -webkit-box-shadow: 0 0 7px 3px blue;
  }
  50%{
   -webkit-box-shadow: 0 0 15px 7px blue;
 }
 75%{
   -webkit-box-shadow: 0 0 7px 3px blue;
 }
 100%{
  -webkit-box-shadow: 0 0 3px 1px blue;
}
}

@-moz-keyframes tree_logo {
  0%{
    -moz-box-shadow: 0 0 3px 1px blue;
  }
  25%{
    -moz-box-shadow: 0 0 7px 3px blue;
  } 
  50%{
   -moz-box-shadow: 0 0 15px 7px blue;
 }
 75%{
   -moz-box-shadow: 0 0 7px 3px blue;
 }
 100%{
  -moz-box-shadow: 0 0 3px 1px blue;
}
}

@keyframes tree_logo {
  0%{
    box-shadow: 0 0 3px 1px blue;
  }
  25%{
    box-shadow: 0 0 7px 3px blue;
  }
  50%{
   box-shadow: 0 0 15px 5px blue;
 }
 75%{
   box-shadow: 0 0 7px 3px blue;
 }
 100%{
  box-shadow: 0 0 3px 1px blue;
}
}
@-ms-keyframes tree_logo {
  0%{
    -ms-box-shadow: 0 0 3px 1px blue;
  }
  25%{
    -ms-box-shadow: 0 0 7px 3px blue;
  }
  50%{
   -ms-box-shadow: 0 0 15px 5px blue;
 }
 75%{
   -ms-box-shadow: 0 0 7px 3px blue;
 }
 100%{
  -ms-box-shadow: 0 0 3px 1px blue;
}
}

.ban ul li{

  width:90%;
  font-size: 1.2vw;;
  margin-top: 10px;
  text-align: center;
  font-weight: bolder;
  list-style-type: none;
  display: inline-block;
}
.ban ul li a:hover{
  color:green;
  transform:scale(1.2,1.2); 
}
/*      导航 end----  */
    
    </style>
</head>
<script src="js/jquery-3.0.0.min.js"></script>
<script src="js/jquery.transform-0.9.3.min_.js"></script>
<script src="js/jquery.transit.js"></script>
<script src="js/jQueryRotate.js"></script>
<script src="js/tree.js"></script>
<link rel="stylesheet" type="text/css" href="css/tree.css">
<link rel="stylesheet" type="text/css" href="css/tree_ind.css">
<script type="text/javascript">
$(document).ready(function(){
    function anim(duration){
        $('#mint').animate(
            {height: 'toggle'},
            {duration: duration}
        );
    }
    $('#closebtn').click(function() {
        $('#mintbar').slideUp();
        anim(600);
    });
   
    $('#mint').click(function() {
        anim(600);
        $('#mintbar').slideDown('slow');
    });
	
});
</script>
<body>
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

     
            <!-- 水壶 -->
    <div class="water" id="water">
        <img src="images/water.png" alt=""/>
    </div>
    
    <!-- 云 -->
    <div class="cloud_0" id = "cloud_0"></div>
    <div class="cloud cloud_1"></div>
    <div class="cloud cloud_2"></div>
<!--     <div class="cloud cloud_3"></div> -->
    
            <!--  太阳 -->
    <div class="sun" id="sun">
       <!--  <img src="images/sun.png" alt=""/> -->
       <!-- <img src="images/sun_01.png" alt=""/> -->
    </div>
    
    <!-- 日晕 -->
    
    
               <!--  花 -->
    <div class="flower" id="flower"></div>
    <div class="f_s">
    	<div class="flowers" id="flower_1"></div>
    	<div class="flowers" id="flower_2"></div>
    	<div class="flowers" id="flower_3"></div>
    	<div class="flowers" id="flower_4"></div>
    	<div class="flowers" id="flower_5"></div>
    	<div class="flowers" id="flower_6"></div>
    	<div class="flowers" id="flower_2"></div>
    	<div class="flowers" id="flower_3"></div>
    	<div class="flowers" id="flower_4"></div>
    	<div class="flowers" id="flower_5"></div>
    	<div class="flowers" id="flower_6"></div>
    	<div class="flowers" id="flower_2"></div>
    	<div class="flowers" id="flower_3"></div>
    	<div class="flowers" id="flower_4"></div>
    	<div class="flowers" id="flower_5"></div>
    	<div class="flowers" id="flower_6"></div>
    	<div class="flowers" id="flower_2"></div>
    	<div class="flowers" id="flower_3"></div>
    	<div class="flowers" id="flower_4"></div>
    	<div class="flowers" id="flower_5"></div>
    	<div class="flowers" id="flower_6"></div>
    	<div class="flowers" id="flower_2"></div>
    	<div class="flowers" id="flower_3"></div>
    	<div class="flowers" id="flower_4"></div>
    	<div class="flowers" id="flower_5"></div>
    	<div class="flowers" id="flower_6"></div>
    	<div class="flowers" id="flower_2"></div>
    	<div class="flowers" id="flower_3"></div>
    	<div class="flowers" id="flower_4"></div>
    	<div class="flowers" id="flower_5"></div>
    	<div class="flowers" id="flower_6"></div>
    	<div class="flowers" id="flower_3"></div>
    	<div class="flowers" id="flower_4"></div>
    	<div class="flowers" id="flower_5"></div>
    	<div class="flowers" id="flower_6"></div>
    	<div class="flowers" id="flower_2"></div>
    	<div class="flowers" id="flower_3"></div>
    	<div class="flowers" id="flower_4"></div>
    </div>
    
<!--     装饰 草  -->
    <div class="glass"></div>
    
      <!--   阳 光 -->
    <div id="sun_effective"> </div>
           <!--  雨 水 -->
    <div id="water_effective"></div>
    <!-- <img src="images/rain.png"/> -->
    
    
            <% 
            	Tree tree = (Tree)session.getAttribute("tree");
            	
            %>
       <!--  进度条 --> 
       <div class="prog">
       <!-- 雨水进度条 -->
        <div class="progress value_water" id="progress">
            <!-- <span>水</span><br> -->
            <div class="progress-bar progress-bar-info progress-bar-striped active" id="value_water">

                <div class="progress-value progress-v1" id="value_water_index"><%=tree.getWater_value()%></div>
            </div>
        </div>

        <!--  阳光进度条 -->
        <div class="progress" id="progress">
            <!-- <span>阳光</span><br> -->
            <div class="progress-bar progress-bar-warning progress-bar-striped active" id="value_sunshine">
                <div class="progress-value progress-v2" id="value_sunshine_index"><%=tree.getSun_value()%></div>
            </div>
        </div>
    </div>


<!-- <div id="mintbar"><a id="closebtn" href="#"><img src="images/wd02.png" /></a></div> -->

<%-- <div id="mint" style="display:none;position:absolute;top:0;right:0px;">
	<div class="box-nav-bj"></div>
	<div class="box-nav">
		<li><a href="index.jsp">首页</a></li>
		<li><a href="/yuanJu/GetPublicWordsServlet">秀恩爱</a></li>
		<li><a href="/yuanJu/ShowOrNotServlet">图片记忆</a></li>
    	<li><a href="/yuanJu/OurWordsServlet">点点滴滴</a></li>
    	<li><a href="about.jsp">关于我们</a></li>
    	<%
				if(session.getAttribute("username") == null){%>
				    <li><a href="login.jsp">登录</a></li>
				<%}else{%>
				    <li><a href="/yuanJu/logout.do">注销</a></li>
				<%}%>
	</div>
</div> --%>
</body>
</html>

        
        

