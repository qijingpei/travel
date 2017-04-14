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
<title>注册</title>
<link href="<c:url value='/css/style_login_regist.css'/>" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Nature Sign In Form,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
	<h1>&nbsp;&nbsp;Don't fear the unknown！</h1>
		<div class="app-nature">
			<div class="nature"><img src="<c:url value='/images/bg.png'/>" class="img-responsive" alt="" /></div>
			
			  
			<form action="<c:url value='/UserServlet'/>" method="post"> 
	        <input type="hidden" name="method" value="regist"/>    
			
				 <h4>${msg }</h4>
				<!-- 增加换行符 和错误显示-->
				<input type="text" class="text" name="username" value="${form.username}" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-mail address';}" >
				<span style="color: red; font-weight: 900">${errors.username}</span>
				<br/>
				<input type="password" name="password" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}">
				<span style="color: red; font-weight: 900">${errors.password}</span>
				<br/>
				<input type="password" name="certainpassword" value="确认密码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '确认密码';}">
			
				<span style="color: red; font-weight: 900">${errors.certainpassword}</span>
				<br/>
	
	
				
				<div class="submit"><input type="submit" value="注册" ></div>
				<div class="clear"></div>
				<a href="#" class="hvr-bounce-to-bottom">先逛逛</a>
				<div class="links">
					<p><a href="#">忘记密码 ?</a></p>
					<p class="sign">已有账号?  <a href="<c:url value='/jsps/user/login.jsp'/>">登录</a></p>
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