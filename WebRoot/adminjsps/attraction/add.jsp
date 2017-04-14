<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加景点</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {background: rgb(254,238,189);}
</style>
  </head>
  
  <body>
    <h1>添加景点</h1>
    <p style="font-weight: 900; color: red">${msg }</p>
    <form action="<c:url value='/AdminAddAttractionServlet'/>" method="post" enctype="multipart/form-data">
    	景点名称：<input style="width: 150px; height: 20px;" type="text" name="name"/><br/>
    	景点图片：<input style="width: 223px; height: 20px;" type="file" name="image"/><br/>
    	景点位置：<input style="width: 150px; height: 20px;" type="text" name="position"/><br/>
    	景点介绍：<input style="width: 150px; height: 20px;" type="text" name="introduce"/><br/>
    	所属城市：<input style="width: 150px; height: 20px;" type="text" name="cityid"/><br/>
    	<br/>
    	<input type="submit" value="添加景点"/>
    </form>
  </body>
</html>
