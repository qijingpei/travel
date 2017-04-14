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
<title>${city.name }旅游攻略 </title>

<meta name="description" content="2015爱丁堡旅游攻略,介绍了爱丁堡旅游景点、线路、美食、住宿、地图等爱丁堡旅游攻略信息,了解爱丁堡旅游等自由行攻略信息来蚂蜂窝旅游攻略网。" />
<meta name="keywords" content="2015爱丁堡旅游攻略,爱丁堡自助游,爱丁堡自由行" />
<link rel="canonical" href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/11125.html"/>
<script type="text/javascript">
window.Env = {"MDDID":11125,"MDDADM":0,"WWW_HOST":"www.mafengwo.cn","IMG_HOST":"images.mafengwo.net","P_HOST":"passport.mafengwo.cn","P_HTTP":"https:\/\/passport.mafengwo.cn","UID":87237915,"CSTK":"3142c51cf725bfb89f55bec2538a7969_137ca615ba20dc87c696fe657bada250"};
</script>
<link href="<c:url value='/css/city_index_01.css'/>" rel="stylesheet" type="text/css"/>
<link href="<c:url value='/css/city_index_02.css'/>" rel="stylesheet" type="text/css"/>
<link href="<c:url value='/css/menu_01.css'/>" rel="stylesheet" type="text/css"/>

<script language="javascript" src="<c:url value='/js/city_index_01.js'/>" type="text/javascript"></script>

</head>
<body>
<iframe width="100%" height="73px"
	 src="<c:url value='/jsps/top.jsp'/>" frameborder="0" scrolling="no"> 
</iframe>
<div id="container" data-cs-t="目的地详情页">
<div class="row row-primary">
    <div class="wrapper">

<style type="text/css">
    #header{
        margin-bottom: 0;
    }
    .crumb .item a{
        color:#666;
        font-size:14px;
    }
    .crumb {
        width: 1000px;
        font:12px Arial,"Microsoft Yahei","\5FAE\8F6F\96C5\9ED1",Tahoma,Helvetica,STHeiti,"Hiragino Sans GB";
        height: 20px;
        padding: 15px 0;
        color: #666;
        line-height: 20px;
        margin: 0 auto;
    }
</style>
<div class="crumb">
    <div class="item"><a href="/mdd/" target="_blank">目的地</a><em>&gt;</em></div>
                                <div class="item">
                <div class="drop">             
                            <div class="bd">
                            <i class="arrow"><b></b></i>
                            <div class="more"><a href="/travel-scenic-spot/mafengwo/10122.html" target="_blank">&gt;&gt;更多地区</a></div>
                        </div>
                                    </div>
                <em>&gt;</em>
            </div>
                            <div class="item">
        <div class="drop">
            <span class="hd"><a href="/travel-scenic-spot/mafengwo/11125.html">${city.name }<i></i></a></span>
            <div class="bd">
                <i class="arrow"><b></b></i>
                <!--div class="more"><a href="#">&gt;&gt;更多国家</a></div-->
            </div>
        </div>
        <em>&gt;</em>
    </div>
    <div class="item cur"><strong>${city.name }旅游攻略</strong></div>
    
</div>
<script language="JavaScript" type="text/javascript">
    $(function () {
        //面包屑
        $('.drop').mouseenter(function(ev) {
            var target = $(ev.currentTarget);
            clearTimeout(target.data('hideTimer'));
            target.addClass('open');
            target.children('bd').fadeIn(200);
        });
        $('.drop').mouseleave(function(ev) {
            var target = $(ev.currentTarget);
            target.data("hideTimer", setTimeout(function() {
                target.removeClass('open');
                target.children('bd').fadeOut(200);
            }, 200));
        });
    });
</script>

<script language="JavaScript" type="text/javascript">
    (function(){
        var navigation = $('.place-navbar'),
            offset_top = navigation.offset().top,
            h = navigation.outerHeight(true),
            intervalod,
            navdrop = $('.city-guide'),//顶导航
            overviewdrop = $('.overview-drop'),//攻略概况
            subtabdrop = $('.navbar-dropdown');//子菜单
        navigation.after('<div id="fill_area" style="height: '+h+'px;display:none;"></div>');
        function setFixed(){
            
                        var scrolltop = $(document).scrollTop(),
                fillarea = $('#fill_area');
            if(scrolltop  > offset_top + 60){
                fillarea.show();
                navigation.addClass('place-navbar-fixed');
            }else{
                fillarea.hide();
                navigation.removeClass('place-navbar-fixed');
            }
                    }
        $(window).scroll(function(){
            setFixed();
        });
        /*定导航*/
        navdrop.mouseenter(function(ev) {
            clearTimeout(intervalod);
            overviewdrop.removeClass('hide');
        });
        navdrop.mouseleave(function(ev) {
            intervalnd = setTimeout(function(){
                overviewdrop.addClass('hide');
            }, 200);
        });
        /*攻略概况*/
        overviewdrop.mouseenter(function(ev) {
            clearTimeout(intervalnd);
            overviewdrop.removeClass('hide');
        });
        overviewdrop.mouseleave(function(ev) {
            intervalod = setTimeout(function(){
                overviewdrop.addClass('hide');
            }, 100);
        });
        /*子菜单*/
        subtabdrop.mouseenter(function(ev) {
            $(ev.currentTarget).find('.navbar-dropmenu').removeClass('hide');
        });
        subtabdrop.mouseleave(function(ev) {
            $(ev.currentTarget).find('.navbar-dropmenu').addClass('hide');
        });
        setFixed();
    })();
