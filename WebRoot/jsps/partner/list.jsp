<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>同行驴友-穷游生 </title>
<meta name="keywords" content="结伴" />

<script type="text/javascript">
window.Env = {"WWW_HOST":"www.mafengwo.cn","IMG_HOST":"images.mafengwo.net","P_HOST":"passport.mafengwo.cn","P_HTTP":"https:\/\/passport.mafengwo.cn","UID":87237915,"CSTK":"690947480005048355d3d17ebafc63b0_39958e0e4dfbbf0f6ae92ca2e797fc27"};
</script>

<link href="<c:url value='/css/partner_01.css'/>" rel="stylesheet" type="text/css"/>

<link href="<c:url value='/css/partner_02.css'/>" rel="stylesheet" type="text/css"/>


<script language="javascript" src="<c:url value='/js/partner_01.js'/>" type="text/javascript"></script>

</head>
<body>
<iframe width="100%" height="61px" scrolling="no" frameborder="0" 
	src="<c:url value='/jsps/top.jsp'/>">
</iframe>
<input id="_j_all_mdd_data" type="hidden" data-mddlist="[{&quot;name&quot;:&quot;\u5883\u5185\u7cbe\u9009&quot;,&quot;0&quot;:{&quot;name&quot;:&quot;\u4e91\u5357&quot;,&quot;num&quot;:&quot;243&quot;,&quot;mddid&quot;:12711},&quot;1&quot;:{&quot;name&quot;:&quot;\u4e3d\u6c5f&quot;,&quot;num&quot;:&quot;123&quot;,&quot;mddid&quot;:10186},&quot;2&quot;:{&quot;name&quot;:&quot;\u6cf8\u6cbd\u6e56&quot;,&quot;num&quot;:&quot;35&quot;,&quot;mddid&quot;:10121},&quot;3&quot;:{&quot;name&quot;:&quot;\u9999\u683c\u91cc\u62c9&quot;,&quot;num&quot;:&quot;35&quot;,&quot;mddid&quot;:10482},&quot;4&quot;:{&quot;name&quot;:&quot;\u5927\u7406&quot;,&quot;num&quot;:&quot;116&quot;,&quot;mddid&quot;:10487},&quot;5&quot;:{&quot;name&quot;:&quot;\u96e8\u5d29&quot;,&quot;num&quot;:&quot;19&quot;,&quot;mddid&quot;:12141},&quot;6&quot;:{&quot;name&quot;:&quot;\u675f\u6cb3&quot;,&quot;num&quot;:&quot;1&quot;,&quot;mddid&quot;:10018},&quot;7&quot;:{&quot;name&quot;:&quot;\u6606\u660e&quot;,&quot;num&quot;:&quot;44&quot;,&quot;mddid&quot;:10807},&quot;8&quot;:{&quot;name&quot;:&quot;\u817e\u51b2&quot;,&quot;num&quot;:&quot;3&quot;,&quot;mddid&quot;:10651},&quot;9&quot;:{&quot;name&quot;:&quot;\u82e5\u5c14\u76d6&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10564},&quot;10&quot;:{&quot;name&quot;:&quot;\u897f\u85cf&quot;,&quot;num&quot;:&quot;139&quot;,&quot;mddid&quot;:12700},&quot;11&quot;:{&quot;name&quot;:&quot;\u62c9\u8428&quot;,&quot;num&quot;:&quot;68&quot;,&quot;mddid&quot;:10442},&quot;12&quot;:{&quot;name&quot;:&quot;\u963f\u91cc&quot;,&quot;num&quot;:&quot;3&quot;,&quot;mddid&quot;:10073},&quot;13&quot;:{&quot;name&quot;:&quot;\u7eb3\u6728\u9519&quot;,&quot;num&quot;:&quot;7&quot;,&quot;mddid&quot;:10417},&quot;14&quot;:{&quot;name&quot;:&quot;\u5ddd\u85cf\u5357\u7ebf&quot;,&quot;num&quot;:&quot;120&quot;,&quot;mddid&quot;:10517},&quot;15&quot;:{&quot;name&quot;:&quot;\u6797\u829d&quot;,&quot;num&quot;:&quot;17&quot;,&quot;mddid&quot;:10814},&quot;16&quot;:{&quot;name&quot;:&quot;\u58a8\u8131&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10079},&quot;17&quot;:{&quot;name&quot;:&quot;\u65e5\u5580\u5219&quot;,&quot;num&quot;:&quot;12&quot;,&quot;mddid&quot;:11474},&quot;18&quot;:{&quot;name&quot;:&quot;\u5c71\u5357&quot;,&quot;num&quot;:&quot;3&quot;,&quot;mddid&quot;:11606},&quot;19&quot;:{&quot;name&quot;:&quot;\u73e0\u7a46\u6717\u739b\u5cf0&quot;,&quot;num&quot;:&quot;4&quot;,&quot;mddid&quot;:10811},&quot;20&quot;:{&quot;name&quot;:&quot;\u56db\u5ddd&quot;,&quot;num&quot;:&quot;104&quot;,&quot;mddid&quot;:12703},&quot;21&quot;:{&quot;name&quot;:&quot;\u6210\u90fd&quot;,&quot;num&quot;:&quot;43&quot;,&quot;mddid&quot;:10035},&quot;22&quot;:{&quot;name&quot;:&quot;\u7a3b\u57ce&quot;,&quot;num&quot;:&quot;8&quot;,&quot;mddid&quot;:10061},&quot;23&quot;:{&quot;name&quot;:&quot;\u8272\u8fbe&quot;,&quot;num&quot;:&quot;27&quot;,&quot;mddid&quot;:10011},&quot;24&quot;:{&quot;name&quot;:&quot;\u4e5d\u5be8\u6c9f&quot;,&quot;num&quot;:&quot;13&quot;,&quot;mddid&quot;:10136},&quot;25&quot;:{&quot;name&quot;:&quot;\u725b\u80cc\u5c71&quot;,&quot;num&quot;:&quot;13&quot;,&quot;mddid&quot;:17315},&quot;26&quot;:{&quot;name&quot;:&quot;\u56db\u59d1\u5a18\u5c71&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:10134},&quot;27&quot;:{&quot;name&quot;:&quot;\u5ce8\u7709\u5c71&quot;,&quot;num&quot;:&quot;8&quot;,&quot;mddid&quot;:10143},&quot;28&quot;:{&quot;name&quot;:&quot;\u4e9a\u4e01&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:10091},&quot;29&quot;:{&quot;name&quot;:&quot;\u963f\u575d&quot;,&quot;num&quot;:&quot;22&quot;,&quot;mddid&quot;:11642},&quot;30&quot;:{&quot;name&quot;:&quot;\u5317\u4eac&quot;,&quot;num&quot;:&quot;27&quot;,&quot;mddid&quot;:10065},&quot;31&quot;:{&quot;name&quot;:&quot;\u798f\u5efa&quot;,&quot;num&quot;:&quot;30&quot;,&quot;mddid&quot;:12871},&quot;32&quot;:{&quot;name&quot;:&quot;\u53a6\u95e8&quot;,&quot;num&quot;:&quot;25&quot;,&quot;mddid&quot;:10132},&quot;33&quot;:{&quot;name&quot;:&quot;\u9f13\u6d6a\u5c7f&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:12522},&quot;34&quot;:{&quot;name&quot;:&quot;\u6b66\u5937\u5c71&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10039},&quot;35&quot;:{&quot;name&quot;:&quot;\u798f\u5dde&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:11498},&quot;36&quot;:{&quot;name&quot;:&quot;\u7518\u8083&quot;,&quot;num&quot;:&quot;18&quot;,&quot;mddid&quot;:13295},&quot;37&quot;:{&quot;name&quot;:&quot;\u6566\u714c&quot;,&quot;num&quot;:&quot;9&quot;,&quot;mddid&quot;:10240},&quot;38&quot;:{&quot;name&quot;:&quot;\u7518\u5357&quot;,&quot;num&quot;:&quot;4&quot;,&quot;mddid&quot;:10076},&quot;39&quot;:{&quot;name&quot;:&quot;\u5170\u5dde&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:10783},&quot;40&quot;:{&quot;name&quot;:&quot;\u5f20\u6396&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:11340},&quot;41&quot;:{&quot;name&quot;:&quot;\u9752\u6d77&quot;,&quot;num&quot;:&quot;19&quot;,&quot;mddid&quot;:12788},&quot;42&quot;:{&quot;name&quot;:&quot;\u9752\u6d77\u6e56&quot;,&quot;num&quot;:&quot;10&quot;,&quot;mddid&quot;:10799},&quot;43&quot;:{&quot;name&quot;:&quot;\u9752\u6d77&quot;,&quot;num&quot;:&quot;19&quot;,&quot;mddid&quot;:12788},&quot;44&quot;:{&quot;name&quot;:&quot;\u897f\u5b81&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:10800},&quot;45&quot;:{&quot;name&quot;:&quot;\u53ef\u53ef\u897f\u91cc&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10055},&quot;46&quot;:{&quot;name&quot;:&quot;\u6e56\u5357&quot;,&quot;num&quot;:&quot;18&quot;,&quot;mddid&quot;:13732},&quot;47&quot;:{&quot;name&quot;:&quot;\u51e4\u51f0&quot;,&quot;num&quot;:&quot;3&quot;,&quot;mddid&quot;:10024},&quot;48&quot;:{&quot;name&quot;:&quot;\u5f20\u5bb6\u754c&quot;,&quot;num&quot;:&quot;10&quot;,&quot;mddid&quot;:10267},&quot;49&quot;:{&quot;name&quot;:&quot;\u957f\u6c99&quot;,&quot;num&quot;:&quot;6&quot;,&quot;mddid&quot;:10466},&quot;50&quot;:{&quot;name&quot;:&quot;\u5cb3\u9633&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:14104},&quot;51&quot;:{&quot;name&quot;:&quot;\u9655\u897f&quot;,&quot;num&quot;:&quot;29&quot;,&quot;mddid&quot;:13083},&quot;52&quot;:{&quot;name&quot;:&quot;\u897f\u5b89&quot;,&quot;num&quot;:&quot;27&quot;,&quot;mddid&quot;:10195},&quot;53&quot;:{&quot;name&quot;:&quot;\u534e\u5c71&quot;,&quot;num&quot;:&quot;3&quot;,&quot;mddid&quot;:10577},&quot;54&quot;:{&quot;name&quot;:&quot;\u54b8\u9633&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:18372},&quot;55&quot;:{&quot;name&quot;:&quot;\u5ef6\u5b89&quot;,&quot;num&quot;:&quot;1&quot;,&quot;mddid&quot;:11349},&quot;56&quot;:{&quot;name&quot;:&quot;\u4e0a\u6d77&quot;,&quot;num&quot;:&quot;11&quot;,&quot;mddid&quot;:10099},&quot;57&quot;:{&quot;name&quot;:&quot;\u9ed1\u9f99\u6c5f&quot;,&quot;num&quot;:&quot;258&quot;,&quot;mddid&quot;:16712},&quot;58&quot;:{&quot;name&quot;:&quot;\u54c8\u5c14\u6ee8&quot;,&quot;num&quot;:&quot;219&quot;,&quot;mddid&quot;:10068},&quot;59&quot;:{&quot;name&quot;:&quot;\u6f20\u6cb3&quot;,&quot;num&quot;:&quot;115&quot;,&quot;mddid&quot;:10427},&quot;60&quot;:{&quot;name&quot;:&quot;\u96ea\u4e61&quot;,&quot;num&quot;:&quot;85&quot;,&quot;mddid&quot;:10127},&quot;61&quot;:{&quot;name&quot;:&quot;\u4f0a\u6625&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:11473},&quot;62&quot;:{&quot;name&quot;:&quot;\u6d77\u5357&quot;,&quot;num&quot;:&quot;29&quot;,&quot;mddid&quot;:12938},&quot;63&quot;:{&quot;name&quot;:&quot;\u4e09\u4e9a&quot;,&quot;num&quot;:&quot;25&quot;,&quot;mddid&quot;:10030},&quot;64&quot;:{&quot;name&quot;:&quot;\u8708\u652f\u6d32\u5c9b&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:14786},&quot;65&quot;:{&quot;name&quot;:&quot;\u6d77\u53e3&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:10513},&quot;66&quot;:{&quot;name&quot;:&quot;\u897f\u6c99\u7fa4\u5c9b&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10194},&quot;67&quot;:{&quot;name&quot;:&quot;\u6c5f\u897f&quot;,&quot;num&quot;:&quot;10&quot;,&quot;mddid&quot;:15508},&quot;68&quot;:{&quot;name&quot;:&quot;\u5a7a\u6e90&quot;,&quot;num&quot;:&quot;6&quot;,&quot;mddid&quot;:10045},&quot;69&quot;:{&quot;name&quot;:&quot;\u6b66\u529f\u5c71&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:12702},&quot;70&quot;:{&quot;name&quot;:&quot;\u5e90\u5c71&quot;,&quot;num&quot;:&quot;3&quot;,&quot;mddid&quot;:10244},&quot;71&quot;:{&quot;name&quot;:&quot;\u5357\u660c&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:11754},&quot;72&quot;:{&quot;name&quot;:&quot;\u5e7f\u897f&quot;,&quot;num&quot;:&quot;19&quot;,&quot;mddid&quot;:12810},&quot;73&quot;:{&quot;name&quot;:&quot;\u9633\u6714&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:10027},&quot;74&quot;:{&quot;name&quot;:&quot;\u6842\u6797&quot;,&quot;num&quot;:&quot;4&quot;,&quot;mddid&quot;:10095},&quot;75&quot;:{&quot;name&quot;:&quot;\u6da0\u6d32\u5c9b&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:10453},&quot;76&quot;:{&quot;name&quot;:&quot;\u5357\u5b81&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:10308},&quot;77&quot;:{&quot;name&quot;:&quot;\u6d59\u6c5f&quot;,&quot;num&quot;:&quot;13&quot;,&quot;mddid&quot;:14575},&quot;78&quot;:{&quot;name&quot;:&quot;\u897f\u5858&quot;,&quot;num&quot;:&quot;1&quot;,&quot;mddid&quot;:10010},&quot;79&quot;:{&quot;name&quot;:&quot;\u676d\u5dde&quot;,&quot;num&quot;:&quot;12&quot;,&quot;mddid&quot;:10156},&quot;80&quot;:{&quot;name&quot;:&quot;\u4e4c\u9547&quot;,&quot;num&quot;:&quot;4&quot;,&quot;mddid&quot;:10434},&quot;81&quot;:{&quot;name&quot;:&quot;\u5343\u5c9b\u6e56&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10445},&quot;82&quot;:{&quot;name&quot;:&quot;\u5185\u8499\u53e4&quot;,&quot;num&quot;:&quot;11&quot;,&quot;mddid&quot;:12720},&quot;83&quot;:{&quot;name&quot;:&quot;\u547c\u4f26\u8d1d\u5c14&quot;,&quot;num&quot;:&quot;8&quot;,&quot;mddid&quot;:10774},&quot;84&quot;:{&quot;name&quot;:&quot;\u963f\u5c14\u5c71&quot;,&quot;num&quot;:&quot;1&quot;,&quot;mddid&quot;:10390},&quot;85&quot;:{&quot;name&quot;:&quot;\u989d\u6d4e\u7eb3\u65d7&quot;,&quot;num&quot;:&quot;1&quot;,&quot;mddid&quot;:10456},&quot;86&quot;:{&quot;name&quot;:&quot;\u4e4c\u5170\u5e03\u7edf&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:17920},&quot;87&quot;:{&quot;name&quot;:&quot;\u5b89\u5fbd&quot;,&quot;num&quot;:&quot;19&quot;,&quot;mddid&quot;:12719},&quot;88&quot;:{&quot;name&quot;:&quot;\u9ec4\u5c71&quot;,&quot;num&quot;:&quot;20&quot;,&quot;mddid&quot;:10440},&quot;89&quot;:{&quot;name&quot;:&quot;\u5408\u80a5&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10793},&quot;90&quot;:{&quot;name&quot;:&quot;\u9edf\u53bf&quot;,&quot;num&quot;:&quot;4&quot;,&quot;mddid&quot;:14978},&quot;91&quot;:{&quot;name&quot;:&quot;\u4e5d\u534e\u5c71&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:11264},&quot;92&quot;:{&quot;name&quot;:&quot;\u5c71\u4e1c&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:12976},&quot;93&quot;:{&quot;name&quot;:&quot;\u9752\u5c9b&quot;,&quot;num&quot;:&quot;1&quot;,&quot;mddid&quot;:10444},&quot;94&quot;:{&quot;name&quot;:&quot;\u6cf0\u5c71&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:10284},&quot;95&quot;:{&quot;name&quot;:&quot;\u6d4e\u5357&quot;,&quot;num&quot;:&quot;1&quot;,&quot;mddid&quot;:10575},&quot;96&quot;:{&quot;name&quot;:&quot;\u5a01\u6d77&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10256},&quot;97&quot;:{&quot;name&quot;:&quot;\u5e7f\u4e1c&quot;,&quot;num&quot;:&quot;8&quot;,&quot;mddid&quot;:14674},&quot;98&quot;:{&quot;name&quot;:&quot;\u5e7f\u5dde&quot;,&quot;num&quot;:&quot;7&quot;,&quot;mddid&quot;:10088},&quot;99&quot;:{&quot;name&quot;:&quot;\u6df1\u5733&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:10198},&quot;100&quot;:{&quot;name&quot;:&quot;\u4e1c\u839e&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:12334},&quot;101&quot;:{&quot;name&quot;:&quot;\u73e0\u6d77&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10269},&quot;102&quot;:{&quot;name&quot;:&quot;\u65b0\u7586&quot;,&quot;num&quot;:&quot;15&quot;,&quot;mddid&quot;:13061},&quot;103&quot;:{&quot;name&quot;:&quot;\u5580\u7eb3\u65af&quot;,&quot;num&quot;:&quot;3&quot;,&quot;mddid&quot;:10732},&quot;104&quot;:{&quot;name&quot;:&quot;\u4e4c\u9c81\u6728\u9f50&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:10218},&quot;105&quot;:{&quot;name&quot;:&quot;\u4f0a\u7281&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:11471},&quot;106&quot;:{&quot;name&quot;:&quot;\u5317\u7586&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:10757},&quot;107&quot;:{&quot;name&quot;:&quot;\u963f\u52d2\u6cf0&quot;,&quot;num&quot;:&quot;4&quot;,&quot;mddid&quot;:18400},&quot;108&quot;:{&quot;name&quot;:&quot;\u5410\u9c81\u756a&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10469},&quot;109&quot;:{&quot;name&quot;:&quot;\u79be\u6728&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:10832},&quot;110&quot;:{&quot;name&quot;:&quot;\u5580\u4ec0&quot;,&quot;num&quot;:&quot;1&quot;,&quot;mddid&quot;:10468},&quot;111&quot;:{&quot;name&quot;:&quot;\u6e56\u5317&quot;,&quot;num&quot;:&quot;8&quot;,&quot;mddid&quot;:14731},&quot;112&quot;:{&quot;name&quot;:&quot;\u6b66\u6c49&quot;,&quot;num&quot;:&quot;8&quot;,&quot;mddid&quot;:10133},&quot;113&quot;:{&quot;name&quot;:&quot;\u6069\u65bd&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10521},&quot;114&quot;:{&quot;name&quot;:&quot;\u6b66\u5f53\u5c71&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:11257},&quot;115&quot;:{&quot;name&quot;:&quot;\u5b9c\u660c&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10490},&quot;116&quot;:{&quot;name&quot;:&quot;\u91cd\u5e86&quot;,&quot;num&quot;:&quot;30&quot;,&quot;mddid&quot;:10208},&quot;117&quot;:{&quot;name&quot;:&quot;\u8d35\u5dde&quot;,&quot;num&quot;:&quot;6&quot;,&quot;mddid&quot;:14103},&quot;118&quot;:{&quot;name&quot;:&quot;\u9ed4\u4e1c\u5357&quot;,&quot;num&quot;:&quot;1&quot;,&quot;mddid&quot;:10381},&quot;119&quot;:{&quot;name&quot;:&quot;\u9ed4\u897f\u5357&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:11799},&quot;120&quot;:{&quot;name&quot;:&quot;\u8d35\u9633&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:11239},&quot;121&quot;:{&quot;name&quot;:&quot;\u5409\u6797&quot;,&quot;num&quot;:&quot;60&quot;,&quot;mddid&quot;:14871},&quot;122&quot;:{&quot;name&quot;:&quot;\u957f\u767d\u5c71&quot;,&quot;num&quot;:&quot;39&quot;,&quot;mddid&quot;:10072},&quot;123&quot;:{&quot;name&quot;:&quot;\u96fe\u51c7\u5c9b&quot;,&quot;num&quot;:&quot;42&quot;,&quot;mddid&quot;:21910},&quot;124&quot;:{&quot;name&quot;:&quot;\u957f\u6625&quot;,&quot;num&quot;:&quot;10&quot;,&quot;mddid&quot;:11247},&quot;125&quot;:{&quot;name&quot;:&quot;\u5409\u6797&quot;,&quot;num&quot;:&quot;60&quot;,&quot;mddid&quot;:14871},&quot;126&quot;:{&quot;name&quot;:&quot;\u6c5f\u82cf&quot;,&quot;num&quot;:&quot;8&quot;,&quot;mddid&quot;:14387},&quot;127&quot;:{&quot;name&quot;:&quot;\u5357\u4eac&quot;,&quot;num&quot;:&quot;3&quot;,&quot;mddid&quot;:10684},&quot;128&quot;:{&quot;name&quot;:&quot;\u82cf\u5dde&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:10207},&quot;129&quot;:{&quot;name&quot;:&quot;\u626c\u5dde&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10128},&quot;130&quot;:{&quot;name&quot;:&quot;\u65e0\u9521&quot;,&quot;num&quot;:&quot;1&quot;,&quot;mddid&quot;:10140},&quot;131&quot;:{&quot;name&quot;:&quot;\u5468\u5e84&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:11729},&quot;132&quot;:{&quot;name&quot;:&quot;\u8fbd\u5b81&quot;,&quot;num&quot;:&quot;17&quot;,&quot;mddid&quot;:15148},&quot;133&quot;:{&quot;name&quot;:&quot;\u5927\u8fde&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:10301},&quot;134&quot;:{&quot;name&quot;:&quot;\u6c88\u9633&quot;,&quot;num&quot;:&quot;13&quot;,&quot;mddid&quot;:10075},&quot;135&quot;:{&quot;name&quot;:&quot;\u4e39\u4e1c&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10584},&quot;136&quot;:{&quot;name&quot;:&quot;\u846b\u82a6\u5c9b&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:13055},&quot;137&quot;:{&quot;name&quot;:&quot;\u6cb3\u5357&quot;,&quot;num&quot;:&quot;4&quot;,&quot;mddid&quot;:12967},&quot;138&quot;:{&quot;name&quot;:&quot;\u6d1b\u9633&quot;,&quot;num&quot;:&quot;3&quot;,&quot;mddid&quot;:10094},&quot;139&quot;:{&quot;name&quot;:&quot;\u4e91\u53f0\u5c71&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:11527},&quot;140&quot;:{&quot;name&quot;:&quot;\u5f00\u5c01&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:11242},&quot;141&quot;:{&quot;name&quot;:&quot;\u90d1\u5dde&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10794},&quot;142&quot;:{&quot;name&quot;:&quot;\u5c71\u897f&quot;,&quot;num&quot;:&quot;8&quot;,&quot;mddid&quot;:13033},&quot;143&quot;:{&quot;name&quot;:&quot;\u5e73\u9065&quot;,&quot;num&quot;:&quot;3&quot;,&quot;mddid&quot;:10547},&quot;144&quot;:{&quot;name&quot;:&quot;\u4e94\u53f0\u5c71&quot;,&quot;num&quot;:&quot;1&quot;,&quot;mddid&quot;:10057},&quot;145&quot;:{&quot;name&quot;:&quot;\u592a\u539f&quot;,&quot;num&quot;:&quot;4&quot;,&quot;mddid&quot;:11240},&quot;146&quot;:{&quot;name&quot;:&quot;\u4e91\u5188\u77f3\u7a9f&quot;,&quot;num&quot;:&quot;1&quot;,&quot;mddid&quot;:10047}},{&quot;name&quot;:&quot;\u4e1c\u5357\u4e9a&quot;,&quot;0&quot;:{&quot;name&quot;:&quot;\u6cf0\u56fd&quot;,&quot;num&quot;:&quot;383&quot;,&quot;mddid&quot;:10083},&quot;1&quot;:{&quot;name&quot;:&quot;\u66fc\u8c37&quot;,&quot;num&quot;:&quot;145&quot;,&quot;mddid&quot;:11045},&quot;2&quot;:{&quot;name&quot;:&quot;\u6e05\u8fc8&quot;,&quot;num&quot;:&quot;115&quot;,&quot;mddid&quot;:15284},&quot;3&quot;:{&quot;name&quot;:&quot;\u666e\u5409\u5c9b&quot;,&quot;num&quot;:&quot;74&quot;,&quot;mddid&quot;:11047},&quot;4&quot;:{&quot;name&quot;:&quot;\u82cf\u6885\u5c9b&quot;,&quot;num&quot;:&quot;13&quot;,&quot;mddid&quot;:14210},&quot;5&quot;:{&quot;name&quot;:&quot;\u82ad\u63d0\u96c5&quot;,&quot;num&quot;:&quot;31&quot;,&quot;mddid&quot;:11046},&quot;6&quot;:{&quot;name&quot;:&quot;\u8d8a\u5357&quot;,&quot;num&quot;:&quot;152&quot;,&quot;mddid&quot;:10180},&quot;7&quot;:{&quot;name&quot;:&quot;\u5c98\u6e2f&quot;,&quot;num&quot;:&quot;11&quot;,&quot;mddid&quot;:16315},&quot;8&quot;:{&quot;name&quot;:&quot;\u67ec\u57d4\u5be8&quot;,&quot;num&quot;:&quot;115&quot;,&quot;mddid&quot;:10070},&quot;9&quot;:{&quot;name&quot;:&quot;\u5434\u54e5\u7a9f&quot;,&quot;num&quot;:&quot;21&quot;,&quot;mddid&quot;:10406},&quot;10&quot;:{&quot;name&quot;:&quot;\u83f2\u5f8b\u5bbe&quot;,&quot;num&quot;:&quot;51&quot;,&quot;mddid&quot;:10067},&quot;11&quot;:{&quot;name&quot;:&quot;\u957f\u6ee9\u5c9b&quot;,&quot;num&quot;:&quot;15&quot;,&quot;mddid&quot;:10737},&quot;12&quot;:{&quot;name&quot;:&quot;\u9a6c\u6765\u897f\u4e9a&quot;,&quot;num&quot;:&quot;99&quot;,&quot;mddid&quot;:10097},&quot;13&quot;:{&quot;name&quot;:&quot;\u5409\u9686\u5761&quot;,&quot;num&quot;:&quot;33&quot;,&quot;mddid&quot;:11049},&quot;14&quot;:{&quot;name&quot;:&quot;\u5170\u5361\u5a01&quot;,&quot;num&quot;:&quot;14&quot;,&quot;mddid&quot;:11051},&quot;15&quot;:{&quot;name&quot;:&quot;\u6c99\u5df4&quot;,&quot;num&quot;:&quot;61&quot;,&quot;mddid&quot;:10760},&quot;16&quot;:{&quot;name&quot;:&quot;\u5370\u5ea6\u5c3c\u897f\u4e9a&quot;,&quot;num&quot;:&quot;41&quot;,&quot;mddid&quot;:10181},&quot;17&quot;:{&quot;name&quot;:&quot;\u5df4\u5398\u5c9b&quot;,&quot;num&quot;:&quot;27&quot;,&quot;mddid&quot;:10460},&quot;18&quot;:{&quot;name&quot;:&quot;\u5c3c\u6cca\u5c14&quot;,&quot;num&quot;:&quot;32&quot;,&quot;mddid&quot;:10069},&quot;19&quot;:{&quot;name&quot;:&quot;\u65b0\u52a0\u5761&quot;,&quot;num&quot;:&quot;40&quot;,&quot;mddid&quot;:10754},&quot;20&quot;:{&quot;name&quot;:&quot;\u7f05\u7538&quot;,&quot;num&quot;:&quot;26&quot;,&quot;mddid&quot;:10179},&quot;21&quot;:{&quot;name&quot;:&quot;\u4ef0\u5149&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:16113},&quot;22&quot;:{&quot;name&quot;:&quot;\u84b2\u7518&quot;,&quot;num&quot;:&quot;6&quot;,&quot;mddid&quot;:16112},&quot;23&quot;:{&quot;name&quot;:&quot;\u8001\u631d&quot;,&quot;num&quot;:&quot;21&quot;,&quot;mddid&quot;:10820},&quot;24&quot;:{&quot;name&quot;:&quot;\u4e07\u8c61&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:16108},&quot;25&quot;:{&quot;name&quot;:&quot;\u7405\u52c3\u62c9\u90a6&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:11056}},{&quot;name&quot;:&quot;\u65e5\u97e9&quot;,&quot;0&quot;:{&quot;name&quot;:&quot;\u65e5\u672c&quot;,&quot;num&quot;:&quot;124&quot;,&quot;mddid&quot;:10183},&quot;1&quot;:{&quot;name&quot;:&quot;\u4e1c\u4eac&quot;,&quot;num&quot;:&quot;52&quot;,&quot;mddid&quot;:10222},&quot;2&quot;:{&quot;name&quot;:&quot;\u5927\u962a&quot;,&quot;num&quot;:&quot;40&quot;,&quot;mddid&quot;:10765},&quot;3&quot;:{&quot;name&quot;:&quot;\u540d\u53e4\u5c4b&quot;,&quot;num&quot;:&quot;4&quot;,&quot;mddid&quot;:11043},&quot;4&quot;:{&quot;name&quot;:&quot;\u5317\u6d77\u9053&quot;,&quot;num&quot;:&quot;32&quot;,&quot;mddid&quot;:10746},&quot;5&quot;:{&quot;name&quot;:&quot;\u51b2\u7ef3&quot;,&quot;num&quot;:&quot;18&quot;,&quot;mddid&quot;:11041},&quot;6&quot;:{&quot;name&quot;:&quot;\u97e9\u56fd&quot;,&quot;num&quot;:&quot;60&quot;,&quot;mddid&quot;:10184},&quot;7&quot;:{&quot;name&quot;:&quot;\u9996\u5c14&quot;,&quot;num&quot;:&quot;32&quot;,&quot;mddid&quot;:10130},&quot;8&quot;:{&quot;name&quot;:&quot;\u6d4e\u5dde\u5c9b&quot;,&quot;num&quot;:&quot;17&quot;,&quot;mddid&quot;:11030}},{&quot;name&quot;:&quot;\u6e2f\u6fb3\u53f0&quot;,&quot;0&quot;:{&quot;name&quot;:&quot;\u9999\u6e2f&quot;,&quot;num&quot;:&quot;42&quot;,&quot;mddid&quot;:10189},&quot;1&quot;:{&quot;name&quot;:&quot;\u6fb3\u95e8&quot;,&quot;num&quot;:&quot;10&quot;,&quot;mddid&quot;:10206},&quot;2&quot;:{&quot;name&quot;:&quot;\u53f0\u6e7e&quot;,&quot;num&quot;:&quot;174&quot;,&quot;mddid&quot;:12684}},{&quot;name&quot;:&quot;\u4e9a\u6d32\u7cbe\u9009&quot;,&quot;0&quot;:{&quot;name&quot;:&quot;\u5370\u5ea6&quot;,&quot;num&quot;:&quot;33&quot;,&quot;mddid&quot;:10182},&quot;1&quot;:{&quot;name&quot;:&quot;\u9a6c\u5c14\u4ee3\u592b&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:10101},&quot;2&quot;:{&quot;name&quot;:&quot;\u65af\u91cc\u5170\u5361&quot;,&quot;num&quot;:&quot;118&quot;,&quot;mddid&quot;:11058},&quot;3&quot;:{&quot;name&quot;:&quot;\u4ee5\u8272\u5217&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:10605},&quot;4&quot;:{&quot;name&quot;:&quot;\u4f0a\u6717&quot;,&quot;num&quot;:&quot;7&quot;,&quot;mddid&quot;:11699},&quot;5&quot;:{&quot;name&quot;:&quot;\u8fea\u62dc&quot;,&quot;num&quot;:&quot;7&quot;,&quot;mddid&quot;:11214}},{&quot;name&quot;:&quot;\u7f8e\u6d32&quot;,&quot;0&quot;:{&quot;name&quot;:&quot;\u7f8e\u56fd&quot;,&quot;num&quot;:&quot;98&quot;,&quot;mddid&quot;:10062},&quot;1&quot;:{&quot;name&quot;:&quot;\u6d1b\u6749\u77f6&quot;,&quot;num&quot;:&quot;37&quot;,&quot;mddid&quot;:10926},&quot;2&quot;:{&quot;name&quot;:&quot;\u897f\u96c5\u56fe&quot;,&quot;num&quot;:&quot;3&quot;,&quot;mddid&quot;:10929},&quot;3&quot;:{&quot;name&quot;:&quot;\u62c9\u65af\u7ef4\u52a0\u65af&quot;,&quot;num&quot;:&quot;19&quot;,&quot;mddid&quot;:10923},&quot;4&quot;:{&quot;name&quot;:&quot;\u590f\u5a01\u5937&quot;,&quot;num&quot;:&quot;4&quot;,&quot;mddid&quot;:10927},&quot;5&quot;:{&quot;name&quot;:&quot;\u585e\u73ed\u5c9b&quot;,&quot;num&quot;:&quot;7&quot;,&quot;mddid&quot;:10077},&quot;6&quot;:{&quot;name&quot;:&quot;\u52a0\u62ff\u5927&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:10177},&quot;7&quot;:{&quot;name&quot;:&quot;\u58a8\u897f\u54e5&quot;,&quot;num&quot;:&quot;7&quot;,&quot;mddid&quot;:11656},&quot;8&quot;:{&quot;name&quot;:&quot;\u5df4\u897f&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:10160}},{&quot;name&quot;:&quot;\u6b27\u6d32&quot;,&quot;0&quot;:{&quot;name&quot;:&quot;\u82f1\u56fd&quot;,&quot;num&quot;:&quot;12&quot;,&quot;mddid&quot;:10122},&quot;1&quot;:{&quot;name&quot;:&quot;\u4f26\u6566&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:11124},&quot;2&quot;:{&quot;name&quot;:&quot;\u6cd5\u56fd&quot;,&quot;num&quot;:&quot;39&quot;,&quot;mddid&quot;:10171},&quot;3&quot;:{&quot;name&quot;:&quot;\u5df4\u9ece&quot;,&quot;num&quot;:&quot;11&quot;,&quot;mddid&quot;:10573},&quot;4&quot;:{&quot;name&quot;:&quot;\u666e\u7f57\u65fa\u65af&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:11122},&quot;5&quot;:{&quot;name&quot;:&quot;\u5fb7\u56fd&quot;,&quot;num&quot;:&quot;12&quot;,&quot;mddid&quot;:10176},&quot;6&quot;:{&quot;name&quot;:&quot;\u6cd5\u5170\u514b\u798f&quot;,&quot;num&quot;:&quot;1&quot;,&quot;mddid&quot;:10958},&quot;7&quot;:{&quot;name&quot;:&quot;\u67cf\u6797&quot;,&quot;num&quot;:&quot;2&quot;,&quot;mddid&quot;:10755},&quot;8&quot;:{&quot;name&quot;:&quot;\u897f\u73ed\u7259&quot;,&quot;num&quot;:&quot;22&quot;,&quot;mddid&quot;:10173},&quot;9&quot;:{&quot;name&quot;:&quot;\u5df4\u585e\u7f57\u90a3&quot;,&quot;num&quot;:&quot;4&quot;,&quot;mddid&quot;:10102},&quot;10&quot;:{&quot;name&quot;:&quot;\u9a6c\u5fb7\u91cc&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:11133},&quot;11&quot;:{&quot;name&quot;:&quot;\u8461\u8404\u7259&quot;,&quot;num&quot;:&quot;3&quot;,&quot;mddid&quot;:10172},&quot;12&quot;:{&quot;name&quot;:&quot;\u91cc\u65af\u672c&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:11142},&quot;13&quot;:{&quot;name&quot;:&quot;\u6ce2\u5c14\u56fe&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:11171},&quot;14&quot;:{&quot;name&quot;:&quot;\u4fc4\u7f57\u65af&quot;,&quot;num&quot;:&quot;61&quot;,&quot;mddid&quot;:10300},&quot;15&quot;:{&quot;name&quot;:&quot;\u83ab\u65af\u79d1&quot;,&quot;num&quot;:&quot;19&quot;,&quot;mddid&quot;:11155},&quot;16&quot;:{&quot;name&quot;:&quot;\u571f\u8033\u5176&quot;,&quot;num&quot;:&quot;48&quot;,&quot;mddid&quot;:10053},&quot;17&quot;:{&quot;name&quot;:&quot;\u4f0a\u65af\u5766\u5e03\u5c14&quot;,&quot;num&quot;:&quot;7&quot;,&quot;mddid&quot;:11228},&quot;18&quot;:{&quot;name&quot;:&quot;\u745e\u58eb&quot;,&quot;num&quot;:&quot;12&quot;,&quot;mddid&quot;:10169},&quot;19&quot;:{&quot;name&quot;:&quot;\u745e\u5178&quot;,&quot;num&quot;:&quot;12&quot;,&quot;mddid&quot;:10214},&quot;20&quot;:{&quot;name&quot;:&quot;\u5965\u5730\u5229&quot;,&quot;num&quot;:&quot;7&quot;,&quot;mddid&quot;:10175},&quot;21&quot;:{&quot;name&quot;:&quot;\u5e0c\u814a&quot;,&quot;num&quot;:&quot;8&quot;,&quot;mddid&quot;:10168},&quot;22&quot;:{&quot;name&quot;:&quot;\u610f\u5927\u5229&quot;,&quot;num&quot;:&quot;34&quot;,&quot;mddid&quot;:10051}},{&quot;name&quot;:&quot;\u5927\u6d0b\u6d32&quot;,&quot;0&quot;:{&quot;name&quot;:&quot;\u65b0\u897f\u5170&quot;,&quot;num&quot;:&quot;71&quot;,&quot;mddid&quot;:10544},&quot;1&quot;:{&quot;name&quot;:&quot;\u7687\u540e\u9547&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:10885},&quot;2&quot;:{&quot;name&quot;:&quot;\u5965\u514b\u5170&quot;,&quot;num&quot;:&quot;1&quot;,&quot;mddid&quot;:10865},&quot;3&quot;:{&quot;name&quot;:&quot;\u6fb3\u5927\u5229\u4e9a&quot;,&quot;num&quot;:&quot;66&quot;,&quot;mddid&quot;:10202},&quot;4&quot;:{&quot;name&quot;:&quot;\u9ec4\u91d1\u6d77\u5cb8&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:17339},&quot;5&quot;:{&quot;name&quot;:&quot;\u6089\u5c3c&quot;,&quot;num&quot;:&quot;22&quot;,&quot;mddid&quot;:10855},&quot;6&quot;:{&quot;name&quot;:&quot;\u58a8\u5c14\u672c&quot;,&quot;num&quot;:&quot;21&quot;,&quot;mddid&quot;:10856},&quot;7&quot;:{&quot;name&quot;:&quot;\u6590\u6d4e&quot;,&quot;num&quot;:&quot;3&quot;,&quot;mddid&quot;:11044},&quot;8&quot;:{&quot;name&quot;:&quot;\u5e15\u52b3&quot;,&quot;num&quot;:&quot;14&quot;,&quot;mddid&quot;:15911}},{&quot;name&quot;:&quot;\u975e\u6d32&quot;,&quot;0&quot;:{&quot;name&quot;:&quot;\u6bdb\u91cc\u6c42\u65af&quot;,&quot;num&quot;:&quot;12&quot;,&quot;mddid&quot;:11761},&quot;1&quot;:{&quot;name&quot;:&quot;\u80af\u5c3c\u4e9a&quot;,&quot;num&quot;:&quot;5&quot;,&quot;mddid&quot;:10029},&quot;2&quot;:{&quot;name&quot;:&quot;\u585e\u820c\u5c14&quot;,&quot;num&quot;:&quot;0&quot;,&quot;mddid&quot;:16827}}]" />
<input id="_j_all_together_num" type="hidden" data-num="2950"/>
<div class="container _j_total" data-total="1000">
    <div class="index-hd">
    
    <div class="wrapper">
        <div class="info">
            <div class="num">我们共有<strong>188329</strong>个计划</div>
            <div class="total"><span>379315</span>人关注<em class="dot"></em><span>178114</span>人报名</div>
            <a class="btn" href="<c:url value='/jsps/partner/add.jsp'/>">发布我的结伴计划</a>
        </div>
    </div>
