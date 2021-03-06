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
<title></title>
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
    	<li>教务管理</li>
        <li>听课记录</li>
    </ul>
</div>
<form action="auditioninfo/list.do" method="post" class="form-inline">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="studentName">教师姓名：</label>
        <input type="text" class="form-control" name="studentName" id="studentName" placeholder="">
      </div>
    <div class="form-group">
         <label class="" for="auditionCourse">所听课程：</label>
		   <input type="text" class="form-control" name="auditionCourse" id="auditionCourse" placeholder="">	
      </div>
    <input type="submit"      value="查询"/>
    <input  type="button" onclick="javascript:location='auditioninfo/loadadd.do'"  value="添加记录"/>
    
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
		<display:table class="table  table-condensed table-striped" name="list"  pagesize="10" requestURI="auditioninfo/list.do">
		<display:column  href="recruitstudent/show.do" paramId="studentId" paramProperty="studentId" property="studentName" title="教师姓名" />
		<display:column property="auditionCourse" title="所听课程" />
		<display:column property="auditionContent" title="听课记录" />
		<display:column property="auditionTime" title="听课时间" format="{0,date,yyyy-MM-dd}" />
		<display:column property="auditionAddr" title="听课地点" />
		 <display:column href="auditioninfo/loadupdate.do" paramId="auditionId" paramProperty="auditionId" value="修改"  title="修改"/>
		<display:column href="auditioninfo/delete.do"  paramId="auditionId" paramProperty="auditionId"  value="删除"  title="删除"/>
</display:table>             	                
</div>
</form>
<h4 style="padding:10px; margin:0px; margin-bottom:5px;color:red">
功能实现中...
</h4>
</body>
</html>