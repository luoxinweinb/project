<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<title>权限管理</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>
</head>
<body>
<form action="" class="form-horizontal" method="post">
 	<div class="row">
    	<div class="col-xs-9 ">
    	<input  type="button" onclick="javascript:location='anthorty/loadAdd.do?anthortyId=${anth.anthortyId }'"  value="添加权限信息"/>
    	<% 
    	//AnthortyInfo anthor =  (AnthortyInfo)request.getAttribute("anth");
    	//if(anthor!=null && anthor.getAnthortyId()!=1){
    	%>
    	<input  type="button" onclick="javascript:location='anthorty/loadUpdate.do?anthortyId=${anth.anthortyId }'"  value="修改权限信息"/>
       
        <input  type="button" onclick="javascript:location='anthorty/delete.do?anthortyId=${anth.anthortyId }'"  value="删除权限信息"/>
    
        <%//} %>
          
        </div>
    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-xs-5">
        	<div class="form-group">
            	<label class="col-xs-3 control-label">权限编号</label>
                <div class="col-xs-9">
                	<p class="form-control-static">${anth.anthortyId }</p>
                </div>
            </div>
        
        </div>
        <div class="col-xs-5">
            <div class="form-group">
            	<label class="col-xs-3 control-label">权限名称</label>
                <div class="col-xs-9">
                		<p class="form-control-static">${anth.anthortyName }</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-xs-5">
        	<div class="form-group">
            	<label class="col-xs-3 control-label">上级权限</label>
                <div class="col-xs-9">
                	<p class="form-control-static">${anth.panthortyName }</p>
                </div>
            </div>
        
        </div>
        <div class="col-xs-5">
            <div class="form-group">
            	<label class="col-xs-3 control-label">权限URL</label>
                <div class="col-xs-9">
                	<p class="form-control-static">${anth.anthortyUrl }</p>
                </div>
            </div>
        </div>
    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">备注信息</h5>
    	<div class="row">
    	<div class="col-xs-10">
        	<div class="form-group">
            	<label class="col-xs-3 control-label">备注</label>
                <div class="col-xs-9">
                	<p class="form-control-static">${anth.anthortyDesc }</p>
                </div>
            </div>
        
        </div>

    </div>


</form>

</body>
</html>