</script>
                    <div class="screen clearfix">
                <div class="r-main">
                                            <a class="photo" href="#" target="_top">
                            <img src="<c:url value='/${city.image }'/>" width="680" height="360">
                            <div class="text">
                                <h1 style="visibility: hidden;">${city.name }</h1>
                                <span>有9683张图片</span>
                            </div>
                        </a>
                                    </div>
                                                <div class="r-side">
                    <div class="m-impress">
                            <h3 class="hd">景点印象</h3>
    <div class="bd clearfix">
    <c:forEach items="${attractionList}" var="attraction">
  	<div class="icon">
  	   	<a href="<c:url value='/AttractionServlet?method=load&attid=${attraction.attid }'/>">${attraction.name }</a>
   
      <br/><br/>
  	</div>
	</c:forEach>
                   
                    
            </div>
                    </div>	                                                                                                                                                         
                </div>	               
            </div>	<div style="margin-left:140px;margin-top:10px;width:680px;"><br/><br/><strong>${city.introduce }</strong><br/></div>            
                        </div>
</div>
    <div class="row row-feature">
        <div class="wrapper">
            
            <div class="col col-hotel">
                <h2 class="hd">
                                            <a data-t="酒店标题" href="/hotel/11125/" target="_blank"><i></i>酒店住宿攻略</a>
                                    </h2>
                                                                                            <dl>
                        <dt><a data-t="酒店分区1" class="r-tit" href="/hotel/area_1203.html" target="_blank"><i class="i-hotel2"></i>老城区</a></dt>
                        <dd>
                            <a data-t="酒店分区1" href="/hotel/area_1203.html" target="_blank">
                                                                    <div class="r-photo">
                                        <img src="http://file29.mafengwo.net/M00/E6/EA/wKgBpVVTYWKAHezYAAET_ZJ9llU49.jpeg" width="277" height="183">
                                    </div>
                                                                <div class="r-text">
                                    <span class="percent">47%</span>的游客选择住在这里，有<span class="num">1027</span>家酒店。
                                    从爱丁堡城堡到皇家一英里再到荷里路德宫，这里集中了经典景点和博物馆。 爱丁堡威弗利火车站在新城老城之间，有发往英国主要地区的快慢列车。 王子大街和皇家英里大街是繁华的商业街，可以采购苏格兰特色纪念品。 老城区彰显了爱丁堡的历史气息，让人如同回到了令人神往的中世纪。
                                </div>
                            </a>
                        </dd>
                    </dl>
                                                                            <dl>
                        <dt><a data-t="酒店分区2" class="r-tit" href="/hotel/area_1204.html" target="_blank"><i class="i-hotel3"></i>新城</a></dt>
                        <dd>
                            <a data-t="酒店分区2" href="/hotel/area_1204.html" target="_blank">
                                                                <div class="r-text">
                                    <span class="percent">39%</span>的游客选择住在这里，有<span class="num">1008</span>家酒店。
                                    淘物控和享乐分子的天堂，玫瑰街、乔治街、女王街等十分繁华。 这里还聚集了酒吧、餐馆、俱乐部等。 步行到老城景点不是很远，价格相对低一些，也是游客热爱的区域。
                                </div>
                            </a>
                        </dd>
                    </dl>
                                                                            <dl>
                        <dt><a data-t="酒店分区3" class="r-tit" href="/hotel/area_1200.html" target="_blank"><i class="i-hotel1"></i>利斯</a></dt>
                        <dd>
                            <a data-t="酒店分区3" href="/hotel/area_1200.html" target="_blank">
                                                                <div class="r-text">
                                    <span class="percent">19%</span>的游客选择住在这里，有<span class="num">737</span>家酒店。
                                    这里有风景如画的海岸，也是美食、酒吧和的各色艺术画廊的天堂。 皇家游艇不列颠尼亚号是这区域不可错过的景致。
                                </div>
                            </a>
                        </dd>
                    </dl>
                                                                <div class="ft">
                    <a data-t="查看全部酒店" class="a-link" href="/hotel/11125/" target="_blank"><i class="icon-link"></i>4974家酒店</a>
                </div>
            </div>
            
            <div class="col col-scenic">
                <h2 class="hd"><a data-t="景点标题" href="/jd/11125/gonglve.html" target="_blank"><i></i>必游景点排行</a></h2>
                                                                                            <dl>
                        <dt>
                                                            <a class="r-num" href="/poi/16333.html#reviews" target="_blank">292个点评</a>
                                                        <a data-t="景点1" class="r-tit" href="/poi/16333.html" target="_blank"><span class="No">No.<em>1</em></span>爱丁堡城堡</a>
                        </dt>
                        <dd>
                            <a data-t="景点1" href="/poi/16333.html" target="_blank">
                                                                    <div class="r-photo">
                                        <img src="http://file26.mafengwo.net/M00/7E/BD/wKgB4lOqQzGAb82YABI34hStBHE02.rbook_comment.w290_h195.jpeg" width="277" height="182">
                                    </div>
                                                                                                    <div class="r-text">
							<span class="user" title="summerlover" rel="nofollow">
								<img src="http://file29.mafengwo.net/M00/D8/4C/wKgBpVWnvOeADCDBAACsTZx-f3k14.head.w48.jpeg">summerlo..
							</span>
                                        &nbsp;“这座城堡在一到达爱丁堡的市中心就能看到。它屹立在一座死火山上，三面都是死路，只有一面能...”
                                    </div>
                                                            </a>
                        </dd>
                    </dl>
                                                                            <dl>
                        <dt>
                                                            <a class="r-num" href="/poi/78006.html#reviews" target="_blank">152个点评</a>
                                                        <a data-t="景点2" class="r-tit" href="/poi/78006.html" target="_blank"><span class="No">No.<em>2</em></span>皇家英里</a>
                        </dt>
                        <dd>
                            <a data-t="景点2" href="/poi/78006.html" target="_blank">
                                                                                                    <div class="r-text">
							<span class="user" title="东奔西跑" rel="nofollow">
								<img src="http://file30.mafengwo.net/M00/57/59/wKgBpVUYDkeAZwOTAAFYexu9owk94.head.w48.jpeg">东奔西跑
							</span>
                                        &nbsp;“在皇家一英里可以看到大量的苏格兰方格，羊绒制品以及具有苏格兰风味的纪念品，这条街非常有...”
                                    </div>
                                                            </a>
                        </dd>
                    </dl>
                                                                            <dl>
                        <dt>
                                                            <a class="r-num" href="/poi/5531750.html#reviews" target="_blank">130个点评</a>
                                                        <a data-t="景点3" class="r-tit" href="/poi/5531750.html" target="_blank"><span class="No">No.<em>3</em></span>卡尔顿山</a>
                        </dt>
                        <dd>
                            <a data-t="景点3" href="/poi/5531750.html" target="_blank">
                                                                                                    <div class="r-text">
							<span class="user" title="infinitezs" rel="nofollow">
								<img src="http://file28.mafengwo.net/M00/0D/0D/wKgB6lTFA8-AbcAyAAIMT7mgaiM76.head.w48.jpeg">infinitezs
							</span>
                                        &nbsp;“你所见到的所有关于爱丁堡的宣传图、明信片基本上都可以找到一张在卡尔顿山上从这个角度拍过...”
                                    </div>
                                                            </a>
                        </dd>
                    </dl>
                                <div class="ft">
                    <a data-t="查看全部景点" class="a-link" href="/jd/11125/gonglve.html"><i class="icon-link"></i>71个景点</a>
                </div>
            </div>
            
            <div class="col col-cate">
                <h2 class="hd">
                                            <a data-t="餐饮标题" href="/cy/11125/gonglve.html" target="_blank"><i></i>必吃美食排行</a>
                                    </h2>
                                                                                                                            <dl>
                            <dt>
                                <a data-t="餐饮1" class="r-tit" href="/cy/11125/1690.html"><span class="No">No.<em>1</em></span>Haggis</a>
                            </dt>
                            <dd>
                                <a data-t="餐饮1" href="/cy/11125/1690.html">
                                                                            <div class="r-photo">
                                            <img src="http://file21.mafengwo.net/M00/C8/5F/wKgB3FG0IsaATrq-AAJDin8OHyg36.rbook_comment.w290_h195.jpeg" width="277" height="182">
                                        </div>
                                                                        <div class="r-text">
                                        Haggis是苏格兰传统菜肴，基本做法是将包括羊杂碎（心肝肺）、燕麦、羊板油、高汤、洋葱及香料混合，缝进羊...
                                    </div>
                                </a>
                            </dd>
                        </dl>
                                                                                            <dl>
                            <dt>
                                <a data-t="餐饮2" class="r-tit" href="/cy/11125/1692.html"><span class="No">No.<em>2</em></span>三文鱼</a>
                            </dt>
                            <dd>
                                <a data-t="餐饮2" href="/cy/11125/1692.html">
                                                                        <div class="r-text">
                                        长长的海岸线给了苏格兰丰富的海洋资源，这里的鱼、虾、贝类等都新鲜可口。特别是三文鱼是苏格兰人餐桌上必...
                                    </div>
                                </a>
                            </dd>
                        </dl>
                                                                                            <dl>
                            <dt>
                                <a data-t="餐饮3" class="r-tit" href="/cy/11125/1694.html"><span class="No">No.<em>3</em></span>饮料IRN-BRU</a>
                            </dt>
                            <dd>
                                <a data-t="餐饮3" href="/cy/11125/1694.html">
                                                                        <div class="r-text">
                                        IRN-BRU最早产于1901年，然后成为了苏格兰的民族软饮料，并且享誉全球。它带有少许的碳酸成分，并有一种轻微...
                                    </div>
                                </a>
                            </dd>
                        </dl>
                                                    <div class="ft">
                    <a data-t="查看全部餐饮" class="a-link" href="/cy/11125/gonglve.html"><i class="icon-link"></i>38个餐厅</a>
                </div>
            </div>
        </div>
                    </div>
