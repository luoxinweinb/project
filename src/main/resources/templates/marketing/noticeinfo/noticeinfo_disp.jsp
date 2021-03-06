<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>  

<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<title>通知内容</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet"  href="resources/assets/css/bootstrap.min.css"  />
<link rel="stylesheet" href="resources/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="resources/assets/css/ace.min.css" />
<link rel="stylesheet" href="resources/assets/css/ace-rtl.min.css" />

<link rel="stylesheet" rev="stylesheet" href="<%=basePath%>/resources/css/login/style.css" type="text/css" media="all" />

<link href="<%=basePath%>/resources/css/login/validatecode.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="<%=basePath%>/resources/js/jquery-1.11.2.min.js"></script>
 <script type="text/javascript" src="<%=basePath%>/resources/js/login.js"></script>
 <script type="text/javascript" src="<%=basePath%>/resources/js/validatecode.js"></script>
 <!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>
<script  type="text/javascript" src="resources/My97DatePicker/WdatePicker.js"></script>
</head>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="<%=basePath%>/resources/images/skin.css" rel="stylesheet" type="text/css">
<body >

<div   style="height: 26px;background-color: #003333"   ></div>
<div   style="height: 36px;" align="center"> <h3>${mess.noticeTitle }</h3></div>
<div   style="height: 40px;" align="center"  >
发布时间：<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"   value="${mess.noticeTime }"/>&nbsp;&nbsp;&nbsp;&nbsp;
发布人: ${mess.userNumber }
</div>

<div   style="width:82%;height:384px;overflow:auto;margin-left: 120px;margin-right:90px;margin-bottom:30px;">
<font size="3">${mess.noticeContent }</font></div>
 <p align="center"><a href="view/index.jsp">返 回</a></p>
  <!-- 包含版权信息 -->
  <jsp:include page="/view/right1.jsp"></jsp:include>
</body>
</html>