<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<link href="<c:url value='/css/style.css'/>" rel="stylesheet" type="text/css" media="all"/>
</head>
  
  <body>
    <!--footer start here-->
<div class="footer">
	<div class="container">
		<div  class="footer-main">
			<p>年轻，就要去旅行</p>
            <p>© 2015 Mafengwo.cn 京ICP备11015476号 京公网安备110105013401号 京ICP证110318号 新出网证(京)字242号</p>
			<p>全国统一客服电话：4006-345-678网站地图</p>
		</div>
	</div>
</div>
<!--footer end here-->
  </body>
</html>