<div class="row row-travels">
    <div class="wrapper">
                <div class="navbar clearfix">
            <ul class="tn-nav">
                <li  class="active"><a href="/yj/11125/1-0-1.html">最热游记</a></li>
                <li ><a href="/yj/11125/2-0-1.html">最新游记</a></li>
                            </ul>
        </div>
        
	
	
		
		
			
				
				

				
				
				
				
				
			
		
	
	

<div class="navbar-sub clearfix" data-cs-t="mdd_filter">
            <div class="tn-dropdown dropdown-type">

            <div class="dropdown-trigger"><span>最热游记</span><i class="icon-dropdown"></i></div>
            <div class="dropdown-menu">
                <ul>
                    <li><a href="/yj/11125/1-0-1.html" target="_blank" class="active">最热游记</a></li>
                    <li><a href="/yj/11125/2-0-1.html" target="_blank" >最新游记</a></li>
                                    </ul>
            </div>
        </div>
                    <div class="tn-dropdown dropdown-month">
                <div class="dropdown-trigger"><span>按时间</span><i class="icon-dropdown"></i></div>
                <div class="dropdown-menu">
                    <ul>
                                                                            <li><a data-cs-p="type_month" data-cs-l="/yj/11125/s-0-0-0-0-1.html" href="/yj/11125/s-0-0-0-0-1.html" class="active">
                                    不限                                </a></li>
                                                    <li><a data-cs-p="type_month" data-cs-l="/yj/11125/s-1-0-0-0-1.html" href="/yj/11125/s-1-0-0-0-1.html">
                                    1-2月                                </a></li>
                                                    <li><a data-cs-p="type_month" data-cs-l="/yj/11125/s-2-0-0-0-1.html" href="/yj/11125/s-2-0-0-0-1.html">
                                    3-4月                                </a></li>
                                                    <li><a data-cs-p="type_month" data-cs-l="/yj/11125/s-3-0-0-0-1.html" href="/yj/11125/s-3-0-0-0-1.html">
                                    5-6月                                </a></li>
                                                    <li><a data-cs-p="type_month" data-cs-l="/yj/11125/s-4-0-0-0-1.html" href="/yj/11125/s-4-0-0-0-1.html">
                                    7-8月                                </a></li>
                                                    <li><a data-cs-p="type_month" data-cs-l="/yj/11125/s-5-0-0-0-1.html" href="/yj/11125/s-5-0-0-0-1.html">
                                    9-10月                                </a></li>
                                                    <li><a data-cs-p="type_month" data-cs-l="/yj/11125/s-6-0-0-0-1.html" href="/yj/11125/s-6-0-0-0-1.html">
                                    11-12月                                </a></li>
                                            </ul>
                </div>
            </div>
                    <div class="tn-dropdown dropdown-cost">
                <div class="dropdown-trigger"><span>按人均</span><i class="icon-dropdown"></i></div>
                <div class="dropdown-menu">
                    <ul>
                                                                            <li><a data-cs-p="type_cost" data-cs-l="/yj/11125/s-0-0-0-0-1.html" href="/yj/11125/s-0-0-0-0-1.html" class="active">
                                    不限                                </a></li>
                                                    <li><a data-cs-p="type_cost" data-cs-l="/yj/11125/s-0-1-0-0-1.html" href="/yj/11125/s-0-1-0-0-1.html">
                                    1-999                                </a></li>
                                                    <li><a data-cs-p="type_cost" data-cs-l="/yj/11125/s-0-2-0-0-1.html" href="/yj/11125/s-0-2-0-0-1.html">
                                    1K-6K                                </a></li>
                                                    <li><a data-cs-p="type_cost" data-cs-l="/yj/11125/s-0-3-0-0-1.html" href="/yj/11125/s-0-3-0-0-1.html">
                                    6K-20K                                </a></li>
                                                    <li><a data-cs-p="type_cost" data-cs-l="/yj/11125/s-0-4-0-0-1.html" href="/yj/11125/s-0-4-0-0-1.html">
                                    20K以上                                </a></li>
                                            </ul>
                </div>
            </div>
                    <div class="tn-dropdown dropdown-who">
                <div class="dropdown-trigger"><span>按人物</span><i class="icon-dropdown"></i></div>
                <div class="dropdown-menu">
                    <ul>
                                                                            <li><a data-cs-p="type_who" data-cs-l="/yj/11125/s-0-0-0-0-1.html" href="/yj/11125/s-0-0-0-0-1.html" class="active">
                                    不限                                </a></li>
                                                    <li><a data-cs-p="type_who" data-cs-l="/yj/11125/s-0-0-1-0-1.html" href="/yj/11125/s-0-0-1-0-1.html">
                                    一个人                                </a></li>
                                                    <li><a data-cs-p="type_who" data-cs-l="/yj/11125/s-0-0-2-0-1.html" href="/yj/11125/s-0-0-2-0-1.html">
                                    小两口                                </a></li>
                                                    <li><a data-cs-p="type_who" data-cs-l="/yj/11125/s-0-0-3-0-1.html" href="/yj/11125/s-0-0-3-0-1.html">
                                    带小孩                                </a></li>
                                                    <li><a data-cs-p="type_who" data-cs-l="/yj/11125/s-0-0-4-0-1.html" href="/yj/11125/s-0-0-4-0-1.html">
                                    家庭出游                                </a></li>
                                                    <li><a data-cs-p="type_who" data-cs-l="/yj/11125/s-0-0-5-0-1.html" href="/yj/11125/s-0-0-5-0-1.html">
                                    和朋友                                </a></li>
                                                    <li><a data-cs-p="type_who" data-cs-l="/yj/11125/s-0-0-9-0-1.html" href="/yj/11125/s-0-0-9-0-1.html">
                                    其它                                </a></li>
                                            </ul>
                </div>
            </div>
                    <div class="tn-dropdown dropdown-travel_style">
                <div class="dropdown-trigger"><span>按形式</span><i class="icon-dropdown"></i></div>
                <div class="dropdown-menu">
                    <ul>
                                                                            <li><a data-cs-p="type_travel_style" data-cs-l="/yj/11125/s-0-0-0-0-1.html" href="/yj/11125/s-0-0-0-0-1.html" class="active">
                                    不限                                </a></li>
                                                    <li><a data-cs-p="type_travel_style" data-cs-l="/yj/11125/s-0-0-0-1-1.html" href="/yj/11125/s-0-0-0-1-1.html">
                                    自由行                                </a></li>
                                                    <li><a data-cs-p="type_travel_style" data-cs-l="/yj/11125/s-0-0-0-2-1.html" href="/yj/11125/s-0-0-0-2-1.html">
                                    半自由行                                </a></li>
                                                    <li><a data-cs-p="type_travel_style" data-cs-l="/yj/11125/s-0-0-0-3-1.html" href="/yj/11125/s-0-0-0-3-1.html">
                                    跟团                                </a></li>
                                                    <li><a data-cs-p="type_travel_style" data-cs-l="/yj/11125/s-0-0-0-4-1.html" href="/yj/11125/s-0-0-0-4-1.html">
                                    自驾                                </a></li>
                                                    <li><a data-cs-p="type_travel_style" data-cs-l="/yj/11125/s-0-0-0-5-1.html" href="/yj/11125/s-0-0-0-5-1.html">
                                    包车                                </a></li>
                                                    <li><a data-cs-p="type_travel_style" data-cs-l="/yj/11125/s-0-0-0-6-1.html" href="/yj/11125/s-0-0-0-6-1.html">
                                    骑行                                </a></li>
                                                    <li><a data-cs-p="type_travel_style" data-cs-l="/yj/11125/s-0-0-0-7-1.html" href="/yj/11125/s-0-0-0-7-1.html">
                                    徒步                                </a></li>
                                            </ul>
                </div>
            </div>
                <div class="tn-write"><a href="/note/create_index.php" target="_blank" class="btn-add"><i></i>写游记</a></div>
    <a href="/i/588664.html" target="_blank" class="what-treasure"><i></i>什么是目的地宝藏？</a>
