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
    	<li>学生管理</li>
    	<li>毕业论文及科研训练</li>
        <li>添加信息</li>
    </ul>
</div>

<form action="studentgraduationinfo/add.do" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                	<input type="text" name="studentLearnId" readonly="readonly" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学生</label>
                <div class="col-sm-9">
                	 <select name="studentId" class="form-control input-sm">
               				<c:forEach items="${stulist }" var="stu">
               					<option value="${stu.studentId }">${stu.studentName }</option>
               				</c:forEach>
               			</select>
                </div>
            </div>
        </div>

    </div>
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">论文标题</label>
                <div class="col-sm-9">
               			<input type="text" name="paperTitle"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">指导老师</label>
                <div class="col-sm-9">
                <input type="text" name="paperTeacher"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>

    </div>
    
     <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">起讫时间</label>
                <div class="col-sm-9">
               			<input type="text" name="paperStart"  class="form-control input-sm" placeholder="格式：yyyy年mm月dd日-yyyy年mm月dd日"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">答辩时间</label>
                <div class="col-sm-9">
                <input type="text" name="paperTime"  onclick="laydate()"  class="form-control input-sm" placeholder="格式：yyyy-mm-dd"/>
                </div>
            </div>
        </div>

    </div>
    
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">成绩</label>
                <div class="col-sm-9">
                     <select name="paperScore"  class="form-control input-sm" size="1">
                        <option value="优秀">优秀</option>
                        <option selected="selected" value="良好">良好</option>
                        <option value="中等">中等</option>
                        <option value="及格">及格</option>
                        <option value="及格">不及格</option>
                     </select>
               		
                </div>
            </div>
        </div>
       <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">登记时间</label>
                <div class="col-sm-9">
               			<input type="text" name="regTime"  onclick="laydate()"  class="form-control input-sm" placeholder="格式：yyyy-mm-dd"/>
                </div>
            </div>
        </div>

    </div>
   <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">评语</label>
                <div class="col-sm-9">
                  <textarea name="paperComments" class="form-control"></textarea>
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
                	<textarea name="paperNote" class="form-control"></textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit"  value="保存"/>&nbsp;&nbsp; 
        	<input  type="button" onclick="javascript:location='studentgraduationinfo/list.do'"   value="返回上一级"/>

        </div>
    </div>
</form>
</body>
</html>