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
<title>数据字典</title>
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
    	<li>系统管理</li>
        <li>数据字典</li>
    </ul>
</div>
<form action="datadictionary/list.do" method="post" class="form-inline">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
       <div class="form-group">
         <label class="" for="disciplineName">类型：</label>
        <input type="text" class="form-control" name="dataType" id="dataType" placeholder="">
      </div>
    <input type="submit"      value="查询"/>&nbsp;&nbsp;
    <input  type="button" onclick="javascript:location='view/system/datadictionary/datadictionary_add.jsp'"  value="添加"/>
</div>
</form>

<div align="center">
	<div class="alert alert-warning" style="margin: 0px; padding: 5px; width: 80%;display:${empty info?'none':'block'} ">
		<button type="button" class="close" data-dismiss="alert">
			<span aria-hidden="true">&times;</span>
			
		</button>
		<p align="center" style="color: red;">${info }</p>
	</div>	
</div>
<div class="row" style="padding:15px; padding-top:0px; " align="right">
	<display:table class="table  table-condensed table-striped" name="list"  pagesize="10" requestURI="datadictionary/list.do">
		 
		<display:column  property="dataContent" title="名称"/>
		<display:column property="dataType" title="类型"/>
		<display:column property="dataDesc" title="描述"/>
		<display:column href="datadictionary/load.do" paramId="dataId" paramProperty="dataId" value="修改"  title="修改"/>
		<display:column href="datadictionary/delete.do"  paramId="dataId" paramProperty="dataId"  value="删除"  title="删除"/>
	</display:table>
</div>

</body>
</html>