<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include  file="jsps/top.jsp" %>
<!DOCTYPE HTML>
<!--导航栏和大图轮播用了模板：
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<html>
<head>
<title>Trip Way a Travel category Flat bootstrap Responsive  Website Template | Home:: w3layouts</title>
<link href="<c:url value='/css/bootstrap.css'/>" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js'/>"></script>
<!-- Custom Theme files -->
<link href="<c:url value='/css/style.css'/>" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }>
</script>
<meta name="keywords" content="Trip Way Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="<c:url value='/js/move-top.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/easing.js'/>"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
<!-- //end-smoth-scrolling -->
<!--pop-up-box-->
					  <script type="text/javascript" src="<c:url value='/js/modernizr.custom.53451.js'/>"></script>  
					<link href="<c:url value='/css/popup-box.css'/>" rel="stylesheet" type="text/css" media="all">
					<script src="<c:url value='/js/jquery.magnific-popup.js'/>" type="text/javascript"></script>
<!--pop-up-box-->
</head>
<body>
<!--header start here
<div class="header">
	<div class="container">
		<div class="header-main">
			<div class="header-left">
				<div class="logo">
					<a href="<c:url value='/index.jsp'/>" target="_top"><h1>穷游生</h1></a>
				</div>
				<div class="top-nav">
			<ul class="res"> 
				<li><a href="<c:url value='/index.jsp'/>" target="_top">首页</a></li>
				<li><a href="<c:url value='/jsps/city/desc.jsp'/> "target="_blank">目的地</a></li>
                <li><a href="<c:url value='/jsps/strategy/desc.jsp'/>"target="_blank">旅游攻略</a></li>
				<li><a href="<c:url value='/jsps/partner/list.jsp'/>"target="_blank">同行</a></li>
				<li><a href="<c:url value='/StrategyServlet?method=addPre'/>"target="_blank">发攻略</a></li>		
			</ul>
		</div>
			</div>
			<div class="header-right">
			   <div class="search">
			   	  <form action="<c:url value='/CityServlet?method=findByCityname'/>" method="post" >
					<input type="text"  name="cityname" value="城市 " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '城市';}"/>
					<input type="submit"  value=""/>
				  </form>
				</div>
			</div>
			<div class="header-user">
				<c:choose>
					<c:when test="${empty session_user }">
					<a href="#"> 
					<img style="width:40px; height:40px; border-radius:50%; overflow:hidden;" src="<c:url value='/images/chenkun.jpg'/>"><img/>
					</c:when>
					<c:otherwise>
					<a href="#"> <img src="<c:url value='/image/chenkun.jpg'/>"><img/><h4>陈坤</h4></a>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
header end here -->

<!--首页大图（banner）banner start here-->
<script src="js/responsiveslides.min.js"></script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>
<div class="body">
    <div class="slider">
	    <div class="callbacks_container">
	      <ul class="rslides" id="slider">
	        <li>
	          <div class="banner">
	          <div class="caption">
		          	<h3>北欧，梦想之都</h3>
					<span class="head-line"> </span>			   
	         </div>
	         </div>
	        </li>
	        <li>
	          <div class="banner1">
	          <div class="caption">
		          	<h3>澳大利亚——大海礁</h3>
					<span class="head-line"> </span>				   
	         </div>
	         </div>
	        </li>
			<li>
	          <div class="banner">
	          <div class="caption">
		          	<h3>北欧，梦想之都</h3>
					<span class="head-line"> </span>			   
	         </div>
	         </div>
	        </li>
	        <li>
	         <div class="banner2">
	           <div class="caption">
		          	<h3>旧金山——繁华的背后</h3>
					<span class="head-line"> </span>			  
	           </div>
	         </div>
	        </li>
	      </ul>
	  </div>
    </div>
