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
<title>文件上传</title>
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
    	 <li>上传文件</li>
         <li>上传文件</li>
    </ul>
</div>

<form action="uploadfile/upload.do" class="form-horizontal" enctype="multipart/form-data"  method="post">
 
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">标题</label>
                <div class="col-sm-9">
               			<input type="text" name="fileTitle" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">上传文件</label>
                <div class="col-sm-9">
               			<input type="file" name="fileName" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        <input type="submit"     value="上传"/> 
    </div>
    
</form>
 
</body>
</html>