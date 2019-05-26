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
<script type="text/javascript"   src="<%=basePath%>/resources/js/evaluationinfo.js"></script>

</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>教务管理</li>
        <li>学生评教</li>
        <li>添加评教信息</li>
    </ul>
</div>

<form action="evaluationinfo/add.do" name="mf001" onsubmit="return validate01();" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
    <div class="row">
    	
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学期</label>
                <div class="col-sm-9">
                     <select name="evaluationXueqi" class="form-control input-sm">
                        
                          <option value="2015-2016学年第一学期">2015-2016学年第一学期</option>
               			  <option value="2015-2016学年第二学期">2015-2016学年第二学期</option>
               			  <option value="2016-2017学年第一学期">2016-2017学年第一学期</option>
               			  <option value="2016-2017学年第二学期">2016-2017学年第二学期</option>
               			  <option value="2017-2018学年第一学期">2017-2018学年第一学期</option>
               			  <option value="2017-2018学年第二学期">2017-2018学年第二学期</option>
               			  <option value="2018-2019学年第一学期" selected="selected">2018-2019学年第一学期</option>
               			  <option value="2018-2019学年第二学期">2018-2019学年第二学期</option>
               		 </select>
                	
                </div>
            </div>
        </div>
         <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">专业</label>
                <div class="col-sm-9">
                    <select  name="evaluationMajor" class="form-control input-sm"  size="1">
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
                    </select>
                </div>
            </div>
        </div>
    </div>
    
    <div class="row">
    	
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">班级</label>
                <div class="col-sm-9">
               		    <select name="classId" class="form-control input-sm">
               				<c:forEach items="${classlist }" var="c">
               				  <option value="${c.classId }">${c.className }</option>               			
               				</c:forEach>
               			</select>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">教师姓名</label>
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
            	<label class="col-sm-3 control-label">任教课程</label>
                <div class="col-sm-9">
               		    <select name="disciplineId" class="form-control input-sm">
               				<c:forEach items="${disclist }" var="d">
               				    <option value="${d.disciplineId }">${d.disciplineName }</option>  
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
            	<label class="col-sm-3 control-label">师德、仪表(15分)</label>
                <div class="col-sm-9">
               			<input type="text" name="score1"     class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">教学过程(20分)</label>
                <div class="col-sm-9">
               		<input type="text" name="score2"     class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
    </div>
     <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">教学方法(15分)</label>
                <div class="col-sm-9">
               			<input type="text" name="score3"    class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">语言表达(15分)</label>
                <div class="col-sm-9">
               		<input type="text" name="score4"      class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
     <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">能力培养(20分)</label>
                <div class="col-sm-9">
               			<input type="text" name="score5"      class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">教学效果(15分)</label>
                <div class="col-sm-9">
               		<input type="text" name="score6"     class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    
 
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">建议</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">建议</label>
                <div class="col-sm-9">
                	<textarea name="evaluationNote" cols="130"  rows="4" class="form-control"> </textarea>
                </div>
            </div>
        
        </div>

    </div>
    
  
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	 <input  type="submit"      value="保存"/>&nbsp;&nbsp;
        	 <input type="button"      value="返回上一级" onClick="javascript:window.location='evaluationinfo/list.do'"/>

        </div>
    </div>
</form>
</body>
</html>