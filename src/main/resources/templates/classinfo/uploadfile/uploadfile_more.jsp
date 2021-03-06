<%@ page language="java" contentType="text/html; charset=UTF-8"
 import="java.util.*,java.sql.*"    pageEncoding="UTF-8"%>
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
<title>所有资料</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

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
	background-color: #1D3647;
}
-->
</style>
<link href="<%=basePath%>/resources/images/skin.css" rel="stylesheet" type="text/css">
<body >
<table width="100%" height="20" border="0" cellpadding="0" cellspacing="0" class="login_top_bg">
      <tr>
        <td width="1%" height="6">&nbsp;</td>
        <td height="6">&nbsp;</td>
        <td width="17%">&nbsp;</td>
      </tr>
</table>
    <table width="100%" height="535" border="0" cellpadding="0" cellspacing="0" class="login_bg">
      <tr>
      <td width="40%" align="right">
       <h3 align="center">资料下载</h3>
       <br/>
	 <!-- 列出所有公告-->
	 <div class="row" style="padding:15px; padding-top:0px; " align="right">
	<display:table class="table  table-condensed table-striped" name="listmore"   pagesize="10" requestURI="uploadfile/listmore.do">
		<display:column href="uploadfile/unload.do"  paramId="fileId" paramProperty="fileId"   property="fileTitle"    title=" 标 题"/>
		<display:column property="fileTime" format="{0,date,yyyy-MM-dd}"  title="上传时间"/>
	</display:table>
	<div align="center"><a href="view/index.jsp" >返回</a></div> 
   </div>
     </td>
  </tr>
</table>
  <!-- 包含版权信息 -->
  <jsp:include page="/view/right.jsp"></jsp:include>
</body>
</html>