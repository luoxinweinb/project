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
<title>管理</title>
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
        <li>家庭成员</li>
        <li>显示成员信息</li>
    </ul>
</div>
<form action="studentfamilyinfo/list.do"  method="post" class="form-inline">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="studentName">学生姓名：</label>
        <input type="text" class="form-control" name="studentName" id="studentName" placeholder="">
      </div>

    <input type="submit"       value="查询"/>&nbsp;&nbsp;
    <input  type="button" onclick="javascript:location='studentfamilyinfo/loadadd.do'"  value="添加家庭成员"/>

    
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
	<display:table class="table  table-condensed table-striped" name="list"  pagesize="10" requestURI="studentfamilyinfo/list.do">
	 
		<display:column  property="studentName" title="学生姓名"/>
		<display:column  property="familyName" title="家庭成员姓名"/>
		<display:column  property="familyApp" title="称谓"/>
		<display:column  property="familyAge" title="家庭成员年龄"/>
		<display:column  property="familyZcmm" title="政治面貌"/>
		<display:column  property="workplace" title="何处工作任职"/>
		<display:column  property="staffName" title="登记人"/>
		<display:column  property="regTime" format="{0,date,yyyy-MM-dd}" title="登记时间"/>
		

		<display:column href="studentfamilyinfo/loadupdate.do" paramId="studentFamilyId"   paramProperty="studentFamilyId"  value="修改"  title="修改"/>
		<display:column href="studentfamilyinfo/delete.do"     paramId="studentFamilyId"   paramProperty="studentFamilyId"  value="删除"  title="删除"/>
	</display:table>
</div>

</form>




</body>
</html>