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
<title></title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>
<script  type="text/javascript" src="resources/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>教务管理</li>
         <li>听课记录</li>
        <li>修改记录</li>
    </ul>
</div>

<form action="auditioninfo/update.do" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                	<input type="text" name="auditionId" value="${audit.auditionId }" readonly="readonly" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">所听课程</label>
                <div class="col-sm-9">
                	<input type="text" name="auditionCourse" value="${audit.auditionCourse }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>

    </div>
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">听课教师</label>
                <div class="col-sm-9">
                	<select name="studentId" class="form-control input-sm">
                		<c:forEach items="${list }" var="stu">
                    	<option value="${stu.studentId }" ${audit.studentId==stu.studentId?'selected':'' } >${stu.studentName }</option>
                    	</c:forEach>
                   	    
                    </select>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">听课时间</label>
                <div class="col-sm-9">
               		 <input type="text" name="auditionTime" value='<fmt:formatDate value="${audit.auditionTime }"/>' onClick="WdatePicker()" readonly="readonly" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>

    </div>
       	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">听课地点</label>
                <div class="col-sm-9">
               		 <input type="text" name="auditionAddr" value="${audit.auditionAddr }"  class="form-control input-sm" placeholder=""/>
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
                	<textarea name="auditionDesc" class="form-control">${audit.auditionDesc }</textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit"   value="保存"/>

              <a   href="auditioninfo/list.do">返回上一级</a>
        </div>
    </div>
</form>
</body>
</html>