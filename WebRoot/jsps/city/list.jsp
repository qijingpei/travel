<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../top.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
  </head>
  
  <body>
    <br/><br/>
  	<c:forEach items="${cityList }" var="city">
  	<div style="width:100%;height:200px;">
  		<div>
  			<a href="<c:url value='/CityServlet?method=load&cityid=${city.cityid }'/>">
  			<img width="300px" height="200px" style="margin-left:200px;" align="left" alt="简介图" src="<c:url value='/${city.image }'/>"/>
  			</a>
  		</div>
  		<div>
  			<span style="align:right;">
  				<br/>
  				&nbsp;&nbsp;
  				<a href="<c:url value='/CityServlet?method=load&cityid=${city.cityid }'/>">
  				${city.name}<br/><br/>
  				</a>
  				&nbsp;&nbsp; 介绍：：${city.introduce}<br/>	
  			</span>
  		</div>
  	</div>
  	<hr/>
  	<br/>
  	</c:forEach>
  </body>
</html>
