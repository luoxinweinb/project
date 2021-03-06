<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
 
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<title>学生缴费</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>
</head>
<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>学生管理</li>
    	<li>缴费登记</li>
        <li>查询学生</li>
    </ul>
</div>
<form action="studentpayment/list.do" method="post" class="form-inline">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">学生姓名：</label>
        <input type="text" name="studentName" class="form-control" id="activename" placeholder="">
      </div>
    <input type="submit"     value="查询"/>
  
</div>
<div align="center">
	<div class="alert alert-warning" style="margin: 0px; padding: 5px; width: 80%;display:${empty info?'none':'block'} ">
		<button type="button" class="close" data-dismiss="alert">
			<span aria-hidden="true">&times;</span>
		</button>
		<p align="center" style="color: red;">${info }</p>
	</div>	
</div>
<div class="row" style="padding:15px; padding-top:0px; " align="right">
		<display:table class="table  table-condensed table-striped" name="list"  pagesize="10" requestURI="studentpayment/list.do">
		
		<display:column  href="studentpayment/show.do" paramId="studentId" paramProperty="studentId"  property="studentName" title="姓名"/>
        <display:column  property="studentSex" title="性别"/>
		<display:column  property="studentBirthday" title="出生年月"/>
		<display:column  property="studentTellphone" title="手机号码"/>
		<display:column  property="studentQq" title="QQ"/>
		<display:column  property="studentSchool" title="所在分院"/>
		<display:column href="studentpayment/loadpayment.do"  paramId="studentId" paramProperty="studentId"  value="学生缴费登记"  title="学生缴费登记"/>
        </display:table>          	                
</div>
</form>
</body>
</html>