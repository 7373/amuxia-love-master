<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="net.jvsun.model.*"%>
<%@page import="net.jvsun.dao.*"%>
<%@page import="net.jvsun.tools.*"%>
<%@page import="net.jvsun.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<title>恋爱日记</title>
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/str.css" rel="stylesheet" />
<script type="text/javascript" src="script/jquery-1.7.2.js"></script>
<style type="text/css">

/*      导航 end----  */
  *{
    padding:0;
    margin:0;
  }
  html,body{
    width:100%;
    height:auto;
    overflow-x: hidden;
  }
  a{
    text-decoration: none;
    color: black;
  }

  /*    导航 begin----  */
  .banner{
  	position: fixed;
    /* float: right; */
    right: -70px;
    /*margin-right: 5px;*/
    width:100px;
    height:710px;
    /*border:1px solid red;*/
    margin-top: 10px;
  }
  .banner:hover{
    right: 5px;
  }
  .leftBanner , .rightBanner{
    width:35px;
    height:300px;
    /*border:1px solid red;*/
    margin-left:33%;

  }
  .leftBanner{
    margin-top: 5px;
    /* background-color: #F5FFFE; */
    
  }
  .leftBanner ul li a{
  	color:pink;
  }
  .rightBanner{
    height:310px;
    margin-top: -1px;
    color:#548FC1;
  }
   .rightBanner ul li a{
  	color: #548FC1;
  }
  .centerLogo{
    width:100px;
    height:100px;
  }
  .centerLogo a:hover{
   -webkit-animation-play-state:paused;
   -moz-animation-play-state:paused;
   -ms-animation-play-state:paused;
   animation-play-state: paused;
   
 }
 .centerLogo a{
  display: inline-block;
  width: 100px;
  height: 100px;
  background-image: url(images/treeLogo_purple.png);
  background-size: 100% 100%;
  border:1px solid #CC00FF;
  border-radius: 50px 50px;
  box-shadow: 0 0 5px 3px #CC00FF;

  -webkit-animation: tree_logo 1s infinite ;
  -moz-animation: tree_logo 1s infinite ;
  animation: tree_logo 1s infinite ;
}

@-webkit-keyframes tree_logo {
  0%{
    -webkit-box-shadow: 0 0 3px 1px #CC00FF;
  }
  25%{
    -webkit-box-shadow: 0 0 7px 3px #CC00FF;
  }
  50%{
   -webkit-box-shadow: 0 0 15px 7px #CC00FF;
 }
 75%{
   -webkit-box-shadow: 0 0 7px 3px #CC00FF;
 }
 100%{
  -webkit-box-shadow: 0 0 3px 1px #CC00FF;
}
}

@-moz-keyframes tree_logo {
  0%{
    -moz-box-shadow: 0 0 3px 1px #CC00FF;
  }
  25%{
    -moz-box-shadow: 0 0 7px 3px #CC00FF;
  } 
  50%{
   -moz-box-shadow: 0 0 15px 7px #CC00FF;
 }
 75%{
   -moz-box-shadow: 0 0 7px 3px #CC00FF;
 }
 100%{
  -moz-box-shadow: 0 0 3px 1px #CC00FF;
}
}

@keyframes tree_logo {
  0%{
    box-shadow: 0 0 3px 1px #CC00FF;
  }
  25%{
    box-shadow: 0 0 7px 3px #CC00FF;
  }
  50%{
   box-shadow: 0 0 15px 5px #CC00FF;
 }
 75%{
   box-shadow: 0 0 7px 3px #CC00FF;
 }
 100%{
  box-shadow: 0 0 3px 1px #CC00FF;
}
}
@-ms-keyframes tree_logo {
  0%{
    -ms-box-shadow: 0 0 3px 1px #CC00FF;
  }
  25%{
    -ms-box-shadow: 0 0 7px 3px #CC00FF;
  }
  50%{
   -ms-box-shadow: 0 0 15px 5px #CC00FF;
 }
 75%{
   -ms-box-shadow: 0 0 7px 3px #CC00FF;
 }
 100%{
  -ms-box-shadow: 0 0 3px 1px #CC00FF;
}
}

