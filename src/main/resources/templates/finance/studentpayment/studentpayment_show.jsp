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
<title>c</title>
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
    	<li>学生管理</li>
        <li>缴费登记</li>
        <li>查看缴费信息</li>
    </ul>
</div>

<form action="" class="form-horizontal">
   
    <div align="center">
	<div class="alert alert-warning" style="margin: 0px; padding: 5px; width: 80%;display:${empty info?'none':'block'} ">
		<button type="button" class="close" data-dismiss="alert">
			<span aria-hidden="true">&times;</span>
			
		</button>
		<p align="center" style="color: red;">${info }</p>
	</div>	
</div>

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	   <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号：</label>
                <div class="col-sm-9">
                   ${stuinfo.studentId }
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学号：</label>
                <div class="col-sm-9">
                ${stuinfo.studentNo }
                </div>
            </div>
        </div>
    </div>
    	<!--开始 -->
    	<div class="row">
    	 <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">姓名：</label>
                <div class="col-sm-9">
                ${stuinfo.studentName }
               
                </div>
            </div>
        </div>
         <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">性别：</label>
                <div class="col-sm-4">
                 ${stuinfo.studentSex }
                	
                </div>
            </div>
          </div>
    </div>
   	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">曾用名：</label>
                <div class="col-sm-9">
                ${stuinfo.studentName1 }
                
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">民族：</label>
                <div class="col-sm-5">
                ${stuinfo.studentNational }
                
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	 <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">出生日期：</label>
                <div class="col-sm-9">
                  ${stuinfo.studentBirthday }
                	
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">健康状况：</label>
                <div class="col-sm-9">
                ${stuinfo.studentHealth }
                
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	 <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">籍贯：</label>
                <div class="col-sm-9">
                ${stuinfo.studentNative }
                	
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入学时间：</label>
                <div class="col-sm-9">
                  ${stuinfo.inDate }
                
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">婚否：</label>
                <div class="col-sm-9">
                   ${stuinfo.studentMarital }
                	
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭地址：</label>
                <div class="col-sm-9">
                 ${stuinfo.studentAddress }
                	
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">邮编：</label>
                <div class="col-sm-9">
                ${stuinfo.studentPost }
                
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭电话：</label>
                <div class="col-sm-9">
                 ${stuinfo.familyTellphone }
                	
                </div>
            </div>
        </div>
    </div>
      	<div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">本人电话：</label>
                <div class="col-sm-9">
                 ${stuinfo.studentTellphone }
                	
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">QQ号：</label>
                <div class="col-sm-9">
                 ${stuinfo.studentQq }
                	
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">是否党团员：</label>
                <div class="col-sm-9">
                  ${stuinfo.studentIsleague }
                
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入党团时间：</label>
                <div class="col-sm-9">
                 ${stuinfo.studentJoinTime }
                	
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">身份证号：</label>
                <div class="col-sm-9">
                   ${stuinfo.studentIdcard }
                	
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入学前学校：</label>
                <div class="col-sm-9">
                  ${stuinfo.studentBeforeSchool }
                	
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">特长爱好：</label>
                <div class="col-sm-9">
                 ${stuinfo.studentHobby }
                
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">所在分院：</label>
                <div class="col-sm-9">
                 ${stuinfo.studentSchool }
                	
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">专业：</label>
                <div class="col-sm-9">
                 ${stuinfo.studentPro }
                	
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">班级：</label>
                <div class="col-sm-9">
                ${classInfo.className }
                </div>
            </div>
        </div>
    </div>
      <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学制：</label>
                <div class="col-sm-9">
                 ${stuinfo.studentEduSys }
                
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">城市：</label>
                <div class="col-sm-9">
                ${stuinfo.studentProCity }
                	
                </div>
            </div>
        </div>
    </div>
     <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学历类型：</label>
                <div class="col-sm-9">
                ${stuinfo.studentType }
               
                </div>
            </div>
        </div>
    </div>
     <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">账号：</label>
                <div class="col-sm-9">
                  ${stuinfo.studentNumber }
                	
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">密码：</label>
                <div class="col-sm-9">
                 ${stuinfo.studentPassword }
                	
                </div>
            </div>
        </div>
    </div>
    
     <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">描述信息</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">描述信息：</label>
                <div class="col-sm-9">
                	${stuinfo.studentDesc }
                </div>
            </div>
        
        </div>
    </div>
	
   <!--结束 -->
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">描述信息</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">&nbsp;</label>
                <div class="col-sm-9">
                  <p class="form-control-static">
                  ${stuinfo.studentIspay==null?'未缴费':'' }
                  ${stuinfo.studentIspay=='1'?'未交清费用':'' }
                  ${stuinfo.studentIspay=='2'?'已交清费用':'' }
                  </p>
                	
                </div>
            </div>
        
        </div>

    </div>

  <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">缴费信息 </h5>
    	<div class="row">
	    	<div class="col-sm-12">
	        	<table class="table">
	        		<tr>
	        			<th>学生姓名</th>
	        			<th>学年 </th>
	        			<th>应交金额</th>
	        			<th>优惠金额</th>
	        			<th>实交金额</th>
	        			<th>欠款</th>
	        			<th>缴费时间</th>
	        		</tr>
	        		<c:forEach items="${list}" var="payment">
	        			<tr>
	        				<td>${stuinfo.studentName }</td>
	        				<td>${payment.paymentSituation }</td>			
	        				<td>${payment.shouldAmount }</td>
	        				<td>${payment.discountAmount }</td>
	        				<td>${payment.realAmount }</td>
	        				<td>${payment.debtAmount }</td>
	        				<td><fmt:formatDate value="${payment.paymentTime }"/></td>
	        				<td><a href="studentpayment/delete.do?paymentId=${payment.paymentId }">删除缴费信息</a></td>
	        			</tr>
	        		</c:forEach>
	        	</table>
	        </div>
   	    </div>
   	<div class="row">
    	<div class="col-sm-9 " align="center">
    	  <input  type="button" onclick="javascript:location='studentpayment/list.do'"  value="返回上一级"/>

        </div>
    </div>
</form>
<br/>
</body>
</html>