</div>
    <div class="row">
    <div class="wrapper mod-popular">
        <h3 class="mod-title">结伴热门目的地</h3>
        <div class="bd">
            <ul class="clearfix">
                                    <li class="item">
                        <a href="#" class="_j_hot_mdd" data-mddname="哈尔滨" data-mddid="10068">
                            <div class="image"><img src="http://file25.mafengwo.net/M00/15/A0/wKgB4lMK8MKAabuoABk_3xYAtUI95.mdd.a300.jpeg" style="width: 220px;height: 220px;"></div>
                            <div class="bg"></div>
                            <div class="txt">
                                <strong>哈尔滨</strong>
                                <p>发起 219 个结伴<br>3257 人关注<br>466 人报名</p>
                            </div>
                        </a>
                    </li>
                                    <li class="item">
                        <a href="#" class="_j_hot_mdd" data-mddname="泰国" data-mddid="10083">
                            <div class="image"><img src="http://file26.mafengwo.net/M00/10/CD/wKgB4lM9BUiALPceAAQyEeHtADc23.mdd.a300.jpeg" style="width: 220px;height: 220px;"></div>
                            <div class="bg"></div>
                            <div class="txt">
                                <strong>泰国</strong>
                                <p>发起 383 个结伴<br>5309 人关注<br>1014 人报名</p>
                            </div>
                        </a>
                    </li>
                                    <li class="item">
                        <a href="#" class="_j_hot_mdd" data-mddname="曼谷" data-mddid="11045">
                            <div class="image"><img src="http://file26.mafengwo.net/M00/11/F7/wKgB4lJoyFGABIHRAA2VXlPjpXI19.mdd.a300.jpeg" style="width: 220px;height: 220px;"></div>
                            <div class="bg"></div>
                            <div class="txt">
                                <strong>曼谷</strong>
                                <p>发起 145 个结伴<br>1605 人关注<br>398 人报名</p>
                            </div>
                        </a>
                    </li>
                                    <li class="item">
                        <a href="#" class="_j_hot_mdd" data-mddname="越南" data-mddid="10180">
                            <div class="image"><img src="http://file27.mafengwo.net/M00/F7/58/wKgB6lSSTuOAEagiAAnWhL0LC9M874.mdd.a300.png" style="width: 220px;height: 220px;"></div>
                            <div class="bg"></div>
                            <div class="txt">
                                <strong>越南</strong>
                                <p>发起 152 个结伴<br>2167 人关注<br>349 人报名</p>
                            </div>
                        </a>
                    </li>
                                    <li class="item">
                        <a href="#" class="_j_hot_mdd" data-mddname="台湾" data-mddid="12684">
                            <div class="image"><img src="http://file27.mafengwo.net/M00/D9/C6/wKgB6lQo-QaAev6IAAGTxxsB7Nk68.mdd.a300.jpeg" style="width: 220px;height: 220px;"></div>
                            <div class="bg"></div>
                            <div class="txt">
                                <strong>台湾</strong>
                                <p>发起 174 个结伴<br>2233 人关注<br>384 人报名</p>
                            </div>
                        </a>
                    </li>
                                    <li class="item">
                        <a href="#" class="_j_hot_mdd" data-mddname="清迈" data-mddid="15284">
                            <div class="image"><img src="http://file25.mafengwo.net/M00/F8/EE/wKgB4lM-MMyACutSAAiDXY7Zo-Y92.mdd.a300.jpeg" style="width: 220px;height: 220px;"></div>
                            <div class="bg"></div>
                            <div class="txt">
                                <strong>清迈</strong>
                                <p>发起 115 个结伴<br>1601 人关注<br>267 人报名</p>
                            </div>
                        </a>
                    </li>
                                    <li class="item">
                        <a href="#" class="_j_hot_mdd" data-mddname="漠河" data-mddid="10427">
                            <div class="image"><img src="http://file27.mafengwo.net/M00/16/9E/wKgB6lS9vbOADtJEAAPwVcWXcsM31.mdd.a300.jpeg" style="width: 220px;height: 220px;"></div>
                            <div class="bg"></div>
                            <div class="txt">
                                <strong>漠河</strong>
                                <p>发起 115 个结伴<br>1399 人关注<br>316 人报名</p>
                            </div>
                        </a>
                    </li>
                                    <li class="item">
                        <a href="#" class="_j_hot_mdd" data-mddname="斯里兰卡" data-mddid="11058">
                            <div class="image"><img src="http://file28.mafengwo.net/M00/70/75/wKgB6lSrenKARGkhAAGjqHLKG7g95.mdd.a300.jpeg" style="width: 220px;height: 220px;"></div>
                            <div class="bg"></div>
                            <div class="txt">
                                <strong>斯里兰卡</strong>
                                <p>发起 118 个结伴<br>1220 人关注<br>328 人报名</p>
                            </div>
                        </a>
                    </li>
                            </ul>
        </div>
    </div>
