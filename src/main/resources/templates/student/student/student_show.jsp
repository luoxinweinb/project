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
<title>学生管理</title>
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
        <li>学生信息</li>
        <li>查看学生信息</li>
    </ul>
</div>

<form action="" class="form-horizontal"  method="post">
   	
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>

   <div class="row">
 
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号：</label>
                <div class="col-sm-9">
                <p class="form-control-static">${stuinfo.studentId }</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学号：</label>
                <div class="col-sm-9">
                 
                <p class="form-control-static">${stuinfo.studentNo }</p>
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
                 
                 <p class="form-control-static">${stuinfo.studentName }</p>	
                </div>
            </div>
        </div>
         <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">性别：</label>
                <div class="col-sm-4">
                 
                 <p class="form-control-static">${stuinfo.studentSex }</p>	 
                </div>
            </div>
          </div>
    </div>
   	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">曾用名：</label>
                <div class="col-sm-9">
               
                <p class="form-control-static"> ${stuinfo.studentName1 }</p>	 	
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">民族：</label>
                <div class="col-sm-5">
                 
                <p class="form-control-static"> ${stuinfo.studentNational }</p>	 	
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	 <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">出生日期：</label>
                <div class="col-sm-9">
                 
                 <p class="form-control-static">${stuinfo.studentBirthday }</p>	
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">健康状况：</label>
                <div class="col-sm-9">
                 
                <p class="form-control-static"> ${stuinfo.studentHealth }</p>	
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	 <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">籍贯：</label>
                <div class="col-sm-9">
                
                <p class="form-control-static"> ${stuinfo.studentNative }</p>		
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入学年月：</label>
                <div class="col-sm-9">
                
                <p class="form-control-static">  ${stuinfo.inDate }</p>		
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">婚否：</label>
                <div class="col-sm-9">
                 
                <p class="form-control-static"> ${stuinfo.studentMarital }</p>		
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭地址：</label>
                <div class="col-sm-9">
                 
                  <p class="form-control-static">  ${stuinfo.studentAddress }</p>			
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">邮编：</label>
                <div class="col-sm-9">
                
                  <p class="form-control-static">  ${stuinfo.studentPost }</p>		
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭电话：</label>
                <div class="col-sm-9">
                 
                 <p class="form-control-static"> ${stuinfo.familyTellphone }</p>		
                </div>
            </div>
        </div>
    </div>
      	<div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">本人电话：</label>
                <div class="col-sm-9">
                
                   <p class="form-control-static">  ${stuinfo.studentTellphone }</p>	
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">QQ号：</label>
                <div class="col-sm-9">
                 
                 <p class="form-control-static">  ${stuinfo.studentQq }</p>		
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">是否党团员：</label>
                <div class="col-sm-9">
                 
                 <p class="form-control-static"> ${stuinfo.studentIsleague }</p>	
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入党团时间：</label>
                <div class="col-sm-9">
                
                 <p class="form-control-static"> ${stuinfo.studentJoinTime }</p>		
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">身份证号：</label>
                <div class="col-sm-9">
                  
                  <p class="form-control-static">${stuinfo.studentIdcard }</p>	
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入学前学校：</label>
                <div class="col-sm-9">
                 
                 <p class="form-control-static">${stuinfo.studentBeforeSchool }</p>	
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">特长爱好：</label>
                <div class="col-sm-9">
                    
                     <p class="form-control-static">${stuinfo.studentHobby }</p>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">所在分院：</label>
                <div class="col-sm-9">
                 
                    <p class="form-control-static"> ${stuinfo.studentSchool }</p>	
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">专业：</label>
                <div class="col-sm-9">
                  
                	 <p class="form-control-static"> ${stuinfo.studentPro }</p>	
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">班级：</label>
                <div class="col-sm-9">
                  
                  <p class="form-control-static">${classInfo.className }</p>	
                </div>
            </div>
        </div>
    </div>
      <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学制：</label>
                <div class="col-sm-9">
                 
                 <p class="form-control-static">${stuinfo.studentEduSys }</p>		
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">所在城市：</label>
                <div class="col-sm-9">
                 
                  <p class="form-control-static">${stuinfo.studentProCity }</p>	
                </div>
            </div>
        </div>
    </div>
     <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学历类型：</label>
                <div class="col-sm-9">
                 
                 <p class="form-control-static">${stuinfo.studentType }</p>	
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学籍状态：</label>
                <div class="col-sm-9">
                
                 <p class="form-control-static"> ${stuinfo.studentState }</p>	
                </div>
            </div>
        </div>
    </div>
    
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">是否困难学生</label>
                <div class="col-sm-9">
               
                 <p class="form-control-static">  ${stuinfo.studentHard }</p>	  
                </div>
            </div>
        </div>
        
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">是否助学贷款</label>
                <div class="col-sm-9">
                 
                   <p class="form-control-static">  ${stuinfo.studentLoan }</p>	   
                </div>
            </div>
        </div>
    </div>
    
     <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">是否退伍考学</label>
                <div class="col-sm-9">
                
                    <p class="form-control-static">  ${stuinfo.studentMuster }</p>	   
                </div>
            </div>
        </div>
        
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">十一工程分</label>
                <div class="col-sm-9">
                
                  <p class="form-control-static">  ${stuinfo.studentProject }</p>
                </div>
            </div>
        </div>
    </div>
    
     <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">账号：</label>
                <div class="col-sm-9">
                 
                  <p class="form-control-static">  ${stuinfo.studentNumber }</p>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">密码：</label>
                <div class="col-sm-9">
                
                	  <p class="form-control-static">  ${stuinfo.studentPassword }</p>
                </div>
            </div>
        </div>
    </div>

    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">描述信息：</label>
                <div class="col-sm-9">
                
                   <p class="form-control-static"> ${stuinfo.studentDesc }</p>
                </div>
            </div>
        
        </div>
    </div>
    <!-- 以上是学生的基本信息 -->
    <!-- 学生学习经历 -->
      <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">学习经历</h5>
    	<div class="row">
	    	<div class="col-sm-12">
	        	<table class="table">
	        		<tr>
	        			<th>起讫年月</th>
                        <th>学校或机关名称</th>
                        <th>学习或任职</th>
	        			<th>登记人</th>
	        			<th>登记日期</th>
	        		</tr>
	        		<c:forEach items="${stulearnlist }" var="stulearn">
	        			<tr>
	        				<td>${stulearn.learnAllyears }</td>
	        				<td>${stulearn.learnSchool }</td>
	        				<td>${stulearn.learnPosition }</td>
	        				<td>${stulearn.staffName }</td>
	        				<td><fmt:formatDate value="${stulearn.regTime }"/></td>
	        				
	        			</tr>
	        		</c:forEach>
	        	</table>
	        
	        </div>
   	    </div>
   	<!-- 学生家庭成员 -->
   	  <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">家庭成员</h5>
    	<div class="row">
	    	<div class="col-sm-12">
	        	<table class="table">
	        		<tr>
	        			<th>家庭成员姓名</th>
                        <th>称谓</th>
                        <th>年龄</th>
	        			<th>政治面貌</th>
	        			<th>何处工作任职</th>
	        			<th>登记人</th>
	        			<th>登记日期</th>
	        		</tr>
	        		<c:forEach items="${stufamilylist }" var="stufamily">
	        			<tr>
	        				<td>${stufamily.familyName }</td>
	        				<td>${stufamily.familyApp }</td>
	        				<td>${stufamily.familyAge }</td>
	        				<td>${stufamily.familyZcmm }</td>
	        				<td>${stufamily.workplace }</td>
	        				<td>${stufamily.staffName }</td>
	        				<td><fmt:formatDate value="${stufamily.regTime }"/></td>
	        				
	        			</tr>
	        		</c:forEach>
	        	</table>
	        
	        </div>
   	    </div>
   	 	<!-- 学生社会实践及技能培训 -->
   	  <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">社会实践及技能培训</h5>
    	<div class="row">
	    	<div class="col-sm-12">
	        	<table class="table">
	        		<tr>
	        			<th>实践/培训开始时间</th>
                        <th>实践/培训结束时间</th>
                        <th>实践/培训地点</th>
	        			<th>实践/培训内容</th>
	        			<th>成绩</th>
	        			<th>登记人</th>
	        			<th>登记日期</th>
	        		</tr>
	        		<c:forEach items="${stuPracticelist }" var="stuPractice">
	        			<tr>
	        				<td><fmt:formatDate value="${stuPractice.practiceStart }"/></td>
	        				<td><fmt:formatDate value="${stuPractice.practiceEnd }"/></td>
	        				<td>${stuPractice.practiceAddress }</td>
	        				<td>${stuPractice.practiceContent }</td>
	        				<td>${stuPractice.practiceScore }</td>
	        				<td>${stuPractice.staffName }</td>
	        				<td><fmt:formatDate value="${stuPractice.regTime }"/></td>
	        				
	        			</tr>
	        		</c:forEach>
	        	</table>
	        
	        </div>
   	    </div>
   	 <!-- 学生毕业论文及科研训练 -->
   	  <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">毕业论文及科研训练</h5>
    	<div class="row">
	    	<div class="col-sm-12">
	        	<table class="table">
	        		<tr>
	        			<th>论文标题</th>
                        <th>指导教师</th>
                        <th>起讫时间</th>
	        			<th>答辩时间</th>
	        			<th>成绩</th>
	        			<th>登记人</th>
	        			<th>登记日期</th>
	        		</tr>
	        		<c:forEach items="${stuGraduationlist }" var="stuGraduation">
	        			<tr>
	        				<td>${stuGraduation.paperTitle }</td>
	        				<td>${stuGraduation.paperTeacher }</td>
	        				<td>${stuGraduation.paperStart }</td>
	        				<td><fmt:formatDate value="${stuGraduation.paperTime }"/></td>		
	        				<td>${stuGraduation.paperScore }</td>
	        				<td>${stuGraduation.staffName }</td>
	        				<td><fmt:formatDate value="${stuGraduation.regTime }"/></td>	
	        			</tr>
	        		</c:forEach>
	        	</table>
	        </div>
   	    </div>      
   	 <!--学生成绩-->
       <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">学生成绩</h5>
    	<div class="row">
	    	<div class="col-sm-12">
	        	<table class="table">
	        		<tr>
                        <th>学年</th>
                        <th>学期</th>
	        			<th>课程名</th>
	        			<th>学时</th>
	        			<th>成绩</th>
	        			<th>登分人</th>
	        			<th>登分日期</th>
	        		</tr>
	        		<c:forEach items="${swglist }" var="swg">
	        			<tr>
	        				<td>${swg.writeGradeXuenian }</td>
	        				<td>${swg.writeGradeXueqi }</td>
	        				<td>${swg.disciplineName }</td>
	        				<td>${swg.disciplineBring }</td>
	        				<td>${swg.writeGrade }</td>
	        				<td>${swg.staffName }</td>
	        				<td><fmt:formatDate value="${swg.writeGradeTime }"/></td>
	        			</tr>
	        		</c:forEach>
	        	</table>
	        
	        </div>
   	    </div>

     <!-- 学生考勤-->
   	  <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">学生考勤</h5>
    	<div class="row">
	    	<div class="col-sm-12">
	        	<table class="table">
	        		<tr>
	        			<th>考勤情况</th>
                        <th>原因</th>
                        <th>考勤日期</th>
	        			<th>考勤人</th>
	        		</tr>
	        		<c:forEach items="${attenlist }" var="atten">
	        			<tr>
	        				<td>${atten.attendanceState }</td>
	        				<td>${atten.attendanceDesc }</td>
	        				<td><fmt:formatDate value="${atten.attendanceTime }"/></td>
	        				<td>${atten.staffName }</td>

	        			</tr>
	        		</c:forEach>
	        	</table>
	        </div>
   	    </div>  
   	  
   <!-- 班主任评价信息 -->
      <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">班主任评价</h5>
    	<div class="row">
	    	<div class="col-sm-12">
	        	<table class="table">
	        		<tr>
	        			<th>学年</th>
	        			<th>学期</th>
	        			<th>评价内容</th>
	        			<th>病事假统计</th>
	        			<th>旷课统计</th>
	        			<th>奖惩记载</th>
	        			<th>评价人</th>
	        			<th>评价时间 </th>
	        			
	        		</tr>
	        		<c:forEach items="${commlist }" var="comm">
	        			<tr>
	        				<td>${comm.communicateXuenian }</td>
	        				<td>${comm.communicateXueqi }</td>
	        				<td>${comm.communicateContent }</td>
	        				<td>${comm.leaveCount }</td>
	        				<td>${comm.truancyCount }</td>
	        				<td>${comm.rewardPunish }</td>
	        				<td>${comm.staffName }</td>
	        				<td><fmt:formatDate value="${comm.communicateTime }"/></td>
	        				
	        			</tr>
	        		</c:forEach>
	        	</table>
	        
	        </div>
   	    </div>
   	 <!-- 学生评教信息 -->   
   	  <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">学生评教</h5>
    	<div class="row">
	    	<div class="col-sm-12">
	        	<table class="table">
	        		<tr>
	        			<th>学期</th>
	        			<th>月份</th>
	        			<th>专业</th>
	        			<th>班级</th>
	        			<th>教师</th>
	        			<th>任教课程</th>
	        			<th>评教总分</th>
	        			<th>评价时间 </th>
	        			
	        		</tr>
	        		<c:forEach items="${evaluationlist }" var="evaluation">
	        			<tr>
	        				<td>${evaluation.evaluationXueqi }</td>
	        				<td>${evaluation.evaluationMonth }</td>
	        				<td>${evaluation.evaluationMajor }</td>
	        				<td>${evaluation.className }</td>
	        				<td>${evaluation.staffName }</td>
	        				<td>${evaluation.disciplineName }</td>
	        				<td>${evaluation.sum }</td>
	        				<td><fmt:formatDate value="${evaluation.evaluationTime }"/></td>
	        				
	        			</tr>
	        		</c:forEach>
	        	</table>
	        
	        </div>
   	    </div>
    <!-- 学生缴费 -->
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">缴费情况</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
                <div class="col-sm-9">
                  <p class="form-control-static">&nbsp;
                  ${stuinfo.studentIspay==null?'未缴费':'' }
                  ${stuinfo.studentIspay=='1'?'未交清费用':'' }
                  ${stuinfo.studentIspay=='2'?'已交清费用':'' }
                  </p>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
	    	<div class="col-sm-12">
	        	<table class="table">
	        		<tr>
	        			<th>学年 </th>
	        			<th>缴费时间</th>
	        			<th>应交金额</th>
	        			<th>优惠金额</th>
	        			<th>实交金额</th>
	        			<th>欠款</th>
	        		</tr>
	        		<c:forEach items="${paymentlist}" var="payment">
	        			<tr>
	        				<td>${payment.paymentSituation }</td>
	        				<td><fmt:formatDate value="${payment.paymentTime }"/></td>
	        				<td>${payment.shouldAmount }</td>
	        				<td>${payment.discountAmount }</td>
	        				<td>${payment.realAmount }</td>
	        				<td>${payment.debtAmount }</td>
	        			</tr>
	        		</c:forEach>
	        	</table>
	        </div>
   	    </div>
   	  
   	<div class="row">
    	<div class="col-sm-9 col-sm-offset-2" align="center">
            <input  type="button" onclick="javascript:location='student/load.do?studentId=${stuinfo.studentId }'"  value="修改学生信息"/>
            &nbsp;&nbsp;
            <input  type="button" onclick="javascript:location='student/delete.do?studentId=${stuinfo.studentId }'"  value="删除学生信息"/>
            &nbsp;&nbsp;
            <input  type="button" onclick="javascript:location='student/list.do'"  value="返回上一级"/>     
       
        </div>
    </div>
</form>
<br/> 
</body>
</html>