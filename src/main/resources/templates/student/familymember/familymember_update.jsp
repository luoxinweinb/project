<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
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
    	<li>学生管理</li>
    	<li>家庭成员</li>
        <li>修改成员信息</li>
    </ul>
</div>

<form action="studentfamilyinfo/update.do" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                	<input type="text" name="studentFamilyId" value="${commum.studentFamilyId }" readonly="readonly" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学生</label>
                <div class="col-sm-9">
                	 <select name="studentId" class="form-control input-sm">
               				<c:forEach items="${stulist }" var="stu">
               					<option value="${stu.studentId }" ${commum.studentId==stu.studentId?'selected':'' } >${stu.studentName }</option>
               				</c:forEach>
               			</select>
                </div>
            </div>
        </div>

    </div>
    
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭成员姓名</label>
                <div class="col-sm-9">
               			<input type="text" name="familyName"   value="${commum.familyName }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭成员称谓</label>
                <div class="col-sm-9">
                <input type="text" name="familyApp" value="${commum.familyApp }"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>

    </div>
    
     <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">年龄</label>
                <div class="col-sm-9">
               			<input type="text" name="familyAge" value="${commum.familyAge }"   class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">政治面貌</label>
                <div class="col-sm-9">
                  <select  name="familyZcmm" class="form-control input-sm" >
                    	<option value="群众" ${commum.familyZcmm=='群众'?'selected':'' }>群众</option>
                        <option value="共青团员" ${commum.familyZcmm=='共青团员'?'selected':'' }>共青团员</option>
                        <option value="党员" ${commum.familyZcmm=='党员'?'selected':'' }>党员</option>
                    </select>
              
                </div>
            </div>
        </div>

    </div>
    
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">何处工作任职</label>
                <div class="col-sm-9">
               			<input type="text" name="workplace"  value="${commum.workplace }"   class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
       <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">登记时间</label>
                <div class="col-sm-9">
               			<input type="text" name="regTime" value='<fmt:formatDate value="${commum.regTime }"/>'  onclick="laydate()"  class="form-control input-sm" placeholder="格式：yyyy-mm-dd"/>
                </div>
            </div>
        </div>

    </div>
    
   

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">备注信息</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">备注信息</label>
                <div class="col-sm-9">
                	<textarea name="familyNote" class="form-control"> ${commum.familyNote }</textarea>
                </div>
            </div>
        
        </div>

    </div>
 
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit"   value="保存"/>&nbsp;&nbsp;
        	<input  type="button" onclick="javascript:location='studentfamilyinfo/list.do'"  value="返回上一级"/>

        </div>
    </div>
</form>
</body>
</html>