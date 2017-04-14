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

  </head>
  	<br/><br/>
  	<c:forEach items="${strategyList }" var="s">
  	<div style="width:100%;height:200px;">
  		<div>
  			<a href="<c:url value='/StrategyServlet?method=load&cstid=${s.cstid }'/>">
  			<img width="300px" height="200px" style="margin-left:200px;" align="left" alt="简介图" src="<c:url value='/${s.simage }'/>"/>
  			</a>
  		</div>
  		<div>
  			<span style="align:right;">
  				<br/>
  				&nbsp;&nbsp;
  				<a href="<c:url value='/StrategyServlet?method=load&cstid=${s.cstid }&cityid=${s.city.cityid }'/>">
  				标题：${s.title }<br/>
  				</a>
  				&nbsp;&nbsp; 发表时间：${s.time }<br/>
  				&nbsp;&nbsp; 浏览量：${s.pageview }<br/>
  				&nbsp;&nbsp; <a href="<>">城市：${s.city.name }</a>	&nbsp;&nbsp;&nbsp;&nbsp;
  				&nbsp;&nbsp; 作者:${s.user.username }		
  			</span>
  		</div>
  	</div>
  	<hr/>
  	<br/>
  	</c:forEach>
  <body>
    
  </body>
</html>