<!--首页大图 end here-->

	<!--首页的城市推荐图片+假期攻略+城市攻略+景点攻略 start here-->
	<div class="index_city"><!--城市推荐图片-->
    	<div class="index_city_title">
        	<h1>假期推荐</h1>
            <h5>这个假期去哪儿</h5>
        </div>
        <div class="image">
       	    <div class="left">
        		<div class="up">
            		<img width="600px" src="images/indexCity1.jpg"/>
           	    </div>
            	<div class="down">
            		<div class="left2">
                    	<img width="290px" src="images/indexCity2.jpg"/>
                    </div>
                    <div class="left3">
                    	<img width="290px" src="images/indexCity3.jpg"/>
                    </div>
            	</div>
            </div>  
            <div class="right">
        		<div class="right1">
            		<img width="370px" src="images/indexCity4.jpg"/>
           	    </div>
            	<div class="right2">
            		<img width="370px" src="images/indexCity5.jpg"/>
            	</div>
            	<div class="right3">
            		<img width="370px" src="images/indexCity6.jpg"/>
            	</div>
            </div>
        </div>
    </div>
    <div class="body_down"><!--攻略+右边的信息栏notice-->
    	<div class="strategy"><!-- 攻略-->
    		<div class="strategy_holiday"> <!--假期攻略-->
    			<div class="title">
        			<h1>假期推荐</h1>
            		<h5>这个假期去这里</h5>
       			 </div>
                 <div class="down">
                 	<div class="story">
                    	<div class="leftimage"><a href="#"><img  src="images/strategy_face1.jpeg" width="220px" height="150px"/></a></div>
                        <div class="righttext">
                        	<div class="right1"><!--题目和简要介绍-->
                        		<h4><a href="#">走！夏末的厦门和金门，再过一个潮湿的夏天！~</a></h4>
                                <h5><a href="#">2015年09月16日，我向自己预约了这篇游记，当时我说： 3月的某天-9月的某天， 我计划去 俄罗斯 ， 出发前，我敲下了这些文字： 每个人在他的人生发轫之初，总有一段时光，没有什么可留恋，只有抑制不住的梦想，</a></h5>
                        	</div>
                        	<div class="right2"><!--浏览量什么的-->
                        		<ul class="liebiao">
                                	<li><a href="#">厦门 , by</a></li>
                                	<li><a href="#"><img src="images/user1.jpeg" width="25" height="25" style="border-radius:50%; overflow:hidden;"/>风一样的少年</a> </li>	
                                	<li><a href="#">阅读：2310/50</a></li>
                                    
                                </ul>
                       		</div>
                        </div>
                    </div>
                    <div class="story">
                    	<div class="leftimage"><a href="#"><img  src="images/strategy_face2.jpeg" width="220px" height="150px"/></a></div>
                    	<div class="righttext">
                        	<div class="right1"><!--题目和简要介绍-->
                        		<h4><a href="#">走！夏末的厦门和金门，再过一个潮湿的夏天！~</a></h4>
                                <h5><a href="#">2015年09月16日，我向自己预约了这篇游记，当时我说： 3月的某天-9月的某天， 我计划去 俄罗斯 ， 出发前，我敲下了这些文字： 每个人在他的人生发轫之初，总有一段时光，没有什么可留恋，只有抑制不住的梦想，</a></h5>
                        	</div>
                        	<div class="right2"><!--浏览量什么的-->
                        		<ul class="liebiao">
                                	<li><a href="#">厦门 , by</a></li>
                                	<li><a href="#"><img src="images/user2.jpg" width="25" height="25" style="border-radius:50%; overflow:hidden;"/>风一样的少年</a> </li>	
                                	<li><a href="#">阅读：2310/50</a></li>
                                    
                                </ul>
                       		</div>
                        </div>
                    </div>
                    <div class="story">
                    	<div class="leftimage"><a href="#"><img  src="images/strategy_face3.jpeg" width="220px" height="150px"/></a></div>
                    	<div class="righttext">
                        	<div class="right1"><!--题目和简要介绍-->
                        		<h4><a href="#">走！夏末的厦门和金门，再过一个潮湿的夏天！~</a></h4>
                                <h5><a href="#">2015年09月16日，我向自己预约了这篇游记，当时我说： 3月的某天-9月的某天， 我计划去 俄罗斯 ， 出发前，我敲下了这些文字： 每个人在他的人生发轫之初，总有一段时光，没有什么可留恋，只有抑制不住的梦想，</a></h5>
                        	</div>
                        	<div class="right2"><!--浏览量什么的-->
                        		<ul class="liebiao">
                                	<li><a href="#">厦门 , by</a></li>
                                	<li><a href="#"><img src="images/user3.jpeg" width="25" height="25" style="border-radius:50%; overflow:hidden;"/>风一样的少年</a> </li>	
                                	<li><a href="#">阅读：2310/50</a></li>
                                    
                                </ul>
                       		</div>
                        </div>
                    </div>
                 </div>
    		</div>
			<div class="strategy_city"> <!--城市攻略-->
    			<div class="title">
        			<h1>美丽城市</h1>
            		<h5>带着攻略去旅行</h5>
       			 </div>
                 <div class="down">
                 	<div class="story">
                    	<div class="leftimage"><a href="#"><img  src="images/strategy_face1.jpeg" width="220px" height="150px"/></a></div>
                        <div class="righttext">
                        	<div class="right1"><!--题目和简要介绍-->
                        		<h4><a href="#">走！夏末的厦门和金门，再过一个潮湿的夏天！~</a></h4>
                                <h5><a href="#">2015年09月16日，我向自己预约了这篇游记，当时我说： 3月的某天-9月的某天， 我计划去 俄罗斯 ， 出发前，我敲下了这些文字： 每个人在他的人生发轫之初，总有一段时光，没有什么可留恋，只有抑制不住的梦想，</a></h5>
                        	</div>
                        	<div class="right2"><!--浏览量什么的-->
                        		<ul class="liebiao">
                                	<li><a href="#">厦门 , by</a></li>
                                	<li><a href="#"><img src="images/user1.jpeg" width="25" height="25" style="border-radius:50%; overflow:hidden;"/>风一样的少年</a> </li>	
                                	<li><a href="#">阅读：2310/50</a></li>
                                    
                                </ul>
                       		</div>
                        </div>
                    </div>
                    <div class="story">
                    	<div class="leftimage"><a href="#"><img  src="images/strategy_face2.jpeg" width="220px" height="150px"/></a></div>
                    	<div class="righttext">
                        	<div class="right1"><!--题目和简要介绍-->
                        		<h4><a href="#">走！夏末的厦门和金门，再过一个潮湿的夏天！~</a></h4>
                                <h5><a href="#">2015年09月16日，我向自己预约了这篇游记，当时我说： 3月的某天-9月的某天， 我计划去 俄罗斯 ， 出发前，我敲下了这些文字： 每个人在他的人生发轫之初，总有一段时光，没有什么可留恋，只有抑制不住的梦想，</a></h5>
                        	</div>
                        	<div class="right2"><!--浏览量什么的-->
                        		<ul class="liebiao">
                                	<li><a href="#">厦门 , by</a></li>
                                	<li><a href="#"><img src="images/user2.jpg" width="25" height="25" style="border-radius:50%; overflow:hidden;"/>风一样的少年</a> </li>	
                                	<li><a href="#">阅读：2310/50</a></li>
                                    
                                </ul>
                       		</div>
                        </div>
                    </div>
                    <div class="story">
                    	<div class="leftimage"><a href="#"><img  src="images/strategy_face3.jpeg" width="220px" height="150px"/></a></div>
                    	<div class="righttext">
                        	<div class="right1"><!--题目和简要介绍-->
                        		<h4><a href="#">走！夏末的厦门和金门，再过一个潮湿的夏天！~</a></h4>
                                <h5><a href="#">2015年09月16日，我向自己预约了这篇游记，当时我说： 3月的某天-9月的某天， 我计划去 俄罗斯 ， 出发前，我敲下了这些文字： 每个人在他的人生发轫之初，总有一段时光，没有什么可留恋，只有抑制不住的梦想，</a></h5>
                        	</div>
                        	<div class="right2"><!--浏览量什么的-->
                        		<ul class="liebiao">
                                	<li><a href="#">厦门 , by</a></li>
                                	<li><a href="#"><img src="images/user3.jpeg" width="25" height="25" style="border-radius:50%; overflow:hidden;"/>风一样的少年</a> </li>	
                                	<li><a href="#">阅读：2310/50</a></li>
                                    
                                </ul>
                       		</div>
                        </div>
                    </div>
                 </div>
  	    	</div>
  	    	<div class="strategy_attraction"> <!--景点攻略-->
    			<div class="title">
        			<h1>甄选景点</h1>
            		<h5>让心贴近大自然</h5>
       			 </div>
                 <div class="down">
                 	<div class="story">
                    	<div class="leftimage"><a href="#"><img  src="images/strategy_face1.jpeg" width="220px" height="150px"/></a></div>
                        <div class="righttext">
                        	<div class="right1"><!--题目和简要介绍-->
                        		<h4><a href="#">走！夏末的厦门和金门，再过一个潮湿的夏天！~</a></h4>
                                <h5><a href="#">2015年09月16日，我向自己预约了这篇游记，当时我说： 3月的某天-9月的某天， 我计划去 俄罗斯 ， 出发前，我敲下了这些文字： 每个人在他的人生发轫之初，总有一段时光，没有什么可留恋，只有抑制不住的梦想，</a></h5>
                        	</div>
                        	<div class="right2"><!--浏览量什么的-->
                        		<ul class="liebiao">
                                	<li><a href="#">厦门 , by</a></li>
                                	<li><a href="#"><img src="images/user1.jpeg" width="25" height="25" style="border-radius:50%; overflow:hidden;"/>风一样的少年</a> </li>	
                                	<li><a href="#">阅读：2310/50</a></li>
                                    
                                </ul>
                       		</div>
                        </div>
                    </div>
                    <div class="story">
                    	<div class="leftimage"><a href="#"><img  src="images/strategy_face2.jpeg" width="220px" height="150px"/></a></div>
                    	<div class="righttext">
                        	<div class="right1"><!--题目和简要介绍-->
                        		<h4><a href="#">走！夏末的厦门和金门，再过一个潮湿的夏天！~</a></h4>
                                <h5><a href="#">2015年09月16日，我向自己预约了这篇游记，当时我说： 3月的某天-9月的某天， 我计划去 俄罗斯 ， 出发前，我敲下了这些文字： 每个人在他的人生发轫之初，总有一段时光，没有什么可留恋，只有抑制不住的梦想，</a></h5>
                        	</div>
                        	<div class="right2"><!--浏览量什么的-->
                        		<ul class="liebiao">
                                	<li><a href="#">厦门 , by</a></li>
                                	<li><a href="#"><img src="images/user2.jpg" width="25" height="25" style="border-radius:50%; overflow:hidden;"/>风一样的少年</a> </li>	
                                	<li><a href="#">阅读：2310/50</a></li>
                                    
                                </ul>
                       		</div>
                        </div>
                    </div>
                    <div class="story">
                    	<div class="leftimage"><a href="#"><img  src="images/strategy_face3.jpeg" width="220px" height="150px"/></a></div>
                    	<div class="righttext">
                        	<div class="right1"><!--题目和简要介绍-->
                        		<h4><a href="#">走！夏末的厦门和金门，再过一个潮湿的夏天！~</a></h4>
                                <h5><a href="#">2015年09月16日，我向自己预约了这篇游记，当时我说： 3月的某天-9月的某天， 我计划去 俄罗斯 ， 出发前，我敲下了这些文字： 每个人在他的人生发轫之初，总有一段时光，没有什么可留恋，只有抑制不住的梦想，</a></h5>
                        	</div>
                        	<div class="right2"><!--浏览量什么的-->
                        		<ul class="liebiao">
                                	<li><a href="#">厦门 , by</a></li>
                                	<li><a href="#"><img src="images/user3.jpeg" width="25" height="25" style="border-radius:50%; overflow:hidden;"/>风一样的少年</a> </li>	
                                	<li><a href="#">阅读：2310/50</a></li>
                                    
                                </ul>
                       		</div>
                        </div>
                    </div>
                 </div>
  		   	</div>
   	    </div>
        <div class="notice"><!-- 信息栏-->
        	<h2 align="center">最新消息</h2>
        	<br/><br/>
        	<h5>&nbsp;穷游生大学生旅游网v1.0版本上线啦！</h5><br/>
        	<h5>&nbsp;用户 陈坤 上传了一篇新的游记——云南的深秋</h5><br/>
        	<h5>&nbsp;用户 陈坤的"云南的深秋"攻略被神明选中成为精华攻略</h5><br/>
        </div>
    </div>
	<!--首页的城市推荐图片+假期攻略+城市攻略+景点攻略 end here-->

</div>
<!--body的div end here--> 
<!--footer start here-->
<div class="footer">
	<div class="container">
		<div class="footer-main">
			<p>年轻，就要去旅行</p>
            <p>© 2015 Mafengwo.cn 京ICP备11015476号 京公网安备110105013401号 京ICP证110318号 新出网证(京)字242号</p>
			<p>全国统一客服电话：4006-345-678网站地图</p>
		</div>
	</div>
</div>
<!--footer end here-->
</body>
</html>