</div>
<script>
    (function(){
        var traveltab = $('.tn-dropdown');
        traveltab.mouseenter(function(ev) {
            $(ev.currentTarget).addClass('dropdown-open');
        });
        traveltab.mouseleave(function(ev) {
            $(ev.currentTarget).removeClass('dropdown-open');
        });
    })();
</script>
                <div class="tn-list">
                        <div class="tn-item clearfix">
        <div class="tn-image">
            <a href="/i/3480233.html" target="_blank">
                <img class="lazy" data-original="http://file29.mafengwo.net/M00/B5/32/wKgBpVXmvPCATM5aAAd4XcPEziE91.groupinfo.w250.jpeg" width="220" height="150" alt="20 DAYS  自驾自由行 。|| 英国，和这些故事_游记">
                            </a>
        </div>
        <div class="tn-wrapper">
            <dl>
                <dt class="hasxjicon">
                                        <a class="xjicon" href="http://www.mafengwo.cn/i/5350499.html" target="_blank" title="星级游记"></a>
                                        <a href="/i/3480233.html" target="_blank">20 DAYS  自驾自由行 。|| 英国，和这些故事</a>
                                    </dt>
                <dd><a href="/i/3480233.html" target="_blank">想写点不一样的文字，是关于旅行中我印象很深的一些故事。 旅行即感受。 感受这个城市夜晚的样子，感受第一次吃到某种东西的兴奋，感受未知。 然而，我很感谢旅行。 她让我在短时间体验了许多新鲜，这些新鲜过去之后就成为了故事，这些故事又足够让我回忆许多年。 在某个奇怪的...</a></dd>
            </dl>
            <div class="tn-extra">
                <span class="tn-ding">
                    <a class="btn-ding" href="javascript:" data-japp="articleding" data-iid="3480233" data-vote="88"></a>
                    <em id="topvote3480233">88</em>
                </span>
                
                <span class="tn-user"><a href="/u/42638628.html" target="_blank" rel="nofollow"><img src="http://file29.mafengwo.net/M00/AA/9A/wKgBpVXr6jCADml7AANFX_EHi6426.head.w16.jpeg">Cerisss_</a></span>
                <span class="tn-nums"><i></i>2344/52</span>
            </div>
        </div>
    </div>
                    <div class="tn-item clearfix">
        <div class="tn-image">
            <a href="/i/3353326.html" target="_blank">
                <img class="lazy" data-original="http://file29.mafengwo.net/M00/D8/A6/wKgBpVVJvEmATnfjAAeHICGa6BM31.groupinfo.w250.jpeg" width="220" height="150" alt="在大不列颠的日子里—2015冬天英格兰、苏格兰的摄影故事_游记">
                            </a>
        </div>
        <div class="tn-wrapper">
            <dl>
                <dt class="hasxjicon">
                                        <a class="xjicon" href="http://www.mafengwo.cn/i/5350499.html" target="_blank" title="星级游记"></a>
                                        <a href="/i/3353326.html" target="_blank">在大不列颠的日子里—2015冬天英格兰、苏格兰的摄影故事</a>
                                    </dt>
                <dd><a href="/i/3353326.html" target="_blank">国际斯 诺克 大师赛，一月份在 伦敦 的 亚历山大 宫举行，老婆作为给大赛提供 中国 鹰眼服务的公司代表，带领技术人员赴 英国 出差，我有幸陪同她前往，共同游历了不列颠这个昔日的帝国。 我不想給喜好旅行的朋友们什么攻略模式，每个人的家庭背景文化程度认知水平偏好个性，都...</a></dd>
            </dl>
            <div class="tn-extra">
                <span class="tn-ding">
                    <a class="btn-ding" href="javascript:" data-japp="articleding" data-iid="3353326" data-vote="97"></a>
                    <em id="topvote3353326">97</em>
                </span>
                
                <span class="tn-user"><a href="/u/5196429.html" target="_blank" rel="nofollow"><img src="http://file6.mafengwo.net/M00/FF/BF/cnHhjE9VfQXxDa6bAAAY3O0eXV074.head.w16.jpeg">白蹄乌</a></span>
                <span class="tn-nums"><i></i>7747/9</span>
            </div>
        </div>
    </div>
                    <div class="tn-item clearfix">
        <div class="tn-image">
            <a href="/i/3106127.html" target="_blank">
                <img class="lazy" data-original="http://file25.mafengwo.net/M00/7C/B8/wKgB4lOo466AZEtcAA2_4uox9RY18.groupinfo.w250.jpeg" width="220" height="150" alt="90后女生一个人闯欧洲——教你一个人自拍出大片！【完结，已更新自拍心得】_游记">
                            </a>
        </div>
        <div class="tn-wrapper">
            <dl>
                <dt class="hasxjicon">
                                        <a class="xjicon" href="http://www.mafengwo.cn/i/5350499.html" target="_blank" title="星级游记"></a>
                                        <a href="/i/3106127.html" target="_blank">90后女生一个人闯欧洲——教你一个人自拍出大片！【完结，已更新自拍心得】</a>
                                    </dt>
                <dd><a href="/i/3106127.html" target="_blank"> 好多朋友们的回复不能一一回复，真不好意思。谢谢大家的支持:) 么么哒 instagram:jackieechen weibo@北京小风子 统一回答几个问题： 1. 照片都是自拍？ 我一直好奇怎么那么多人问这问题，这个贴就是一个人的旅行，专门的自拍贴. 几乎全部自拍，除非注明了不是. 有些人说不要用...</a></dd>
            </dl>
            <div class="tn-extra">
                <span class="tn-ding">
                    <a class="btn-ding" href="javascript:" data-japp="articleding" data-iid="3106127" data-vote="3850"></a>
                    <em id="topvote3106127">3850</em>
                </span>
                
                <span class="tn-user"><a href="/u/65283394.html" target="_blank" rel="nofollow"><img src="http://file28.mafengwo.net/M00/2A/F5/wKgB6lTXuS2AJMyRAAHW-iI7elI64.head.w16.jpeg">北京小风子</a></span>
                <span class="tn-nums"><i></i>141286/1043</span>
            </div>
        </div>
    </div>
                    <div class="tn-item clearfix">
        <div class="tn-image">
            <a href="/i/3417038.html" target="_blank">
                <img class="lazy" data-original="http://file29.mafengwo.net/M00/DB/04/wKgBpVWU4zuAJ6dAAA1_8OZyhys80.groupinfo.w250.jpeg" width="220" height="150" alt="#消夏计划#苏格兰高地+英格兰乡村自驾多图美瞎眼_游记">
                            </a>
        </div>
        <div class="tn-wrapper">
            <dl>
                <dt class="hasxjicon">
                                        <a class="xjicon" href="http://www.mafengwo.cn/i/5350499.html" target="_blank" title="星级游记"></a>
                                        <a href="/i/3417038.html" target="_blank">#消夏计划#苏格兰高地+英格兰乡村自驾多图美瞎眼</a>
                                    </dt>
                <dd><a href="/i/3417038.html" target="_blank">本人性情懒散，因此出行的安排也是显得较为松散凌乱，话说4月想起 苏格兰 ，便上网做了些功课查了一些资料，毅然买了6月机票整理材料办签证去了 蒙编辑错爱，本篇天马行空般胡乱堆砌的准游记推荐为消夏计划入围篇，于是静下心来稍稍再做些整理，增添一些可能可以参考借鉴的行程...</a></dd>
            </dl>
            <div class="tn-extra">
                <span class="tn-ding">
                    <a class="btn-ding" href="javascript:" data-japp="articleding" data-iid="3417038" data-vote="98"></a>
                    <em id="topvote3417038">98</em>
                </span>
                
                <span class="tn-user"><a href="/u/19535725.html" target="_blank" rel="nofollow"><img src="http://file30.mafengwo.net/M00/0C/45/wKgBpVYF3pSARDPHAAEgX9vdlN036.head.w16.jpeg">生火</a></span>
                <span class="tn-nums"><i></i>1719/24</span>
            </div>
        </div>
    </div>
                    <div class="tn-item clearfix">
        <div class="tn-image">
            <a href="/i/3317127.html" target="_blank">
                <img class="lazy" data-original="http://file27.mafengwo.net/M00/68/62/wKgB6lUEfH2AU-FqAAYMPRLBJJY08.groupinfo.w250.jpeg" width="220" height="150" alt="【我在英国天气晴~~】详细又啰嗦~~爱丁堡、约克、牛津、伦敦~9天8夜休闲游~_游记">
                            </a>
        </div>
        <div class="tn-wrapper">
            <dl>
                <dt class="hasxjicon">
                                        <a class="xjicon" href="http://www.mafengwo.cn/i/5350499.html" target="_blank" title="星级游记"></a>
                                        <a href="/i/3317127.html" target="_blank">【我在英国天气晴~~】详细又啰嗦~~爱丁堡、约克、牛津、伦敦~9天8夜休闲游~</a>
                                    </dt>
                <dd><a href="/i/3317127.html" target="_blank">其实以前我从来没想过，我踏上 欧洲 大陆的第一个国家会是 英国 ~因为我一直觉得我到 欧洲 ，应该会先去 法国 、 意大利 、 希腊 ~~ 而到 英国 旅行一开始就是一个很仓促的决定，只是跟朋友聊着聊着就决定了以这个绅士的国度作为我十一旅行的目的地，也算是一个失心疯的决定~~ ...</a></dd>
            </dl>
            <div class="tn-extra">
                <span class="tn-ding">
                    <a class="btn-ding" href="javascript:" data-japp="articleding" data-iid="3317127" data-vote="322"></a>
                    <em id="topvote3317127">322</em>
                </span>
                
                <span class="tn-user"><a href="/u/5627656.html" target="_blank" rel="nofollow"><img src="http://file21.mafengwo.net/M00/06/71/wKgB3FGBJjaAaW5hAAHoLMJMMxE11.head.w16.jpeg">kristy宝</a></span>
                <span class="tn-nums"><i></i>11322/59</span>
            </div>
        </div>
    </div>
                    <div class="tn-item clearfix">
        <div class="tn-image">
            <a href="/i/887001.html" target="_blank">
                <img class="lazy" data-original="http://file7.mafengwo.net/M00/99/26/wKgByU-xNnvvWfXQAAJAbwRqhh884.groupinfo.w250.jpeg" width="220" height="150" alt="[英国] 爱丁堡 Edinburgh - 600年历史的五星级下午茶_游记">
                            </a>
        </div>
        <div class="tn-wrapper">
            <dl>
                <dt >
                                        <a href="/i/887001.html" target="_blank">[英国] 爱丁堡 Edinburgh - 600年历史的五星级下午茶</a>
                                    </dt>
                <dd><a href="/i/887001.html" target="_blank"> 下午茶，對於我來說就是一種偷得浮生半日閑的美妙! 午後的溫暖陽光（特色是在蘇格蘭這個陽光是奢侈品的地方） 加上 味蕾的滋潤 和 與三五好友一起八卦八卦，讓我們忙碌的身心都可以得到一絲寬慰! 說到這裡，Summer不禁沒底氣起來，因為作為學生的我，真的沒有那麼忙碌... Summ...</a></dd>
            </dl>
            <div class="tn-extra">
                <span class="tn-ding">
                    <a class="btn-ding" href="javascript:" data-japp="articleding" data-iid="887001" data-vote="92"></a>
                    <em id="topvote887001">92</em>
                </span>
                
                <span class="tn-user"><a href="/u/5039482.html" target="_blank" rel="nofollow"><img src="http://file6.mafengwo.net/M00/38/2D/wKgBt098cCGH7XYwAAAuz1E7CSc26.head.w16.jpeg">Summer舒逸</a></span>
                <span class="tn-nums"><i></i>15826/52</span>
            </div>
        </div>
    </div>
                    <div class="tn-item clearfix">
        <div class="tn-image">
            <a href="/i/768756.html" target="_blank">
                <img class="lazy" data-original="http://file12.mafengwo.net/M00/14/23/wKgBpU6vZM2aDIARAAH3y-w4qfQ40.groupinfo.w250.jpeg" width="220" height="150" alt="2011年8月英国爱尔兰16日自驾之旅之八：爱丁堡_游记">
                            </a>
        </div>
        <div class="tn-wrapper">
            <dl>
                <dt >
                                        <a href="/i/768756.html" target="_blank">2011年8月英国爱尔兰16日自驾之旅之八：爱丁堡</a>
                                    </dt>
                <dd><a href="/i/768756.html" target="_blank"> 第八篇：爱丁堡 位于苏格兰东海岸入海口，雄据于延绵的火山灰和岩石峭壁上，与大部分欧洲城市相比，爱丁堡拥有优越 的地理位置,是市中心分为两部分：旧城，由世界著名的城堡占据，周围环绕的优美的鹅卵石甬道把苏格兰的过去和现在紧密联系在一起；新城是幽雅杰出的乔治亚设计...</a></dd>
            </dl>
            <div class="tn-extra">
                <span class="tn-ding">
                    <a class="btn-ding" href="javascript:" data-japp="articleding" data-iid="768756" data-vote="9"></a>
                    <em id="topvote768756">9</em>
                </span>
                
                <span class="tn-user"><a href="/u/15012240.html" target="_blank" rel="nofollow"><img src="http://file12.mafengwo.net/M00/7C/97/wKgBpU6orjTUPJPnAAAQor3fOmI02.head.w16.jpeg">伯言</a></span>
                <span class="tn-nums"><i></i>2839/14</span>
            </div>
        </div>
    </div>
                    <div class="tn-item clearfix">
        <div class="tn-image">
            <a href="/i/5338199.html" target="_blank">
                <img class="lazy" data-original="http://file30.mafengwo.net/M00/33/A5/wKgBpVXv49SAFCgfAAtc9IMUfd863.groupinfo.w250.jpeg" width="220" height="150" alt="【2015.6月英国+法国】初识英伦，邂逅巴黎 ，20天蜜月之旅_游记">
                            </a>
        </div>
        <div class="tn-wrapper">
            <dl>
                <dt >
                                        <a href="/i/5338199.html" target="_blank">【2015.6月英国+法国】初识英伦，邂逅巴黎 ，20天蜜月之旅</a>
                                    </dt>
                <dd><a href="/i/5338199.html" target="_blank"> 因为老公多年的的 利物浦 足球梦，我的英伦情节，还有好友的热情邀请，蜜月果断选择 英国 深度自由行，顺便去 法国 溜达了几天。2015.5.29日-6.17日，整整20天，史上最长的一次旅行，途中各种奇遇，一路走来一路欢乐。 订机票。3月份定了目的地和时间，还没办签证买了 伦敦 往...</a></dd>
            </dl>
            <div class="tn-extra">
                <span class="tn-ding">
                    <a class="btn-ding" href="javascript:" data-japp="articleding" data-iid="5338199" data-vote="20"></a>
                    <em id="topvote5338199">20</em>
                </span>
                
                <span class="tn-user"><a href="/u/75315109.html" target="_blank" rel="nofollow"><img src="http://file29.mafengwo.net/M00/CE/E6/wKgBpVXvloKAQBaFAAbsO1XXark21.head.w16.jpeg">joy318</a></span>
                <span class="tn-nums"><i></i>333/5</span>
            </div>
        </div>
    </div>
                    <div class="tn-item clearfix">
        <div class="tn-image">
            <a href="/i/738335.html" target="_blank">
                <img class="lazy" data-original="http://file12.mafengwo.net/M00/FB/8D/wKgBpU5h89CFUZSMAAHpzW9Jmrk59.groupinfo.w250.jpeg" width="220" height="150" alt="沉寂在清风中的古堡石路 - 爱丁堡2日攻略  140P+_游记">
                            </a>
        </div>
        <div class="tn-wrapper">
            <dl>
                <dt >
                                        <a href="/i/738335.html" target="_blank">沉寂在清风中的古堡石路 - 爱丁堡2日攻略  140P+</a>
                                    </dt>
                <dd><a href="/i/738335.html" target="_blank"> 攻略相应总编的号召，把两篇文章整合在一起了，方便大家查看。 7月底请了一个月的假，去伦敦。顺便游欧洲。因为平时特忙，旅游时候就特懒，所以游记出来的内容也都会比较闲散，大概每个城市也就能玩个30%就不错了，从不奢求都看完。吃好、睡好最重要！然后尽量好好体会当地的...</a></dd>
            </dl>
            <div class="tn-extra">
                <span class="tn-ding">
                    <a class="btn-ding" href="javascript:" data-japp="articleding" data-iid="738335" data-vote="44"></a>
                    <em id="topvote738335">44</em>
                </span>
                
                <span class="tn-user"><a href="/u/403720.html" target="_blank" rel="nofollow"><img src="http://file30.mafengwo.net/M00/F9/AB/wKgBpVWiNoyAd9thAAQZrwNpe6s99.head.w16.jpeg">行行</a></span>
                <span class="tn-nums"><i></i>10316/26</span>
            </div>
        </div>
    </div>
                    <div class="tn-item clearfix">
        <div class="tn-image">
            <a href="/i/5343127.html" target="_blank">
                <img class="lazy" data-original="http://file31.mafengwo.net/M00/87/FA/wKgBs1Za5lqAeJhgAA3DVrVLd2Q09.groupinfo.w250.jpeg" width="220" height="150" alt="苏格兰--女汉子们的两天三日大暴走记录（非常省钱篇）_游记">
                            </a>
        </div>
        <div class="tn-wrapper">
            <dl>
                <dt >
                                        <a href="/i/5343127.html" target="_blank">苏格兰--女汉子们的两天三日大暴走记录（非常省钱篇）</a>
                                    </dt>
                <dd><a href="/i/5343127.html" target="_blank">大学毕业五年，室友都各自奔天涯，两傻妞来 英国 的决定也是匆匆忙忙， 英国 机票没有提早订，又是夏日 英国 旅游高峰期，近一万的机票的花费已经让豪华游的心支离破碎。虽然经济基础决定上层建筑，但是实现梦想的心不能被羁绊，女汉子们出发啦。 首先，本着穷游到底，暴走万岁...</a></dd>
            </dl>
            <div class="tn-extra">
                <span class="tn-ding">
                    <a class="btn-ding" href="javascript:" data-japp="articleding" data-iid="5343127" data-vote="22"></a>
                    <em id="topvote5343127">22</em>
                </span>
                
                <span class="tn-user"><a href="/u/91879471.html" target="_blank" rel="nofollow"><img src="http://file32.mafengwo.net/M00/54/5F/wKgBs1ZaFs6AcI9iABOF4TW3PPg68.head.w16.jpeg">Sarah</a></span>
                <span class="tn-nums"><i></i>635/8</span>
            </div>
        </div>
    </div>
            </div>

            <div align="right" class="m-pagination">
        <span class="count">共<span>10</span>页 / <span>139</span>条</span>                        
                                    <span class="pg-current">1</span>
                                                <a href="/yj/11125/1-0-2.html" class="pi">2</a>
                                                <a href="/yj/11125/1-0-3.html" class="pi">3</a>
                                                <a href="/yj/11125/1-0-4.html" class="pi">4</a>
                                                <a href="/yj/11125/1-0-5.html" class="pi">5</a>
                                                <a href="/yj/11125/1-0-6.html" class="pi">6</a>
                            
                    <a class="pi pg-next" href="/yj/11125/1-0-2.html">后一页</a>
            <a class="pi pg-next" href="/yj/11125/1-0-10.html">末页</a>
            </div>

        
    </div>