</div>
    
    <div class="row-bg">
        <div class="wrapper mod-list">
            <div class="not-found hide _j_not_found"><strong>没有符合条件的结伴计划</strong><br>改改搜索条件试试~</div>
            <div class="bd together-list">
    <ul class="clearfix _j_together_list">
    <c:forEach items="${partnerList }" var="p">   <!-- 循环遍历每一个同行驴友申请 -->                 
    <li class="item">
        <a href="<c:url value='/PartnerServlet?method=load&fpaid=${p.fpaid }'/>"  target="_blank">
            <div class="image">
                <img src="<c:url value='${p.simage }'/>" style="width: 200px;height: 130px;">
                <div class="after"><b>${p.days }</b>天</div>
                <hr>
            </div>
            <h3 class="title">${p.endPlace }</h3>
            <div class="desc">结伴描述 — ${p.title }

</div>
            <div class="user clearfix">
                <span class="avatar"><img src="http://images.mafengwo.net/images/pp48.gif">
                <i class="male"></i></span>
                <span class="name">木 木  </span>
                <span class="level">LV.1</span>
            </div>
            <div class="attention"><i class="icon-arrow"></i>已有<b>13</b>人关注</div>
        </a>
    </li>
    </c:forEach>
    

                </ul>
            </div>
            
        </div>
    </div>
    <div class="row">
    
    </div>
