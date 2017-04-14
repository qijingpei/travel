<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../top.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>${strategy.title }</title>

<meta name="description" content="【TAIWAN映像】Touch Your Heart-漂洋过海去看你（台北、九份、花莲、垦丁）游记来蚂蜂窝,更多台湾自助游攻略最新游记【TAIWAN映像】Touch Your Heart-漂洋过海去看你（台北、九份、花莲、垦丁）尽在蚂蜂窝" />
<meta name="keywords" content="台湾自助游攻略" />
<meta name="author" content="3402808,晓圆" />

<script type="text/javascript">
window.Env = {"anchor_pid":0,"iid":3402808,"mddid":"12684","WWW_HOST":"www.mafengwo.cn","IMG_HOST":"images.mafengwo.net","P_HOST":"passport.mafengwo.cn","P_HTTP":"https:\/\/passport.mafengwo.cn","UID":87237915,"CSTK":"bf8eaf0cb784d7c0323a08c365f02a25_2d6ec0e577ec93ae71f028e32bf3847f"};
</script>

<link href="<c:url value='/css/strategy_city_01.css'/>" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
var __mfw_uid = parseInt('87237915');
</script>
<link href="<c:url value='/css/strategy_city_02.css'/>" rel="stylesheet" type="text/css"/>
<style type="text/css">
	img {
		max-width:100%; /*图片自适应宽度*/  
	}
</style>
</head>
<body>

<div class="main">
	<div>
		<img width="100%" height="480px" src="<c:url value='/images/strategy/strategy_city_01.jpg'/>"/>
	</div>
    <div class="view_title clearfix">
        <div class="vt_center">
            <div class="person" data-cs-t="ginfo_person_operate">
                <a href="/u/35153280.html" target="_blank" class="per_pic"><img width="120" src="" alt="" /></a>
                                    <a target="_blank" href="/club/" class="i-fengshou"></a>
                                <strong><a href="/u/35153280.html" target="_blank" class="per_name" title="晓圆">晓圆
                        (南京)                     </a></strong>
                <a href="/u/35153280.html" target="_blank" class="per_grade" title="LV.16">LV.16</a>
                                    <a href="#" class="per_attention _j_add_friend _j_remove" data-to_uid="35153280">
                        <img src="http://images.mafengwo.net/images/home/tweet/btn_sfollow.gif" width="38" height="13" border="0" title="关注TA">
                    </a>
                                <div class="vc_time">
                    <span class="time">2015-06-16 21:37</span>
                    <span><i class="ico_view"></i>114703/942</span>
                                    </div>
                            </div>
            
            <div class="bar_share">
                <div class="bs_share">
    <a href="javascript:void(0);" rel="nofollow" title="分享" class="bs_btn"><i></i><span>200</span><strong>分享</strong></a>
    <div class="bs_pop clearfix" style="display: none;">
        <a title="分享到新浪微博" rel="nofollow" href="javascript:eval(sns_share_show('wb_tinfo_1',shareStruct.share_title,shareStruct.share_content,shareStruct.share_url,shareStruct.share_img));record_share(__iid,'sina');void 0;" class="sina"></a>
        <a title="分享到QQ空间" rel="nofollow" href="javascript:eval(sns_share_show('qz_tinfo_1',shareStruct.share_title,shareStruct.share_content,shareStruct.share_url,shareStruct.share_img));record_share(__iid,'qq');void 0;" class="zone"></a>
        <a title="分享到微信" rel="nofollow" href="#" class="weixin _j_weixin_share"></a>
    </div>
</div>
<div class="bs_collect">
    <a href="javascript:void(0);" rel="nofollow" data-ctime="2015-06-16 21:37:07" class="bs_btn _j_do_fav"><i></i><span></span><strong>收藏</strong></a>
</div>





            </div>
            <div class="music_botton" id="music">
    <div class="hd_audio"></div>
    <a href="javascript:void(0);" rel="nofollow" title="播放" class="control pause _j_m_control">
        <i></i>
        <i></i>
        <i></i>
        <i></i>
        <i></i>
        <img src="http://images.mafengwo.net/images/post/new_notes/nn_v2/music.gif" alt="" />
    </a>
</div>

        </div>
    </div>
    <div class="view clearfix" style="position:relative;">
        <div class="view_con">
            <div class="activity_style_notes aNotice aNoticeM hide">
                <i class="asn_ico"></i>
                <strong class="noticeDes"></strong>
                <a href="" title="去看看" class="noticeUrl" target="_blank">去看看&gt;</a>
                <a href="javascript:;" class="close noticeClose" title="不再显示">不再显示</a>
            </div>
                            
                
                    <div class="travel_directory _j_exscheduleinfo">
        <div class="tarvel_dir_list clearfix">
            <ul>
                                <li class="time" >出发时间<span>/</span>2014-10-5<i></i></li>
                                                <li class="day">出行天数<span>/</span>9 天</li>
                                                <li class="people">人物<span>/</span>和朋友 </li>
                                                <li class="cost">人均费用<span>/</span>8000RMB</li>
                            </ul>
        </div>
            </div>
				
				<!-- 攻略文章部分 -->
                <div class="vc_article" style="width:1000px;">
               ${strategy.title }<br/>
				${strategy.content }
                
                    
</div>
</div>
</div>
</div>


<script language="javascript" type="text/javascript">
if (typeof M !== "undefined" && typeof M.loadResource === "function") {
M.loadResource("http://js.mafengwo.net/js/cv/js+Dropdown:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+SiteSearch:js+jquery.upnum:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog^YVRb^1450937537.js");
M.loadResource("http://js.mafengwo.net/js/cv/js+M+module+TopTip:js+AHeader:js+jquery.lazyload:js+M+module+Slider:js+jquery.mousewheel.min:js+M+module+ScrollBar:js+M+module+Cookie:js+M+module+Movearound:js+note+ADetail:js+jquery.tmpl:js+M+module+Toggle:js+EmotionsHd^YVdT^1450353345.js");
M.loadResource("http://js.mafengwo.net/js/cv/js+module+app+Page:js+M+module+FrequencyVerifyControl:js+M+module+FrequencyAppVerify:js+M+module+ClickToggle:js+M+module+dialog+alert:js+note+GinfoReply:js+M+module+dialog+confirm:js+M+module+Storage:js+note+ACommon:js+note+anotice^YVZS^1450936099.js");
M.loadResource("http://js.mafengwo.net/js/cv/js+note+poiofnote:js+AScrollTop:js+jquery.jgrowl.min:js+AMessage:js+M+module+FrequencySystemVerify:js+ALogin:js+AFeedback:js+ACnzzGaLog:js+ARecruit:js+ALazyLoad^YlNT^1450352382.js");
}
</script>

<div>
	<iframe width="100%" height="94px" frameborder="0" scrolling="no" 
		src="<c:url value='/jsps/footer.jsp'/>"></iframe>
</div>
</body>
</html>

