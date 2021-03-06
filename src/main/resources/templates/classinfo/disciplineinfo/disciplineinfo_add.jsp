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
<title>课程管理</title>
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
        <li>课程管理</li>
        <li>添加课程信息</li>
    </ul>
</div>

<form action="disciplineinfo/add.do" class="form-horizontal" method="post">
	<input type="hidden" name="disciplineIsuesd" value="1"/>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                	<input type="text" name="disciplineId" readonly="readonly" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">课程编号</label>
                <div class="col-sm-9">
               			<input type="text" name="disciplineNo" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        

    </div>
    	<div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">课程名称</label>
                <div class="col-sm-9">
                	<input type="text" name="disciplineName" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">学时</label>
                <div class="col-sm-9">
               		 <input type="text" name="disciplineBring" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>

    </div>
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">学分</label>
                <div class="col-sm-9">
               			<input type="text" name="disciplineTuition" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">课程类型</label>
                <div class="col-sm-9">
                    <select onchange="query(this)" name="disciplineType" class="form-control  input-sm">
    		             <option value="">课程类型</option>
               			  <option value="选修">选修</option>
               			  <option value="必修">必修</option>
                    </select>
               		
                </div>
            </div>
        
        </div>

    </div>

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">课程描述</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">课程描述</label>
                <div class="col-sm-9">
                	<textarea name="disciplineDesc" class="form-control"></textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	 <input  type="submit"   value="保存"/>&nbsp;&nbsp;
        	 <input  type="button" onclick="javascript:location='disciplineinfo/list.do'"  value="返回上一级"/>

        </div>
    </div>
</form>

</body>
</html>