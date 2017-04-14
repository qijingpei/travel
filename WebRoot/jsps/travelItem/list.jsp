<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../top.jsp"></c:import>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style>
a:link {text-decoration:none; color:#000;}
a:visited {text-decoration:none; color:#000;}
a:hover {text-decoration:underline; color:#000;}
a:active {text-decoration:none; color:#000;}
ul li{  
list-style-type:none;  
}
b { font-family:'MingLiU 11px';}<!--11px 清晰中文字体 -->
</style>
</head>
<body >
	<div style="background-color:#EEE; width:100%; height:768px; ">
    <div clasee="rementuijian" style="margin-left:150px;"><!--热门推荐 这几个字 -->
    	<b style=" font-family:'微软雅黑'; font-size:24px; letter-spacing:5px; margin-top:20px; ">热门推荐</b>
    </div>
    <div clasee="travelItems" style="width:100%; height:auto;">
    <ul style="list-sytle:none"> 
    	
        
        <c:forEach items="${travelItemList }" var="t">
        	<li style="float:left;">
    		<!-- 一个旅游团报项目 -->
			<div class="travelItem" style=" background-color:#FFF; margin-left:110px;margin-top:20px; width:270px; height:290px;">
    		<a href="<c:url value='/TravelItemServlet?method=load&titid=${t.titid }'/>">
    		<img src="<c:url value='/${t.simage }'/>"  width=270px; height=170px;/>
        	<center style=" margin-top:10px;"><b>${t.title }</b></center>
        	<center style=" margin-top:7px;">${t.startPlace } ——> ${t.endPlace }</center>
        	<center style=" margin-top:7px;"><b>出发时间:</b>${t.startTime }	 <b>共:</b>${t.days }天 </center>
        	<center style=" margin-top:7px;"><b>关注人数:</b>234人  <b>价格：</b>${t.price }元</center>
    		</a>
   		</div>
        </li>
        </c:forEach>
        
        
        
    </ul>       
   	 </div>
    </div>
</body>
</html>