</div>


<div class="uploadImgMap" style="position:relative;width:100px;margin:0 auto;display: none">
    <input id="File2" type="file"  name="Filedata1" value="上传图片" accept=".jpg,.png,.jpeg,.gif" style="opacity:0;filter: alpha(opacity=0);width:90px;height:28px;top:4px;overflow:hidden;position:absolute;" />
    <input class="upFileBtn" style="font-size:20px;width:100px" type="button" value="上传图片" onclick="document.getElementById('File2').click()"/>
</div>


</div>


<script type="text/javascript">
    var map = {
            'zoom' : 0,// || 0,
            'lat'  : 55.9534287829,
            'lng'  : -3.1884384155273
        },
        amap = {"aMarks":[{"mddname":"\u66fc\u5f7b\u65af\u7279","left":"290px","top":"330px","iconcolor":"icon-b","iconfont":"true","mddid":137801},{"mddname":"\u82f1\u56fd\u6e56\u533a","left":"273px","top":"274px","iconcolor":"icon-b","iconfont":"true","mddid":16202},{"mddname":"\u8d1d\u5c14\u6cd5\u65af\u7279","left":"198px","top":"301px","iconcolor":"icon-b","iconfont":"true","mddid":11130},{"mddname":"\u7231\u4e01\u5821","left":"324px","top":"171px","iconcolor":"icon-a","iconfont":"false","mddid":11125},{"mddname":"\u82cf\u683c\u5170\u9ad8\u5730","left":"261px","top":"58px","iconcolor":"icon-b","iconfont":"false","mddid":66349},{"mddname":"\u7ebd\u5361\u65af\u5c14","left":"358px","top":"241px","iconcolor":"icon-b","iconfont":"true","mddid":135466},{"mddname":"\u683c\u62c9\u65af\u54e5","left":"261px","top":"203px","iconcolor":"icon-b","iconfont":"false","mddid":25118},{"mddname":"\u56e0\u5f17\u5185\u65af","left":"285px","top":"100px","iconcolor":"icon-b","iconfont":"true","mddid":138230},{"mddname":"\u5a01\u5ec9\u5821","left":"243px","top":"135px","iconcolor":"icon-b","iconfont":"true","mddid":21982}],"sTop":"124px","sLeft":"224px","iMddid":11125};
