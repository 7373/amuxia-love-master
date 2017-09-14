<%@page import="net.jvsun.tools.Utilty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="net.jvsun.model.*" %>
<%@page import="net.jvsun.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="css/login.css">

</head>
<body>
	<div class="logina-logo" style="height: 55px">
            <div id="venusLogo"><p><span>终身伴侣</span></p></div>
        </div>
        <div class="logina-main main clearfix">
            <div class="tab-con">
                <form action="/yuanJu/UserServlet?action=log" method="post">
                    <div id='login-error' class="error-tip"></div>
                    <table border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <th>账户</th>
                                <td width="245">
                                    <input type="text" name="username" id="username" placeholder="昵称" /> 
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <th>密码</th>
                                <td width="245">
                                    <input type="password" name="password" id="password" placeholder="密码" />
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
         						<th></th>
                                <td width="245"><input class="confirm" type="submit" value="登  录"></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
            <div class="reg">
                <p>还没有账号？<br>赶快免费注册一个吧！</p>
                <a class="reg-btn" href="frist.jsp">立即免费注册</a>
            </div>
        </div>
        <div id="footer">
            <div class="copyright">Copyright © 终身伴侣 版权所有</div>
        </div>   
</body>
</html>