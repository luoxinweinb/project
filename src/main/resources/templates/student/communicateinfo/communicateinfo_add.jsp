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
    	<li>班主任评价</li>
        <li>添加评价信息</li>
    </ul>
</div>

<form action="communicateinfo/add.do" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                	<input type="text" name="communicateId" readonly="readonly" class="form-control input-sm" placeholder=""/>
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
            	<label class="col-sm-3 control-label">评价时间</label>
                <div class="col-sm-9">
               			<input type="text" name="communicateTime"  onclick="laydate()"  class="form-control input-sm" placeholder="格式:yyyy-mm-dd"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">学年</label>
                <div class="col-sm-9">
                   <select onchange="query(this)" name="communicateXuenian" class="form-control  input-sm">
    		           <option value="">请选择学年</option>
               			  <option value="2015-2016学年">2015-2016学年</option>
               			  <option value="2016-2017学年">2016-2017学年</option>
               			  <option value="2017-2018学年">2017-2018学年</option>
               			  <option value="2018-2019学年">2018-2019学年</option>
               			  <option value="2019-2020学年">2019-2020学年</option>
                    </select>
               		
                </div>
            </div>
        </div>

    </div>
   
   <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">学期</label>
                <div class="col-sm-9">
                <select onchange="query(this)" name="communicateXueqi" class="form-control  input-sm">
    		           <option value="">请选择学期</option>
               			  <option value="第一学期">第一学期</option>
               			  <option value="第二学期">第二学期</option>
                     </select>
               		
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">病事假统计</label>
                <div class="col-sm-9">
               			<input type="text" name="leaveCount"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>

    </div>

  <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">旷课统计</label>
                <div class="col-sm-9">
               			<input type="text" name="truancyCount"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">奖惩记载</label>
                <div class="col-sm-9">
                        <textarea name="rewardPunish" class="form-control"></textarea>
                </div>
            </div>
        </div>

    </div>
 
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">评价内容</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">品行评语</label>
                <div class="col-sm-9">
                	<textarea name="communicateContent" class="form-control"></textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit"  value="保存"/>&nbsp;&nbsp;
        	<input  type="button" onclick="javascript:location='communicateinfo/list.do'"  value="返回上一级"/>

        </div>
    </div>
</form>
</body>
</html>