<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title >许鲜网--许多美味，许诺新鲜</title>
<!-- //收藏用logo图标<!--  --> 
    <link rel="bookmark"  type="image/x-icon"  href="/xuxian/Images/icon.jpg"/>
    <title>My JSP 'reg.jsp' starting page</title>
    
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
  
 <img alt="" src="/xuxian/Images/top.jpg" width="100%" height="10%" style="position: absolute;top: 0 ">
  <table style="position: absolute; left: 10%;top: 30%">
  
 <tr><td colspan="1" style="font-size: 15px;color: blue;">注册会员</td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
				<tr>
				<td align="right" style="font-size: 15px">登录名：</td>
				<td style="color: red;">
				<input type="text" name="LoginName" value="${loginName}"
					style="width: 150" id="LoginName">*</td>
			   </tr>
			   <tr>
				<td align="right">密码：</td>
				<td style="color: red;">
				<input type="text" name="LoginName" value="${loginName}"
					style="width: 150" id="LoginName">*</td>
			   </tr><tr>
				<td align="right" >性别：</td>
				<td style="color: red;">
				<input type="text" name="LoginName" value="${loginName}"
					style="width: 150" id="LoginName">*</td>
			   </tr><tr>
				<td align="right" >联系方式：</td>
				<td style="color: red;">
				<input type="text" name="LoginName" value="${loginName}"
					style="width: 150" id="LoginName">*</td>
			   </tr><tr>
				<td align="right" >地址：</td>
				<td style="color: red;">
				<input type="text" name="LoginName" value="${loginName}"
					style="width: 150" id="LoginName">*</td>
			   </tr>
			  
	</table></br></br></br>	</br></br></br>	</br></br></br>				
   <%@include file="end.jsp" %>
  </body>
</html>
