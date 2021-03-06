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
    	<li>期末成绩</li>
        <li>修改成绩</li>
    </ul>
</div>

<form action="studentwritegrade/update.do" method="post" class="form-horizontal">
    <input type="hidden" name="writeGradeId"   value="${swg.writeGradeId }" />
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
	    <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">班级</label>
                <div class="col-sm-9">
                	 <select name="classId" class="form-control input-sm">
               				<c:forEach items="${classlist }" var="cc">
               					<option value="${cc.classId }" ${swg.classId==cc.classId?'selected':'' } >${cc.className }</option>
               				</c:forEach>
               			</select>
                </div>
            </div>
        </div>
    	
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学生</label>
                <div class="col-sm-9">
                	 <select name="studentId" class="form-control input-sm">
               				<c:forEach items="${stulist }" var="stu">
               					<option value="${stu.studentId }" ${swg.studentId==stu.studentId?'selected':'' } >${stu.studentName }</option>
               				</c:forEach>
               			</select>
                </div>
            </div>
        </div>

    </div>
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">课程名</label>
                <div class="col-sm-9">
                   <select name="disciplineId" class="form-control input-sm">
               				<c:forEach items="${disclist }" var="d">
               					<option value="${d.disciplineId }" ${d.disciplineId==swg.disciplineId ?'selected':''} >${d.disciplineName }</option>
               				</c:forEach>
               	  </select>
              
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">成绩</label>
                <div class="col-sm-9">
                	<input type="text" name="writeGrade"   value="${swg.writeGrade }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>

    </div>
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">登分日期</label>
                <div class="col-sm-9">
               			<input type="text" name="writeGradeTime"  value='<fmt:formatDate value="${swg.writeGradeTime }"/>'  onclick="laydate()"   class="form-control input-sm" placeholder="格式：yyyy-mm-dd"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">学年</label>
                <div class="col-sm-9">
                   <select  name="writeGradeXuenian" class="form-control input-sm" >
                    	<option value="2015-2016学年" ${commum.writeGradeXuenian=='2015-2016学年'?'selected':'' }>2015-2016学年</option>
                        <option value="2016-2017学年" ${commum.writeGradeXuenian=='2016-2017学年'?'selected':'' }>2016-2017学年</option>
                        <option value="2017-2018学年" ${commum.writeGradeXuenian=='2017-2018学年'?'selected':'' }>2017-2018学年</option>
                        <option value="2018-2019学年" ${commum.writeGradeXuenian=='2018-2019学年'?'selected':'' }>2018-2019学年</option>
                        <option value="2019-2020学年" ${commum.writeGradeXuenian=='2019-2020学年'?'selected':'' }>2019-2020学年</option>
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
                   <select  name="writeGradeXueqi" class="form-control input-sm" >
                    	<option value="第一学期" ${commum.writeGradeXueqi=='第一学期'?'selected':'' }>第一学期</option>
                        <option value="第二学期" ${commum.writeGradeXueqi=='第二学期'?'selected':'' }>第二学期</option>
                    </select>
                
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">考试类型</label>
                <div class="col-sm-9">
                    <select  name="writeGradeType" class="form-control input-sm" >
                    	<option value="考试" ${commum.writeGradeType=='考试'?'selected':'' }>考试</option>
                        <option value="考查" ${commum.writeGradeType=='考查'?'selected':'' }>考查</option>
                        <option value="补考" ${commum.writeGradeType=='补考'?'selected':'' }>补考</option>
                    </select>
                
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
                	<textarea name="writeGradeNote" class="form-control">${swg.writeGradeNote }</textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit"   value="保存"/>&nbsp;&nbsp;
        	<input  type="button" onclick="javascript:location='studentwritegrade/list.do'"  value="返回上一级"/>
 
        </div>
    </div>
</form>
</body>
</html>