<%@page import="java.io.PrintWriter"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*,bean.Say,dao.SayDao"%>
<%@page import="dao.SayDao" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>许鲜留言墙</title>
<!-- //收藏用logo图标<!--  --> 
    <link rel="bookmark"  type="image/x-icon"  href="/xuxian/Images/title.ico"/>
   <!--  //网站显示页logo图标 -->
    <link rel="shortcut icon" href="/xuxian/Images/title.ico">
<link rel="stylesheet" href="./Css/index.css" />
<script type="text/javascript" src='./js/jquery-1.7.2.min.js'></script>
<script type="text/javascript" src='./js/index1.js'></script>
</head>
<body style='overflow-y: scroll;'>
	<%
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		List<Say> sayList=new ArrayList<Say>();
	    SayDao dao = new SayDao();		
        sayList=dao.findAll();
        HttpSession session2 = request.getSession();
        session2.setAttribute("sayList", sayList);
	%>
	<div id='top'>
		<div align="right">
			<%
				HttpSession session1 = request.getSession();
				String name = (String) session1.getAttribute("name");
			%>
			<%
				if (name == null) {
			%>
			<b><font size=4 color=#FBEB32><span id="span1">欢迎游客进入许鲜网！<%-- ，<%=name%>! --%>
				</span>
			</font>
			</b>
			<%
				} else {
			%>
			<b><font size=4 color=#FBEB32><span id="span1">你好<%=name%>!</span>
			</font>
			</b>
			<form action="loginOut" method="post" style="display: inline;">
				&nbsp;<input type="submit" value="注销"
					style="height:18px;width:100px;color:green;font-size:10px;font-weight:900 "></input>
			</form>
			<%
				}
			%>
		</div>
		<span id='send'></span>
	</div>
	<div id='main'>
		<c:forEach items="${sayList }" var="say">
			<c:if test="${say.say_id%4==0 }">
				<dl class='paper a1'>
					<dt>
					    <span class='username'>许鲜网</span>
						<span class='num'>${say.say_username }</span>
					</dt>
					<dd class='content'>${say.say_content }</dd>
					<dd class='bottom'>
						<span class='time'>${say.say_time }</span> <a href=""
							class='close'></a>
					</dd>
				</dl>
			</c:if>
			<c:if test="${say.say_id%4==1 }">
				<dl class='paper a2'>
					<dt>
					     <span class='username'>许鲜网</span>
						<span class='num'>${say.say_username }</span>
					</dt>
					<dd class='content'>${say.say_content }</dd>
					<dd class='bottom'>
						<span class='time'>${say.say_time }</span> <a href="" class='close'></a>
					</dd>
				</dl>
			</c:if>
			<c:if test="${say.say_id%4==2 }">
				<dl class='paper a3'>
					<dt>
					    <span class='username'>许鲜网</span>
						<span class='num'>${say.say_username }</span>
					</dt>
					<dd class='content'>${say.say_content }</dd>
					<dd class='bottom'>
						<span class='time'>${say.say_time }</span> <a href="" class='close'></a>
					</dd>
				</dl>
			</c:if>
			<c:if test="${say.say_id%4==3 }">
				<dl class='paper a4'>
					<dt>
					     <span class='username'>许鲜网</span>
						<span class='num'>${say.say_username }</span>
					</dt>
					<dd class='content'>${say.say_content }</dd>
					<dd class='bottom'>
						<span class='time'>${say.say_time }</span> <a href="" class='close'></a>
					</dd>
				</dl>
			</c:if>
		</c:forEach>
	</div>
	<div id='send-form'>
		<%
			if (session.getAttribute("inf") == "n") {
		%>
		<script type="text/javascript">
			alert("请重新登录");
		</script>
		<%
			}
			if (name != null) {
		%>
		<p class='title'>
			<span>写下你的留言</span><a href="" id='close'></a>
		</p>
		<form action="addSay" name='say' method="post">
			<p>
				<label for="content">留言：(您还可以输入&nbsp;<span id='font-num'>50</span>&nbsp;个字)
				</label>
				<textarea name="content" id='content'></textarea>
				<div id='phiz'>
					<img src="./Images/phiz/zhuakuang.gif" alt="抓狂" /> <img
						src="./Images/phiz/baobao.gif" alt="抱抱" /> <img
						src="./Images/phiz/haixiu.gif" alt="害羞" /> <img
						src="./Images/phiz/ku.gif" alt="酷" /> <img
						src="./Images/phiz/xixi.gif" alt="嘻嘻" /> <img
						src="./Images/phiz/taikaixin.gif" alt="太开心" /> <img
						src="./Images/phiz/touxiao.gif" alt="偷笑" /> <img
						src="./Images/phiz/qian.gif" alt="钱" /> <img
						src="./Images/phiz/huaxin.gif" alt="花心" /> <img
						src="./Images/phiz/jiyan.gif" alt="挤眼" />
				</div>
			</p>
			<br/><br/><input type="submit" value="提   交" style="height:30px;width:130px;font-family :'Constantia,Georgia';
	font-size: 18px;
	font-weight: bold;color:#444444;background-color:#ABFFCF"  ></input>
		</form>
		<%
			} else {
		%>
		<form action="load" method="post">
			<hr></hr>
			<br /> <br />
			<br />
			<table>
				<p>亲请先登陆后再留言！</p>
			</table>
			<div>
				姓名:<input name="username" type="text"></input><br /> 密码:<input
					name="password" type="password"></input>
			</div>
			<br /> <input type="submit" value="提交"
				style="height:25px;width:100px " /> <input type="button"
				onclick="location.href='say1.jsp'" value="取消"
				style="height:25px;width:100px " />
			<p>亲还没有注册吗？快来注册吧！</p>
			<a href="reg.jsp">点我注册</a>
		</form>
		<%
			}
		%>
	</div>
</body>
</html>