<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
    
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
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
</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>学生管理</li>
        <li>周测成绩</li>
        <li>显示成绩</li>
    </ul>
</div>
<form action="studentwritegrade1/list1.do"  method="post" class="form-inline">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
    <label class="" for="studentName">条件：</label>
     <div class="form-group">
        <select onchange="query(this)" name="writeGradeXuenian" class="form-control  input-sm">
    		              <option value="">请选择学年</option>
        	              <option value="2015-2016学年">2015-2016学年</option>
               			  <option value="2016-2017学年">2016-2017学年</option>
               			  <option value="2017-2018学年">2017-2018学年</option>
               			  <option value="2018-2019学年">2018-2019学年</option>
               			  <option value="2019-2020学年">2019-2020学年</option>
        </select>
      </div>
      <div class="form-group">
        <select onchange="query(this)" name="writeGradeXueqi" class="form-control  input-sm">
    		        <option value="">请选择学期</option>
        	        <option value="第一学期">第一学期</option>
                    <option value="第二学期">第二学期</option>
        </select>
       </div>
       <div class="form-group">
        <select onchange="query(this)" name="classId" class="form-control  input-sm">
    		<option value="">请选择班级</option>
        	<c:forEach items="${classlist}" var="cc">
               <option value="${cc.classId }" >${cc.className }</option>
            </c:forEach>
        </select>
       </div>
       <div class="form-group">
        <select onchange="query(this)" name="disciplineId" class="form-control  input-sm">
    		<option value="">请选择课程</option>
        	<c:forEach items="${disclist}" var="cc">
               <option value="${cc.disciplineId }" >${cc.disciplineName }</option>
            </c:forEach>
        </select>
       </div>
       
       
      <div class="form-group">
        <input type="text" class="form-control" name="studentName" id="studentName" placeholder="请输入学生姓名">
      </div>
    <input type="submit"       value="查询"/>&nbsp;&nbsp;
    <input  type="button" onclick="javascript:location='studentwritegrade1/loadadd.do'"  value="添加学生成绩"/>
</div>
</form>

<div align="center">
	<div class="alert alert-warning" style="margin: 0px; padding: 5px; width: 80%;display:${empty info?'none':'block'} ">
		<button type="button" class="close" data-dismiss="alert">
			<span aria-hidden="true">&times;</span>
			
		</button>
		<p align="center" style="color: red;">${info }</p>
	</div>	
</div>
<%
int s=0,count=0,a=0,b=0,c=0,d=0,e=0;  //a:90-100分 b:80-89分 c: 70-79分,d：60-69分，e: 60分以下 
request.setAttribute("s", s);
%>
<div class="row" style="padding:15px; padding-top:0px; " align="right">
	<display:table class="table  table-condensed table-striped" name="list"  id="cc"  pagesize="10" requestURI="studentwritegrade/list.do">
         <c:if test="${cc.writeGrade>=90&&cc.writeGrade<=100}">
		   <%a++; %>
		</c:if>
		  <c:if test="${cc.writeGrade>=80&&cc.writeGrade<90}">
		   <%b++; %>
		</c:if>
		  <c:if test="${cc.writeGrade>=70&&cc.writeGrade<80}">
		   <%c++; %>
		</c:if>
		  <c:if test="${cc.writeGrade>=60&&cc.writeGrade<70}">
		   <%d++; %>
		</c:if>
		  <c:if test="${cc.writeGrade<60}">
		   <%e++; %>
		</c:if>
		 <c:if test="${!empty list}">
		   <%count++;
		   %>
		 <c:set var="s"  value="${cc.writeGrade+s}"></c:set>
		</c:if>
		
		<display:column  property="writeGradeXuenian" title="学 年"/>
		<display:column  property="writeGradeXueqi" title="学 期"/>
		<display:column  property="className" title="班 级"/>
		<display:column  property="studentName" title="学生姓名"/>
		<display:column  property="disciplineName" title="课程名"/>
		<display:column  property="disciplineBring" title="学时"/>
		<display:column  property="writeGrade" title="成 绩"/>

		<display:column  property="writeGradeType" title="考试类型"/>
		<display:column  property="staffName" title="登分人"/>
		<display:column  property="writeGradeTime" format="{0,date,yyyy-MM-dd}" title="登分日期"/>
		
		<display:column href="studentwritegrade1/loadupdate.do" paramId="writeGradeId" paramProperty="writeGradeId" value="修改"  title="修改"/>
		<display:column href="studentwritegrade1/delete.do"  paramId="writeGradeId" paramProperty="writeGradeId"  value="删除"    title="删除"/>
	</display:table>
</div>
<h4   style="padding:10px; margin:0px; margin-bottom:5px;color:red">
功能实现中...
</h4>

<h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px; color:red">
<%
request.setAttribute("count", count);
%>
总记录数：<%=count %>&nbsp; &nbsp;其中： 
90-100分：<%=a %> &nbsp; &nbsp;
80-89分：<%=b %> &nbsp; &nbsp;
70-79分：<%=c %> &nbsp; &nbsp;
60-69分：<%=d %> &nbsp; &nbsp;
60分以下：<%=e %>&nbsp; &nbsp;&nbsp; &nbsp;
平均分：<c:out value="${s/count}"></c:out>分&nbsp; &nbsp;
</h5>


</body>
</html>