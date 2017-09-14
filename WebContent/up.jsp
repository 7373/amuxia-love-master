<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="net.jvsun.model.*"%>
<%@page import="net.jvsun.dao.*"%>
<%@page import="net.jvsun.tools.*"%>
<%@page import="net.jvsun.servlet.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<!-- 引用控制层插件样式 -->
		<link rel="stylesheet" href="control/css/zyUpload.css" type="text/css">
		<script type="text/javascript" src="script/jquery-1.7.2.js"></script>
		<!-- 引用核心层插件 -->
		<script type="text/javascript" src="core/zyFile.js"></script>
		<!-- 引用控制层插件 -->
		<script type="text/javascript" src="control/js/zyUpload.js"></script>
		<!-- 引用初始化JS -->
		<script type="text/javascript" src="script/demo.js"></script>
		<style>
			body{
    			background:url(images/recordBg.png.jpg) no-repeat;
				background-size:100% 93%;
			}
			.logina-logo{text-align:center; padding:55px 0;}
			#venusLogo p {
	font-family: 'Montez', cursive;
	font-size:55px;
	color:#A7CB46;
	text-shadow: 2px 2px 0 #A7CB46;
	margin:20px 0 0 40%;
	padding-right: 30px;
	float:left;
	 background-image: url(../images/logoLeaf.png); 
	 background-repeat: no-repeat; 
	 background-size: 22px 26px; 
	 background-position: right; 
	line-height: 1;
	letter-spacing: 0;
	font-weight: 300;
}
#img_back{
			height:60px;
			width:100px;
			background:url("images/arrow.gif") no-repeat;
			background-size:100% 100%;
			position:absolute;left:180px;top:45%;
			cursor:pointer;
		}
	#logo{
			height:80px;
			width:230px;
			background:url("images/logo_lightGreen.png") no-repeat;
			background-size:100% 100%;
			position:absolute;left:20px;top:5%;
			cursor:pointer;
	}
		</style>
  </head>
  <body>
  <div id="logo"></div>
  <script type="text/javascript">
  	$("#logo").click(function(){window.location.href="/yuanJu/index.jsp"});
  </script>
 <div id="img_back"></a></div>
  <script type="text/javascript">
  	$("#img_back").click(function(){window.location.href="/yuanJu/ShowOrNotServlet"});
  </script>
  <div class="logina-logo" style="height: 55px">
            <div id="venusLogo"><p><span>留住记忆</span></p></div>
        </div>
  	<form action="">
  		<div id="demo" class="demo" style="margin-top:80px;"></div>
  		<!-- <textarea name="des" id="editor" placeholder="请输入描述内容..."></textarea> -->
  	</form>
  	
  </body>

</html>
