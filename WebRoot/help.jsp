<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title>添加</title>
<link href="<c:url value='/adminjsps/umeditor/edit.css'/>" type="text/css" rel="stylesheet">
<link href="<c:url value='/adminjsps/umeditor/themes/default/css/umeditor.css'/>" type="text/css"
	rel="stylesheet">
<script type="text/javascript" src="<c:url value='/adminjsps/umeditor/third-party/jquery.min.js'/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value='/adminjsps/umeditor/umeditor.config.js'/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value='/adminjsps/umeditor/umeditor.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/adminjsps/umeditor/lang/zh-cn/zh-cn.js'/>"></script>

</head>
<body>
	<h1>添加公告</h1>

	<form action="<c:url value='/admin/AdminNoticeServlet'/>" method="post">
		<input type="hidden" name="method" value="addNotice"/>
		<div class="input_info">
			标题：<input class="input_title" type="text" name="notice_title"/><br />
			作者：<input class="input_title" type="text" name="notice_author"/>
		</div>

		<!--style给定宽度可以影响编辑器的最终宽度-->
		<script type="text/plain" id="myEditor"
			style="width:800px;height:300px;">
    <p>这里我可以写一些输入提示</p>
		</script>
		<div class="clear"></div>
		<input type="text" id="content" style="display:none;" name="notice_content" value=""/>
		<input class="button" type="submit" onclick="getContent();" value="发表" />

	</form>
		<script type="text/javascript">
		//实例化编辑器
		var um = UM.getEditor('myEditor');
		um.addListener('blur', function() {
			$('#focush2').html('编辑器失去焦点了1')
		});
		um.addListener('focus', function() {
			$('#focush2').html('')
		});
		//按钮的操作
		function insertHtml() {
			var value = prompt('插入html代码', '');
			um.execCommand('insertHtml', value)
		}
		function isFocus() {
			alert(um.isFocus())
		}
		function doBlur() {
			um.blur()
		}
		function getContent() {
		
			$("#content").val(UM.getEditor('myEditor').getContent());
		}
		
</script>

</body>
</html>		
