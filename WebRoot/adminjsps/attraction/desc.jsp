<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'attractiondesc.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		font-size: 10pt;
		background: rgb(254,238,189);
	}
	div {
		margin:20px;
		border: solid 2px gray;
		width: 150px;
		height: 150px;
		text-align: center;
	}
	li {
		margin: 10px;
	}
</style>
<script type="text/javascript">
	function setMethod(method) {
		var ele = document.getElementById("method");
		ele.value = method;
	}
</script>
  </head>
  
  <body>
  <div>
    <img width="300px" height="200px" src="<c:url value='/${attraction.image }'/>" border="0"/>
  </div>
  <form style="margin:20px;" id="form" action="<c:url value='/AdminAttractionServlet'/>" method="post">
  	<input type="hidden" name="method" value="" id="method"/>
  	<input type="hidden" name="cityid" value="1" />
  	<input type="hidden" name="attid" value="${attraction.attid }"/>
  	<input type="hidden" name="image" value="${attraction.image }"/><br/><br/>
  	景点名称：<input type="text" name="name" value="${attraction.name }"/><br/>
  	景点位置：<input type="text" name="position" value="${attraction.position }"/><br/>
  	景点介绍：<input type="text" name="introduce" value="${attraction.introduce }"/><br/>
  	所属城市：<select style="width: 150px; height: 20px;" name="cid">
<c:forEach items="${cityList }" var="c">
     		<option value="${c.cityid }" <c:if test="${c.cityid eq attraction.city.cityid }">selected="selected"</c:if>  >${c.name }</option>
</c:forEach>
    	</select><br/>
  	<input type="submit" value="删除" onclick="setMethod('delete')"/>
  	<input type="submit" value="编辑" onclick="setMethod('edit')"/>
  </form>
  </body>
</html>
