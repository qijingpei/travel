<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- uediter的测试输出jsp -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ueditertest.jsp' starting page</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
	<!-- 加载uediter.uparse.js -->
    <script src="<c:url value='/js/ueditor.parse.js'/>"></script>
  </head>
  
  <body>
	<div id="content">
		${content }
	</div>
	
  </body>
</html>
