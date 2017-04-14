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
	<title>个人中心</title>
  </head>
  <body background="#EEE">

  	<div  style="float:right;width:100px;"> 
  	<a href="<c:url value='/UserServlet?method=quit'/>" >
  	<b>注销</b> </a> </div>
	<br/><br/>
  	<a href="<c:url value='/StrategyServlet?method=findByUserid'/>"  style="margin-left:200px;font-size:28px;">
  	<b>我的攻略</b> </a>
  	<a href="<c:url value='/PartnerServlet?method=findByUserid'/>"  style="margin-left:300px;font-size:28px;">
  	<b>我的驴友招募</b> </a>
  	<br/><br/>
  	<c:forEach items="${strategyList }" var="s">
  	<div style="width:100%;height:210px;">
  		<div>
  			<a href="<c:url value='/StrategyServlet?method=load&cstid=${s.cstid }'/>">
  			<img width="300px" height="200px" style="margin-left:200px;" align="left" alt="简介图" src="<c:url value='/${s.simage }'/>"/>
  			</a>
  		</div>
  		<div style="height:150px;">
  			<span style="align:right;">
  				<br/>
  				&nbsp;&nbsp;
  				<a href="<c:url value='/StrategyServlet?method=load&cstid=${s.cstid }&cityid=${s.city.cityid }'/>">
  				标题：${s.title }<br/>
  				</a>
  				&nbsp;&nbsp; 最后发表时间：${s.time }<br/>
  				&nbsp;&nbsp; 浏览量：${s.pageview }<br/>
  			</span>
  		</div>
  		<div style="height:50px;">
  			&nbsp;&nbsp;&nbsp;&nbsp; <a href="<c:url value='/StrategyServlet?method=editPre&cstid=${s.cstid }&cityid=${s.city.cityid }'/>">修改</a>
  			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  			&nbsp;&nbsp; <a href="<c:url value='/StrategyServlet?method=delete&cstid=${s.cstid }'/>">删除</a>
  		</div>
  		
  	</div>
  	<hr/>
  	<br/>
  	</c:forEach>
  
    
  </body>
</html>
