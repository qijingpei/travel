<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'desc.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div style="width:100%;height:200px;">
  		<div>
  			<img width="300px" height="200px" style="margin-left:200px;" align="left" alt="简介图" src="<c:url value='/${city.image }'/>"/>
  		</div>
  		<div>
  			<span style="align:right;">
  				<br/>
  				&nbsp;&nbsp;
  				城市名称：${city.name}<br/><br/>
  				&nbsp;&nbsp; 介绍：${city.introduce}<br/>	
  			</span>
  		</div>
  	</div>
  </body>
</html>
