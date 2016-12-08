<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'header1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <img width="0" height="0" src="/xuxian/picture/logo_350.png" style="position: fixed;width:0px;height:0px;left: -500px;" >
<!-- 页头 start -->
<div class="header">
   <div class="header-top">
    <div class="hd-box">
      <h1 class="logo"><a href="/" title="许鲜网"><img src="/xuxian/picture/logo.png"/></a></h1>
       <div class="choose_cy" ><a href="/index.php?controller=site&action=address#xzthd">[长沙市]</a></div>
      <div class="delivery-point">
        <p class="delivery-title">提货点</p>
        <p id="store" class="delivery-addr"></p>
        <SCRIPT type="text/javascript">
	         var aCookie = document.cookie.split("; ");
	         for (var i=0; i < aCookie.length; i++)
	         {
		          var aCrumb = aCookie[i].split("=");
		          if ('storename' == aCrumb[0])
		          {
			          $('#store').html(decodeURIComponent(aCrumb[1]));
		          break;
		          }
	         }
	
        </SCRIPT>
        <span class="icon-down">&nbsp;</span> </div>
     
      <div class="hd-search">
        <form method="get" id="word_form">
          <input name="controller" value="site" type="hidden">
          <input name="action" value="search_list" type="hidden">
          <input class="s-input" name="word" autocomplete="off" placeholder="搜索水果" type="text" style="height: 39px; width: 207px">
          <input class="btn-search" value="搜索" type="submit">
        </form>
      </div>

        <ul class="user-nav">
				
				<li class="faq"><a href="http://www.xuxian.com/index.php?controller=site&action=help&id=45" target="_blank">FAQ</a></li>
         				<li class="user-account">
				<a class="userloginn userloginn_reg" href="/index.php?controller=simple&action=reg">注册&nbsp;/</a>&nbsp;<a class="userloginn" href="/index.php?controller=simple&action=login">登录</a>
				</li>
				        </ul>
    </div></div>
    <div class="hd-wrap"><div class="nav-box clearfix">
      <div class="nav-lt">
        <div class="nav-all"><i class="icon-category"></i>全部分类<i class="icon-down"></i></div>
      </div>
      <!-- 全部分类列表 start -->
      <div class="drop-down" style="display: none;">
        <div class="box_xg" style="border:4px solid #e1e1e1; background-color: #fff;">
          <div class="drop-bd">
            <h2 style="padding:0px 20px;">水果</h2>
            <div class="nav-list"> 
            	<a href="caomei.jsp"><img src="/xuxian/picture/10.jpg" />草莓</a>
				<a href="#"><img src="/xuxian/picture/3.jpg" />苹果</a>
				<a href="#"><img src="/xuxian/picture/9.jpg"/>香蕉</a>
				<a href="#"><img src="/xuxian/picture/8.jpg"/>梨</a>
				<a href="#"><img src="/xuxian/picture/6.jpg" />柚子</a>
				<a href="#"><img src="/xuxian/picture/7.jpg" />菠萝</a>
				<a href="#"><img src="/xuxian/picture/18.jpg" />哈密瓜</a>
				<a href="#"><img src="/xuxian/picture/20.jpg" />圣女果</a>
			    <a href="#"><img  src="/xuxian/picture/15.jpg" />柑橘</a>
				<a href="#"><img src="/xuxian/picture/21.jpg" />山竹</a>
				<a href="#"><img src="/xuxian/picture/2.jpg" />橙子</a>
				<a href="#"><img src="/xuxian/picture/13.jpg" />柠檬</a>
				<a href="#"><img src="/xuxian/picture/22.jpg" />椰子</a>
				<a href="#"><img src="/xuxian/picture/14.jpg" />木瓜</a>
				<a href="#"><img src="/xuxian/picture/24.jpg" />榴莲</a>
				<a href="#"><img src="/xuxian/picture/5.jpg" />西瓜</a>
				<a href="#"><img src="/xuxian/picture/4.jpg" />桃子</a>
				<a href="#"><img src="/xuxian/picture/25.jpg" />蓝莓</a>
				<a href="#"><img src="/xuxian/picture/17.jpg" />葡萄</a>
				<a href="#"><img src="/xuxian/picture/11.jpg" />火龙果</a>
				<a href="#"><img src="/xuxian/picture/16.jpg" />其他</a>
				<a href="#"><img src="/xuxian/picture/26.jpg" />黄瓜</a>
				<a href="#"><img src="/xuxian/picture/27.jpg" />李杏</a>
				<a href="#"><img src="/xuxian/picture/1.jpg" />甜瓜</a>
				<a href="#"><img src="/xuxian/picture/23.jpg" />芒果</a>
				<a href="#"><img src="/xuxian/picture/12.jpg" />猕猴桃</a>
				<a href="#"><img src="/xuxian/picture/19.jpg" />荔枝</a>
				            </div>
          </div>
          <div class="clear"></div>
        </div>
        <div class="clear"></div>
        <div class="drop-hd"> <a href="javascript:;" class="drop-close">×close</a></div>
      </div>
      <!-- 全部分类列表 end -->
      <div class="nav-md">
      		    <a href="#" class="current">首页</a>
				<a href="#" class="">许鲜优选</a>
				<a href="#" class="">套餐</a>
	            <a href="#" class="">许鲜箱装</a>
	            <a href="#" class="">排行榜</a>
	  	        <a href="say1.jsp" class="">留言板</a> 
	  </div>



     <div id="xuxian-cart" class="nav-rt">
				<div class="cart-box">
					<i class="icon-arrow-rt"></i>
					<i class="icon-cart"></i>
					<span class="item-count"><em>0</em>个品种</span>
					<div class="totals"><span class="totals-price">¥<em id="carprice">0</em></span><a href="http://zhida.xuxian.com/index.php?controller=simple&amp;action=cart2" class="btn-fast-buy">一键购买</a></div>
				</div>
				<div class="cart-drop">
					<div class="warehouse-cart" style="overflow:auto;">

						<ul class="cart-items-list">
						</ul>
					</div>
					<div class="cart-buy-box">
						<div class="cart-buy-btn"><a href="javascript:;" onclick="buynow();"><button type="button">一键购买</button></a></div>
					</div>
				</div>
				<!-- sdfsfd -->
				<div class="cart-dropp" style="display:none;position: absolute;top:60px;background:#fff; height:auto;width:100%; z-index: 100"><ul class="other-items-list">
						</ul></div>
				<!-- sdfsdf -->
			</div>
		</div>
	</div>
	</div>
  </body>
</html>
