<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="net.jvsun.model.*"%>
<%@page import="net.jvsun.dao.*"%>
<%@page import="net.jvsun.tools.*"%>
<%@page import="net.jvsun.servlet.*"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		    + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="script/jquery-1.7.2.js"></script>
<title>恋爱相册</title>
<style type="text/css">
* {
	background-size: 100% 100%;	
}
.pictureBox {
	width: 16%;
	height: 160px;
	border-radius: 5px;
	background: url(images/searchPictureDefault.jpg) no-repeat ;
	background-size: 100% 100%;
	display: inline-block;
	margin-left: 3%;
	margin-top: 2%;
}
img{
	width:100%;
	height:100%;
	display:inline-block;
	border-radius: 5px;
}
span {
	display: none;
}
form {
	width: 100%;
	height: 400px;
}
@font-face {
  			font-family: 'YuanJuFont';  
  			src: url('font-family/yuanju.ttf');       
			}
			#mainMenuLeft li a,#mainMenuRight li a{
  			font-family: 'YuanJuFont'; 
  			font-size:21px;
			}
			#QuotePagetitleContainer p{
			font-family: 'YuanJuFont'; 
			}
			#subtitleBreadcrumbsWrapper p{
			font-family: 'YuanJuFont'; 
			}
			 *{
    padding:0;
    margin:0;
  }
  html,body{
  	min-height:700px;
    width:100%;
    height:auto;
    overflow-x:hidden;
    background:url("images/searchPictureBg.png") no-repeat;
    background-size:100% 100%;
    
    
  }
  a{
    text-decoration: none;
    color: black;
  }

  /*    导航栏 begin----  */
  .banner{
    /*display: inline-block;*/
    width:100%;
    height:75px;
    margin-top: 30px;
  }
  .ban{
    display: inline-block;
  }
  .leftBanner , .rightBanner{
    width:30%;
    height:50px;
  }
  .leftBanner{
    float: left;
    margin-left:16.5%;
  }
  .rightBanner{
    float: left;
  }
  .centerLogo{
    float: left;
    width:100px;
    height:100px;
    margin-top: -25px;
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
  background-image: url(images/treeLogo_green.png);
  background-size: 100% 100%;
  border-radius: 50px 50px;
  box-shadow: 0 0 5px 3px green;

  -webkit-animation: tree_logo 1s infinite ;
  -moz-animation: tree_logo 1s infinite ;
  animation: tree_logo 1s infinite ;
}

@-webkit-keyframes tree_logo {
  0%{
    -webkit-box-shadow: 0 0 3px 1px green;
  }
  25%{
    -webkit-box-shadow: 0 0 7px 3px green;
  }
  50%{
   -webkit-box-shadow: 0 0 10px 5px green;
 }
 75%{
   -webkit-box-shadow: 0 0 7px 3px green;
 }
 100%{
  -webkit-box-shadow: 0 0 3px 1px green;
}
}

@-moz-keyframes tree_logo {
  0%{
    -moz-box-shadow: 0 0 3px 1px green;
  }
  25%{
    -moz-box-shadow: 0 0 7px 3px green;
  }
  50%{
   -moz-box-shadow: 0 0 10px 5px green;
 }
 75%{
   -moz-box-shadow: 0 0 7px 3px green;
 }
 100%{
  -moz-box-shadow: 0 0 3px 1px green;
}
}

@keyframes tree_logo {
  0%{
    box-shadow: 0 0 3px 1px green;
  }
  25%{
    box-shadow: 0 0 5px 3px green;
  }
  50%{
   box-shadow: 0 0 7px 5px green;
 }
 75%{
   box-shadow: 0 0 5px 3px green;
 }
 100%{
  box-shadow: 0 0 3px 1px green;
}
}
@-ms-keyframes tree_logo {
  0%{
    -ms-box-shadow: 0 0 3px 1px green;
  }
  25%{
    -ms-box-shadow: 0 0 5px 3px green;
  }
  50%{
   -ms-box-shadow: 0 0 7px 5px green;
 }
 75%{
   -ms-box-shadow: 0 0 5px 3px green;
 }
 100%{
  -ms-box-shadow: 0 0 3px 1px green;
}
}

.ban ul li{
  display: inline-block;
}
.ban li{
  width:20%;
  font-size: 1.2vw;
  margin-left:10%;
  margin-top: 20px;
  text-align: center;
  font-weight: bolder;


}
.ban li a{
  color:green;  
}
.ban li a:hover{
  color:lightgreen;
  `transform:scale(1.1,1.1); 
}
/*      导航栏 end----  */
			
			
</style>

<script type="text/javascript" src="js/searchPicture.js"></script>
</head>
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
        <!-- <li><a href="/yuanJu/ShowOrNotServlet">图片记忆</a></li> -->
        <li><a href="up.jsp">上传图片</a></li>
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
	<%
	    List<Image> myPictureList = (List) session.getAttribute("myPictureList");
	    for (Image image : myPictureList) {
	%>
	<div class="pictureBox" id='<%=image.getId()%>'>
		<img src='http://localhost/photo/<%=image.getImg_name()%>'>
		<span class='<%=image.getIsShow()%>'><%=image.getIsShow()%></span>
	</div>
	<%
	    }
	%>
	</div>
</body>
</html>