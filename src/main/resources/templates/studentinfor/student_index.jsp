<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<title>AHEAD信息分院教务管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script type="text/javascript">
 //禁用浏览器回退等按钮 
 window.history.forward(-1);
 window.history.forward(1);
 </script>
</head>
<frameset rows="64,*"  frameborder="NO" border="0" framespacing="0">
	<frame src="<%=basePath%>/view/studentinfor/top.jsp" noresize="noresize" frameborder="NO" name="topFrame" scrolling="no" marginwidth="0" marginheight="0" target="main" />
  <frameset cols="200,*"  rows="560,*" id="frame">
	<frame src="<%=basePath%>/view/studentinfor/left.jsp" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" target="main" />
	<frame src="<%=basePath%>/view/studentinfor/right.jsp" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self" />
  </frameset>
<noframes>
  <body></body>
    </noframes>
</html>