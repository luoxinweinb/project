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
<title>短信管理</title>
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
    	<li>通知管理</li>
        <li>短信管理</li>
        <li>显示短信信息</li>
    </ul>
</div>
<form action="messafeinfo/list.do" method="post" class="form-inline">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
       <div class="form-group">
         <label class="" for="disciplineName">电话号码：</label>
        <input type="text" class="form-control" name="messafePhone" id="messafePhone" placeholder="">
      </div>
    <input type="submit"       value="查询"/>&nbsp;&nbsp;
    <input  type="button" onclick="javascript:location='messafeinfo/load.do'"  value="发送短信"/>
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
	<display:table class="table  table-condensed table-striped" name="list"  pagesize="10" requestURI="messafeinfo/list.do">
	
		<display:column  property="staffName" title="发送人"/>
		<display:column property="messafeTime" format="{0,date,yyyy-MM-dd}"  title="发送时间"/>
		<display:column property="messafeMan" title="接收人"/>
		<display:column property="messafePhone" title="接收号码"/>
		<display:column href="messafeinfo/show.do" paramId="messafeId" paramProperty="messafeId" value="查看"  title="查看"/>
		<display:column href="messafeinfo/delete.do"  paramId="messafeId" paramProperty="messafeId"  value="删除"  title="删除"/>
	</display:table>
</div>

 </form>
</body>
</html>