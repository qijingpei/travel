<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>修改城市</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="<c:url value='/ueditor/themes/default/css/umeditor.css'/>" type="text/css" rel="stylesheet">
    <link href="<c:url value='/ueditor/themes/default/css/iframe.css'/>" type="text/css" rel="stylesheet">
    
    <script type="text/javascript" src="<c:url value='/ueditor/third-party/jquery.min.js'/>"></script>
    <script type="text/javascript" charset="utf-8" src="<c:url value='/ueditor/umeditor.config.js'/>"></script>
    <script type="text/javascript" charset="utf-8" src="<c:url value='/ueditor/umeditor.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/ueditor/lang/zh-cn/zh-cn.js'/>"></script>
    <style type="text/css">
    	img {  
 			max-width: 100%; /*图片自适应宽度*/  
		}  
        h1{
            font-family: "微软雅黑";
            font-weight: normal;
        }
        .btn {
            display: inline-block;
            *display: inline;
            padding: 4px 12px;
            margin-bottom: 0;
            *margin-left: .3em;
            font-size: 14px;
            line-height: 20px;
            color: #333333;
            text-align: center;
            text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
            vertical-align: middle;
            cursor: pointer;
            background-color: #f5f5f5;
            *background-color: #e6e6e6;
            background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6));
            background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
            background-repeat: repeat-x;
            border: 1px solid #cccccc;
            *border: 0;
            border-color: #e6e6e6 #e6e6e6 #bfbfbf;
            border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
            border-bottom-color: #b3b3b3;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#ffe6e6e6', GradientType=0);
            filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
            *zoom: 1;
            -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
            -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
        }

        .btn:hover,
        .btn:focus,
        .btn:active,
        .btn.active,
        .btn.disabled,
        .btn[disabled] {
            color: #333333;
            background-color: #e6e6e6;
            *background-color: #d9d9d9;
        }

        .btn:active,
        .btn.active {
            background-color: #cccccc \9;
        }

        .btn:first-child {
            *margin-left: 0;
        }

        .btn:hover,
        .btn:focus {
            color: #333333;
            text-decoration: none;
            background-position: 0 -15px;
            -webkit-transition: background-position 0.1s linear;
            -moz-transition: background-position 0.1s linear;
            -o-transition: background-position 0.1s linear;
            transition: background-position 0.1s linear;
        }

        .btn:focus {
            outline: thin dotted #333;
            outline: 5px auto -webkit-focus-ring-color;
            outline-offset: -2px;
        }

        .btn.active,
        .btn:active {
            background-image: none;
            outline: 0;
            -webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
            -moz-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
        }

        .btn.disabled,
        .btn[disabled] {
            cursor: default;
            background-image: none;
            opacity: 0.65;
            filter: alpha(opacity=65);
            -webkit-box-shadow: none;
            -moz-box-shadow: none;
            box-shadow: none;
        }
    </style>
</head>
<body>
<div>
<br/>
<div class="submit" style="margin-left:50px;">
<form action="<c:url value='/AdminCityServlet'/>" method="post">
<input type="hidden" name="method" value="add"/>
城市名：<input type="text" style="width:200px; height:25px;" name="name" value="${city.name }"/>
<br/><br/>
城市介绍：<input type="text" style="width:680px; height:100px;" name="introduce" value="${city.introduce }"/>
<br/><br/>
城市图片：<br/>
<!--style给定宽度可以影响编辑器的最终宽度-->
<script type="text/plain" id="myEditor" style="width:680px;height:500px;">
    ${content}${city.image}
</script>
<input type="text" id="content" style="display:none;" name="content" value=""/>
<br/>
<input style="align:middle;" type="submit" name="submit" onclick="getContent()" value="保存"  />
</form>
</div>

<div class="clear"></div>

<div>
    <h3 id="focush2"></h3>
</div>

<script type="text/javascript">
    //实例化编辑器
    var um = UM.getEditor('myEditor');

    
    //获取输入的内容，将它的代码（包括排版格式+文字+图片的保存位置）放入到content这个参数中，好传给servlet
	function getContent() {
		
		$("#content").val(UM.getEditor('myEditor').getContent());
	}
</script>
</div>
</body>
</html>