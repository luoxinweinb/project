<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script  type="text/javascript" src="resources/My97DatePicker/WdatePicker.js"></script>
<script  type="text/javascript" src="resources/laydate/laydate.js"></script>

</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>教务管理</li>
    	<li>班级管理</li>
        <li>添加班级信息</li>
    </ul>
</div>

<form action="classinfo/add.do" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">班级编号</label>
                <div class="col-sm-9">
                	<input type="text" readonly="readonly" name="classId" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">班级名称</label>
                <div class="col-sm-9">
                	<input type="text" name="className" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>

    </div>
    
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">开班日期</label>
                <div class="col-sm-9">
               			<input type="text" name="classStartTime"  onclick="laydate()"  class="form-control input-sm" placeholder="格式：yyyy-mm-dd"/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">结束日期</label>
                <div class="col-sm-9">
               		 <input type="text" name="classEndTime"    onclick="laydate()"   class="form-control input-sm" placeholder="格式：yyyy-mm-dd"/>
                </div>
            </div>
        
        </div>

    </div>
        <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">班级人数</label>
                <div class="col-sm-9">
               			<input type="text" name="classNumber" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">班主任</label>
                <div class="col-sm-9">
               		 <select name="staffId" class="form-control input-sm">
               		    
               		 	<c:forEach items="${stafflist }" var="staff">
                     	   <option value="${staff.staffId }">${staff.staffName }</option>
                     	</c:forEach>
                     </select>
                </div>
            </div>

        </div>

    </div>
        <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">专业</label>
                <div class="col-sm-9">
               	    <select  name="classMajor" class="form-control input-sm"  size="1">
                    	<option selected="selected" value="软件技术(Java软件开发方向)">软件技术(Java软件开发方向)</option>
                        <option value="软件技术(软件测试方向)">软件技术(软件测试方向)</option>
                        <option value="软件技术(网络运营策划方向)">软件技术(网络运营策划方向)</option>
                        <option value="软件技术(美工与设计方向)">软件技术(美工与设计方向)</option>
                        <option value="软件技术(新媒体营销与策划方向)">软件技术(新媒体营销与策划方向)</option>
                        <option value="软件技术(前端开发与UI设计方向)">软件技术(前端开发与UI设计方向)</option>
                        <option value="软件技术(通信与运维方向)">软件技术(通信与运维方向)</option>
                        <option value="软件技术(Android软件开发方向)">软件技术(Android软件开发方向)</option>
                        <option value="软件技术(大数据分析方向)">软件技术(大数据分析方向)</option>
                        <option value="软件技术(VR虚拟与现实方向)">软件技术(VR虚拟与现实方向)</option>
                        <option value="软件技术(18级)">软件技术(18级)</option>
                        <option value="计算机应用技术">计算机应用技术</option>
                    </select>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">课程表</label>
                <div class="col-sm-9">
               		 <select name="syllabusId" class="form-control input-sm">
                       	<c:forEach items="${sylllist }" var="syll">
                     	<option value="${syll.syllabusId }">${syll.syllabusName }</option>
                     	</c:forEach>
                     </select>
                </div>
            </div>

        </div>

    </div>
           <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">教室</label>
                <div class="col-sm-9">
               	   <select name="classroomId" class="form-control input-sm">
                     	<c:forEach items="${roomlist }" var="room">
                     	<option value="${room.classroomId }">${room.classroomName }</option>
                     	</c:forEach>
                     </select>
                </div>
            </div>
        </div>

    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">描述</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">描述</label>
                <div class="col-sm-9">
                	<textarea name="classDesc" class="form-control"></textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit"  value="保存"/>&nbsp;&nbsp;
             <input  type="button" onclick="javascript:location='classinfo/list.do'"  value="返回上一级"/>

        </div>
    </div>
</form>

</body>
</html>