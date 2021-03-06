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

</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>教务管理</li>
        <li>学生评教</li>
        <li>修改评教信息</li>
    </ul>
</div>

<form action="evaluationxueqi/update.do" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学期</label>
                <div class="col-sm-9">
                    <select  name="evaluationXueqi" class="form-control input-sm" >
                    	<option value="2015-2016学年第一学期" ${evaluation.evaluationXueqi=='2015-2016学年第一学期'?'selected':'' }>2015-2016学年第一学期</option>
                        <option value="2015-2016学年第二学期" ${evaluation.evaluationXueqi=='2015-2016学年第二学期'?'selected':'' }>2015-2016学年第二学期</option>
                        <option value="2016-2017学年第一学期" ${evaluation.evaluationXueqi=='2016-2017学年第一学期'?'selected':'' }>2016-2017学年第一学期</option>
                        <option value="2016-2017学年第二学期" ${evaluation.evaluationXueqi=='2016-2017学年第二学期'?'selected':'' }>2016-2017学年第二学期</option>
                        <option value="2017-2018学年第一学期" ${evaluation.evaluationXueqi=='2017-2018学年第一学期'?'selected':'' }>2017-2018学年第一学期</option>
                        <option value="2017-2018学年第二学期" ${evaluation.evaluationXueqi=='2017-2018学年第二学期'?'selected':'' }>2017-2018学年第二学期</option>
                        <option value="2018-2019学年第一学期" ${evaluation.evaluationXueqi=='2018-2019学年第一学期'?'selected':'' }>2018-2019学年第一学期</option>
                        <option value="2018-2019学年第二学期" ${evaluation.evaluationXueqi=='2018-2019学年第二学期'?'selected':'' }>2018-2019学年第二学期</option>
                    </select>
                	
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">月份</label>
                <div class="col-sm-9">
                   <select  name="evaluationMonth" class="form-control input-sm" >
                    	<option value="1月" ${evaluation.evaluationMonth=='1月'?'selected':'' }>1月</option>
                        <option value="2月" ${evaluation.evaluationMonth=='2月'?'selected':'' }>2月</option>
                        <option value="3月" ${evaluation.evaluationMonth=='3月'?'selected':'' }>3月</option>
                        <option value="4月" ${evaluation.evaluationMonth=='4月'?'selected':'' }>4月</option>
                        <option value="5月" ${evaluation.evaluationMonth=='5月'?'selected':'' }>5月</option>
                        <option value="6月" ${evaluation.evaluationMonth=='6月'?'selected':'' }>6月</option>
                        <option value="7月" ${evaluation.evaluationMonth=='7月'?'selected':'' }>7月</option>
                        <option value="8月" ${evaluation.evaluationMonth=='8月'?'selected':'' }>8月</option>
                        <option value="9月" ${evaluation.evaluationMonth=='9月'?'selected':'' }>9月</option>
                        <option value="10月" ${evaluation.evaluationMonth=='10月'?'selected':'' }>10月</option>
                        <option value="11月" ${evaluation.evaluationMonth=='11月'?'selected':'' }>11月</option>
                        <option value="12月" ${evaluation.evaluationMonth=='12月'?'selected':'' }>12月</option>
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
                     <select  name="evaluationMajor" class="form-control input-sm" >
                          <option value="软件技术(Java软件开发方向)" ${evaluation.evaluationMajor=='软件技术(Java软件开发方向)'?'selected':'' }>软件技术(Java软件开发方向)</option>
                          <option value="软件技术(软件测试方向)" ${evaluation.evaluationMajor=='软件技术(软件测试方向)'?'selected':'' }>软件技术(软件测试方向)</option>
                          <option value="软件技术(网络运营策划方向)" ${evaluation.evaluationMajor=='软件技术(网络运营策划方向)'?'selected':'' }>软件技术(网络运营策划方向)</option>
                          <option value="软件技术(美工与设计方向)" ${evaluation.evaluationMajor=='软件技术(美工与设计方向)'?'selected':'' }>软件技术(美工与设计方向)</option>
                          <option value="软件技术(新媒体营销与策划方向)" ${evaluation.evaluationMajor=='软件技术(新媒体营销与策划方向)'?'selected':'' }>软件技术(新媒体营销与策划方向)</option>
                          <option value="软件技术(前端开发与UI设计方向)" ${evaluation.evaluationMajor=='软件技术(前端开发与UI设计方向)'?'selected':'' }>软件技术(前端开发与UI设计方向)</option>
                          <option value="软件技术(通信与运维方向)" ${evaluation.evaluationMajor=='软件技术(通信与运维方向)'?'selected':'' }>软件技术(通信与运维方向)</option>
                          <option value="软件技术(Android软件开发方向)" ${evaluation.evaluationMajor=='软件技术(Android软件开发方向)'?'selected':'' }>软件技术(Android软件开发方向)</option>
                          <option value="软件技术(大数据分析方向)" ${evaluation.evaluationMajor=='软件技术(大数据分析方向)'?'selected':'' }>软件技术(大数据分析方向)</option>
                          <option value="软件技术(VR虚拟与现实方向)" ${evaluation.evaluationMajor=='软件技术(VR虚拟与现实方向)'?'selected':'' }>软件技术(VR虚拟与现实方向)</option>   
                          <option value="软件技术(18级)">软件技术(18级)</option>
                    </select>
           
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">班级</label>
                <div class="col-sm-9">
               		    <select name="classId" class="form-control input-sm">
               				<c:forEach items="${classlist }" var="c">
               					<option value="${c.classId }" ${evaluation.classId==c.classId ?'selected':''} >${c.className }</option>
               				</c:forEach>
               			</select>
                </div>
            </div>
        </div>
        
    </div>
    <div class="row">
         <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">教师姓名</label>
                <div class="col-sm-9">
                 <select name="staffId" class="form-control input-sm">
               		<c:forEach items="${stafflist }" var="staff">
               			<option value="${staff.staffId }" ${evaluation.staffId==staff.staffId ?'selected':''} >${staff.staffName }</option>
               		</c:forEach>	
                 </select>
                </div>
            </div>
        </div>
         <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">任教课程</label>
                <div class="col-sm-9">
               		    <select name="disciplineId" class="form-control input-sm">
               				<c:forEach items="${disclist }" var="d">
               				    <option value="${d.disciplineId  }" ${evaluation.disciplineId ==d.disciplineId ?'selected':''} >${d.disciplineName }</option>
               				</c:forEach>
               			</select>
                </div>
            </div>
        </div>
    	
       
    </div>
    <div class="row">
       <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">评价选项</label>
                <div class="col-sm-9">
               		    <select name="evaluationContent" class="form-control input-sm">
                           <option value="满意" ${evaluation.evaluationContent=='满意' ?'selected':''} >满意</option>
                           <option value="一般" ${evaluation.evaluationContent=='一般' ?'selected':''} >一般</option>
                           <option value="不满意" ${evaluation.evaluationContent=='不满意' ?'selected':''} >不满意</option>
                           <option value="特别不满意" ${evaluation.evaluationContent=='特别不满意' ?'selected':''} >特别不满意</option>
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
               					<option value="${stu.studentId }" ${evaluation.studentId==stu.studentId ?'selected':''} >${stu.studentName }</option>
               				</c:forEach>
               			</select>
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
                	<textarea name="evaluationNote" class="form-control">${evaluation.evaluationNote}</textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit"  value="保存"/>&nbsp;&nbsp;
        	<input type="button"      value="返回上一级" onClick="javascript:window.location='evaluationxueqi/list.do'"/>

        </div>
    </div>
</form>
</body>
</html>