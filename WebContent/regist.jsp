<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="net.jvsun.model.*"%>
<%@page import="net.jvsun.dao.*"%>
<%@page import="net.jvsun.tools.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/jyent.css" rel="stylesheet" type="text/css" />
<link href="css/jedate.css" rel="stylesheet" type="text/css" />
<script src="script/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="js/jquery.jedate.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<script type="text/javascript">
		$(function(){
			var compareCodeBtn_click_times = 1;
			var getCodeBtn_click_times = 1;
			/*匹配专属码*/
			$("#compareCodeBtn").click(function fn_1(){
				compareCodeBtn_click_times++;
				if(compareCodeBtn_click_times % 2 == 0){
					$("#compareCodeInput").css({
						"width": 200,
						"height": 30
					});
					$("#getCode").remove();
					$("#compareCodeBtn").after("<input type='text' name='specialCode' id='compareCode'>");
					$("#compareCodeGet").css({
						"width": 50,
						"height": 30
					});
					$("#getCode").css({"display":"none"});
				}else{
					$("#compareCodeInput").css({
						"width": 50,
						"height": 30
					});					
					$("#getCode").remove();
					$("#compareCode").remove();
				}
			});

			/*获取专属码*/
			$("#getCodeBtn").click(function fn_1(){
				getCodeBtn_click_times++;
				if(getCodeBtn_click_times % 2 == 0){
					$("#compareCodeGet").css({
						"width": 200,
						"height": 30
					});
					$("#getCodeBtn").after("<input type='text' name='specialCode' id='getCode' readonly='readonly'>");
					$("#compareCodeInput").css({
						"width": 50,
						"height": 30
					});
					$("#getCode").val(productCode());

					$("#compareCode").remove();
					
				}else{
					$("#compareCodeGet").css({
						"width": 50,
						"height": 30
					});
					$("#getCode").remove();
					$("#compareCode").remove();
				}
			});

			/*生成专属码*/
			function productCode(){
				var specialCodeArray = 
				[
					'1','2','3','4','5','6','7','8','9','0',
					'a','b','c','d','e','f','g','h','i','j',
					'k','l','m','n','o','p','q','r','s','t',
					'u','v','w','x','y','z',
					'A','B','C','D','E','F','G','H','I','J',
					'K','L','M','N','O','P','Q','R','S','T',
					'U','V','W','X','Y','Z'
				];
				var specialCode = "";
				for(var i = 0 ; i < 9 ; i++){
					specialCode = specialCode + specialCodeArray[[Math.floor(Math.random() * 62)]] ;
				}
				return specialCode;
			}
			
			
		});
</script>
</head>
<body class="bg1">
<%
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		User user = new User();
		UserDao userDao = new UserDao();
		if ("reg".equals(action)) {
			if (userDao.isExistUser(request.getParameter("username"))) {
				out.println("<script>alert('用户已经存在');location.href=regist.jsp';</script>");
			} else {
				user.setRealname(request.getParameter("realname"));
				user.setUsername(request.getParameter("username"));
				user.setPassword(request.getParameter("password"));
				user.setSex(DataConverter.toInt(request.getParameter("sex")));
				user.setPid(DataConverter.toInt(request.getParameter("pid")));
				user.setEmail(request.getParameter("email"));
				user.setTel(DataConverter.toInt(request.getParameter("tel")));
				user.setOnly_id((request
						.getParameter("specialCode")));
				user.setOur_time(request
						.getParameter("jinianri"));
				if(userDao.insert(user) !=0){
					out.println("<script>alert('呵呵'); location.href ='regist.jsp';</script>");
				}else{
					out.println("<script>alert('注册成功，前往登陆'); location.href ='login.jsp';</script>");
				}
			}
		}
	%>
    <!--网页整体开始-->
		<div id="all">
			<!--左边内容-->
			<!-- <div id="all_left">
				<img style="margin-top: 95px;" src="images/y.png" />预留位置等作出logo
			</div> -->
			<!--左边内容结束-->
			<!--右边内容开始-->
			<div id="all_right">
				<h1 class="r_h1" style="color:#f3316b;">陪伴是最长情的告白</h1>
				<div class="r_h1_l"></div>
				<div class="r_h1_r"></div>
				<div class="r_tite">一个人一生只能注册一次，您对自己和您的伴侣有信心吗？</div>
				<div id="form1">
				<form action="regist.jsp?action=reg" method="post">
				<div class="formline" id="fist_formline">
							<div class="formline_font">我是</div>
							<div class="formline_r">
								<input type="radio" name="sex" checked="checked" value="1"/>
								<p class="seximg1"></p><p>男</p>
								<input id="radio2" type="radio" name="sex" value="0"/>
								<p class="seximg2"></p><p>女</p>
							</div>
						</div>
						<div class="formline">
							<div class="formline_font">姓名</div>
							<div class="formline_r">
								<input type="text" name="realname" id="textlong"/>
							</div>
						</div>
						<div class="formline">
							<div class="formline_font">昵称</div>
							<div class="formline_r">
								<input type="text" name="username" id="textlong" />
							</div>
						</div>
						<div class="formline">
							<div class="formline_font">密码</div>
							<div class="formline_r">
								<input id="textlong" type="password"  name="password"/>
							</div>
						</div>
						<div class="formline">
							<div class="formline_font">身份证号码</div>
							<div class="formline_r">
								<input type="text" name="pid" id="textlong"/>
							</div>
						</div>
						<div class="formline">
							<div class="formline_font">专属码</div>
							<div class="formline_r">
							<div class="compareCodeInput" id="compareCodeInput">
								<a class="compareCodeBtn u-btn u-btn-c4" id="compareCodeBtn">匹&nbsp;配</a>
							</div>
							<div class="compareCodeGet" id="compareCodeGet">
								<a class="getCodeBtn u-btn u-btn-c4" id="getCodeBtn">获&nbsp;取</a>
							</div>
							</div>
						</div>
						<div class="formline">
							<hr style="border:1px dashed #DDDDDD; width=100px; margin-left: 50px; margin-top:-10px;">
							<a href=""><p id="SmallFont">以下是非必填信息，完善信息可以让我们更好的为您服务！</p></a>
						</div>
						<div class="formline">
							<div class="formline_font">手机号码</div>
							<div class="formline_r">
								<input type="text" name="tel" id="textlong"/>
							</div>
						</div>
						<div class="formline">
							<div class="formline_font">邮箱</div>
							<div class="formline_r">
								<input type="email" name="email" id="textlong" />
							</div>
						</div>
						
						<div class="formline">
							<div class="formline_font">纪念日</div>
							<div class="formline_r">
								<input type="datetime" name="jinianri" id="date" />
							</div>
						</div>
						<input type="hidden" name="nowtime"id="nowtime" value="1111-11-11 11:21:11" />
						<input id="zhucebut" type="submit" value=""/>
					</form>
			</div>
				<div id="banquan">终身伴侣 &copy; 2003-2016 版权所有</div>
			</div>

		</div>
		<!--网页整体结束-->
		<script src="js/classie.js"></script>
	<script src="js/selectFx.js"></script>
	<script src="js/fullscreenForm.js"></script>
	<script>


        $("#date").jeDate({
            format:"YYYY-MM-DD",
            isTime:false,
            minDate:"1949-10-10 00:00:00"
        });
		</script>
	</body>
	
</html>