.ban ul li{

  width:30px;
  font-size: 16px;
  margin-top: 20px;
  text-align: center;
  font-weight: bolder;
  list-style-type: none;
  display: inline-block;
}
.ban ul li a:hover{
  color:green;
  `transform:scale(1.2,1.2); 
}
/*      导航 end----  */

#logo{
			height:80px;
			width:230px;
			background:url("images/logo_purple.png") no-repeat;
			background-size:100% 100%;
			position:absolute;left:20px;top:5%;
			cursor:pointer;
	}
</style>
</head>
<body>

<div id="templatemo_wrapper">
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


<!-- 	<div class="purpleFlowers purpleFlower_02"></div>
	<div class="purpleFlowers purpleFlower_03"></div> -->

 	<div id="templatemo_main_column">
 	<div id="logo"></div>
 	<script type="text/javascript">
  	$("#logo").click(function(){window.location.href="/yuanJu/index.jsp"});
  </script>
         <div id="templatemo_Title" style="color:#fff">
                    恋爱日记
        </div> 
        
        <div id="welcome_text">
        	<strong>真正的爱情需要等待，谁都可以说爱你，但不是人人都能等你……</strong>
        </div> 
    </div>
    
   <div id="templatemo_content">
        <div class="post_section">
            <a><!-- <img src="images/templatemo_image_01.jpg" alt="Bell Photo" /> --></a>
            <div class="comment_tab">
                我们一起的点点滴滴
            </div>
            <%
					    List<Whisper> wordsList = (List) session.getAttribute("wordsList");
					    for (Whisper whisper : wordsList) {
					%>
            <div style="width:80%;margin:0 auto">
            
        <ul class="arrow_box">
         
     <div class="sy"><p><%=whisper.getContent()%><span class="comment_author"><%=whisper.getPublisher()%></span></p>

      <span class="dateview"><%=whisper.getPublishTime()%></span>
    </ul> 
        
    </div>
  <%
					    }
					%>  
  <div class="page"><a href=""><<</a><a href=""><</a><a href="">1</a><a href="">2</a><b>3</b><a href="">4</a><a href="">5</a><a href="">6</a><a href="">7</a><a href="">></a><a href="">>></a></div> 
    <% 
	request.setCharacterEncoding("utf-8");
	String act=request.getParameter("action");
	WhisperDao wd=new WhisperDao();
	Whisper w=new Whisper();
	if ("pub".equals(act)) {
	w.setContent(request.getParameter("content"));
	w.setPublisher(session.getAttribute("username").toString());
	w.setIsShow(DataConverter.toInt(request.getParameter("isShow")));
	wd.insert(w);
	out.println("<script>alert('发布成功，去查看'); location.href ='/yuanJu/OurWordsServlet';</script>");
	}
	%> 	
                <div id="comment_form">
                    <h3>开始记录</h3>         
                    <form action="record.jsp?action=pub" method="post">
                        <div class="form_row">
                            <label>书写自己的爱情故事</label><br />
                            <textarea name="content" id="editor" placeholder="请输入内容..."></textarea>
                        </div>
                       	<input type="checkbox" name="isShow" id="show" value="1">秀到首页？
                        <input type="submit" name="Submit" value="提交" class="submit_btn" />
                    </form>                 
                </div>
                
            <div class="cleaner"></div>
                    	<!-- 背景花 -->
		<!-- 	<div class="purpleFlowers purpleFlower_01"></div> -->
        </div>
        
        
	
    </div> 
    
    <div id="templatemo_footer">
        Copyright © 2048 <a href="index.jsp">终身伴侣</a> | from <a href="index.jsp" target="_parent"></a> | 终身伴侣，您永远的港湾
    </div>
    </div>
    </body>
</html>

</div> 

</body>

</html>