</script>
<link href="http://css.mafengwo.net/css/cv/css+jquery-ui-1.8.18.custom:css+hotel+date_range_picker^ZlA^1442213546.css" rel="stylesheet" type="text/css"/>
<script language="javascript" src="http://js.mafengwo.net/js/cv/js+jquery-ui-1.8.18.custom.min:js+mfw.delegation:js+ajaxupload:js+xdate:js+hotel+DateRangePicker:js+gonglve+smdd_1411:js+AScrollTop:js+jquery.lazyload.1.9.3^YlBV^1449653364.js" type="text/javascript"></script>

<script>
    (function(){
        $("img.lazy").lazyload({
            threshold : 400
        });
    })();
</script>
<link href="http://css.mafengwo.net/css/mfw-footer.css?1450422777" rel="stylesheet" type="text/css"/>





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
M.loadResource("http://js.mafengwo.net/js/cv/js+Dropdown:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+SiteSearch:js+jquery.upnum:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog^YVRb^1450937537.js");
M.loadResource("http://js.mafengwo.net/js/cv/js+M+module+TopTip:js+AHeader:js+AScrollTop:js+M+module+Storage:js+jquery.jgrowl.min:js+AMessage:js+M+module+FrequencyVerifyControl:js+M+module+FrequencySystemVerify:js+ALogin:js+jquery.tmpl:js+AFeedback:js+ACnzzGaLog:js+ARecruit^YVda^1450352382.js");
M.loadResource("http://js.mafengwo.net/js/ALazyLoad.js?1446181049");
}
</script>
<!--  底边栏footer start -->
<div> 
	<iframe  frameborder="0" scrolling="no" width="100%" height="94px" src="<c:url value='/jsps/footer.jsp'/>" ></iframe>
</div>
<!--  底边栏footer end -->
</body>
</html>
