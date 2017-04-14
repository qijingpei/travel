<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>登录</title>
<link href="<c:url value='/css/style_login_regist.css'/>" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Nature Sign In Form,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<!-- <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 -->
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
	<h1>&nbsp;&nbsp;Don't fear the unknown！</h1>
		<div class="app-nature">
			<div class="nature"><img src="<c:url value='/images/bg.png'/>" class="img-responsive" alt="" /></div>
			<form method="post" action="<c:url value='/UserServlet?method=login'/>">
				${msg }
				<input type="text" name="username" autocomplete="off" class="text" value="${form.username }"   >
				${errors.username }
				<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
				${errors.password }
				<div class="submit"><input type="submit"  value="登录" ></div>
				<div class="clear"></div>
				<a href="<c:url value='/jsps/user/regist.jsp'/>" class="hvr-bounce-to-bottom">注册</a>
				<div class="links">
					<p><a href="#">忘记密码?</a></p>
					<p class="sign"> <a href="<c:url value='/adminjsps/login.jsp'/>">后台登录</a></p>
					<div class="clear"></div>
				</div>
			
			</form>
		</div>
	<!--start-copyright-->
   		<div class="copy-right">
				<p>Copyright &copy; 2015  All rights  Reserved | Template by &nbsp;旅游帮大学生旅游网</p>
		</div>
	<!--//end-copyright-->
</body>
</html>