</div>

    <script id="pagination_tmpl" type="text/x-jquery-tmpl">
    <div class="ft">
    {{if currPage > 1}}
        <a class="disable _j_pageitem" data-page="${currPage - 1}"><i class="btn-prev"></i></a>
    {{else}}
        <a class="disable" data-page="${currPage - 1}"><i class="btn-prev"></i></a>
    {{/if}}
        <span class="num"><span>${currPage}</span>/${pageTotal}</span>
    {{if currPage == pageTotal}}
        <a class="btn-next"><i></i></a>
    {{else}}
        <a class="btn-next _j_pageitem" data-page="${currPage + 1}"><i></i></a>
    {{/if}}
    </div>
    </script>




	</div>
</div>



<!-- 意见反馈依托的页面模板 -->
<div class="FeedBackBtn"><a href="#" class="_j_showfeedback">意见反馈</a></div>
<script type="text/x-jquery-tmpl" id="_j_tmpl_feedback">
<div class="FeedBackA">
    <div class="FeedTit">意见反馈</div>
    <div class="FeedDesc">我们倾听你的声音</div>
    <div class="FeedForm" id="feedback-form">
        <textarea id="feedback-textarea" placeholder="欢迎提出宝贵的意见和建议。抱歉我们无法逐一回复，但我们会认真阅读，你的支持是对我们最大的鼓励和帮助"></textarea>
    </div>
    <div class="FeedAct" id="feedback-act"><a href="#" class="_j_submitfeedback" data-url="">提 交</a><span id="feedback-errinfo" class="err hide">内容不能为空！</span></div>
</div>
</script>



<script language="javascript" type="text/javascript">
if (typeof M !== "undefined" && typeof M.loadResource === "function") {
M.loadResource("http://js.mafengwo.net/js/cv/js+AHeaderWo:js+jquery.tmpl:js+M+module+Pagination:js+jquery-ui-core:js+jquery-ui-datepicker:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+together+index:js+AScrollTop^YVdT^1449196185.js");
M.loadResource("http://js.mafengwo.net/js/cv/js+M+module+Storage:js+jquery.jgrowl.min:js+AMessage:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+FrequencyVerifyControl:js+M+module+FrequencySystemVerify:js+ALogin:js+AFeedback^YVdW^1450352382.js");
M.loadResource("http://js.mafengwo.net/js/cv/js+ACnzzGaLog:js+ARecruit:js+ALazyLoad^YF0^1449227096.js");
}
</script>
<div>
	<iframe width="100%" height="106px" frameborder="0" scrolling="no" name="footer"
		src="<c:url value='/jsps/footer.jsp'/>"></iframe>
</div>
</body>
</html>
