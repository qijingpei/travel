<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<!--导航栏和大图轮播用了模板：
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<html>
<head>
<title></title>
<link href="<c:url value='/css/bootstrap.css'/>" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value='/js/jquery.min.js'/>"></script>
<!-- Custom Theme files -->
<link href="<c:url value='/css/style.css'/>" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }>
</script>
<meta name="keywords" content="Trip Way Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="<c:url value='/js/move-top.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/easing.js'/>"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
<!-- //end-smoth-scrolling -->
<!--pop-up-box-->
					  <script type="text/javascript" src="js/modernizr.custom.53451.js"></script>  
					<link href="<c:url value='/css/popup-box.css'/>" rel="stylesheet" type="text/css" media="all">
					<script src="<c:url value='/js/jquery.magnific-popup.js'/>" type="text/javascript"></script>
<!--pop-up-box-->
</head>
<body>
<!--header start here-->
<div class="header">
	<div class="container">
		<div class="header-main">
			<div class="header-left">
				<div class="logo">
					<a href="<c:url value='/index.jsp'/>" target="_top"><h1>穷游生</h1></a>
				</div>
				<div class="top-nav">
			<ul class="res"> 
				<li><a href="<c:url value='/index.jsp'/>" target="_top">首页</a></li>
				<li><a href="<c:url value='/CityServlet?method=findAll'/> "target="_blank">目的地</a></li>
				<li><a href="<c:url value='/TravelItemServlet?method=findAll'/> "target="_blank">跟团游</a></li>
                <li><a href="<c:url value='/StrategyServlet?method=findAll'/>"target="_blank">旅游攻略</a></li>
				<li><a href="<c:url value='/PartnerServlet?method=findAll'/>"target="_blank">同行</a></li>
				<li><a href="<c:url value='/StrategyServlet?method=addPre'/>"target="_blank">发攻略</a></li>		
			</ul>
		</div>
			</div>
			<div class="header-right">
			   <div class="search">
			   	  <form action="<c:url value='/CityServlet?method=findByCityname'/>" method="post" target="_blank">
					<input type="text"  name="cityname" value="搜一下，马上出发" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '搜一下，马上出发';}"/>
					<input type="submit"  value=""/>
				  </form>
				</div>
			</div>
			
			<div class="header-user">
				<c:choose>
					<c:when test="${empty session_user }">
						<div style="margin-top:6px;">
						<a style="color:#B22222;" href="<c:url value='/jsps/user/login.jsp'/>" target="_top">登录/注册</a>
						</div>
					</c:when>
					<c:otherwise>
						<a href="<c:url value='/StrategyServlet?method=findByUserid'/>"> 
						<img style="width:42px; height:42px; border-radius:50%; overflow:hidden;" src="<c:url value='/images/chenkun.jpg'/>"><img/></a>
					</c:otherwise>
				</c:choose>
			</div>			
		</div>
	</div>
</div>
<!--header end here-->
</body>
</html>
