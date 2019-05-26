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
<title>修改密码</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>
<script  type="text/javascript" src="resources/My97DatePicker/WdatePicker.js"></script>

<script type="text/javascript" src="<%=basePath%>/resources/js/login.js"></script>

</head>
<body style="background-color: #eeeeee">
<form action="studentinfor/modifyPassword.do" method="post" onsubmit="return validate2()"  name="myform2"  class="form-horizontal">
     <input type="hidden"  id="studentId"  name="studentId" value="${stuinfo.studentId }"/>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">修改密码</h5>
     <p align="left">
            <font color="red" style="display:${passinfor!=null?'block':'none' } ">
			    <i class="icon-coffee red"></i> &nbsp;&nbsp;${passinfor }
			 </font></p>
	
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">原密码：</label>
                <div class="col-sm-9">
               			<input type="password" name="studentPassword"   class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
     <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">新密码：</label>
                <div class="col-sm-9">
               			<input type="password" name="studentPassword1"   class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
     <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">重输新密码：</label>
                <div class="col-sm-9">
               			<input type="password" name="studentPassword2"    class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>

   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	 <input  type="submit"      value="修 改"/>
        </div>
    </div>
</form>
</body>
</html>