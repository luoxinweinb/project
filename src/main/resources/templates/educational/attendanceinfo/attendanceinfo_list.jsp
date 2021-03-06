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
         <li>考勤管理</li>
         <li>显示考勤</li>
    </ul>
</div>
<form action="attendanceinfo/list.do"  method="post" class="form-inline">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
    <label class="" for="studentName">条件：</label>
     <div class="form-group">
        <select onchange="query(this)" name="attendanceXuenian" class="form-control  input-sm">
    		              <option value="">请选择学年</option>
        	              <option value="2015-2016学年">2015-2016学年</option>
               			  <option value="2016-2017学年">2016-2017学年</option>
               			  <option value="2017-2018学年">2017-2018学年</option>
               			  <option value="2018-2019学年">2018-2019学年</option>
               			  <option value="2019-2020学年">2019-2020学年</option>
        </select>
      </div>
      <div class="form-group">
        <select onchange="query(this)" name="attendanceXueqi" class="form-control  input-sm">
    		        <option value="">请选择学期</option>
        	        <option value="第一学期">第一学期</option>
                    <option value="第二学期">第二学期</option>
        </select>
       </div>
       <div class="form-group">
           <select onchange="query(this)" name="attendanceMonth" class="form-control  input-sm">
    		              <option value="">请选择月份</option>
               			  <option value="1月">1月</option>
               			  <option value="2月">2月</option>
               			  <option value="3月">3月</option>
               			  <option value="4月">4月</option>
               			  <option value="5月">5月</option>
               			  <option value="6月">6月</option>
               			  <option value="7月">7月</option>
               			  <option value="8月">8月</option>
               			  <option value="9月">9月</option>
               			  <option value="10月">10月</option>
               			  <option value="11月">11月</option>
               			  <option value="12月">12月</option>
            </select>
       </div>
       <div class="form-group">
                 <select onchange="query(this)" name="attendanceState" size="1" class="form-control  input-sm">
                   <option value="">请选择考勤情况</option>
                   <option     value="出勤">出勤</option>
                   <option     value="缺席">缺席</option>
                   <option     value="请假">请假</option>
                   <option     value="迟到">迟到</option>
                   <option     value="早退">早退</option>
                   <option     value="旷课">旷课</option>           
                 </select>
       </div>
       
      <div class="form-group">
        <input type="text" class="form-control" name="studentName" id="studentName" placeholder="请输入学生姓名">
      </div>
    <input type="submit"       value="查询"/>&nbsp;&nbsp;
    <input  type="button"     onclick="javascript:location='attendanceinfo/loadadd.do'"  value="添加考勤"/>
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
int i=0,cq=0,qx=0,qj=0,cd=0,zt=0,kk=0;  //cq出勤，qx缺席,qj请假,cd迟到,zt早退,kk旷课 
%>
<div class="row" style="padding:15px; padding-top:0px; " align="right">
	<display:table class="table  table-condensed table-striped" name="list"  id="c"   pagesize="10" requestURI="attendanceinfo/list.do">
	  
		 <c:if test="${c.attendanceState=='出勤'}">
		   <%cq++; %>
		</c:if>
		 <c:if test="${c.attendanceState=='缺席'}">
		   <%qx++; %>
		</c:if>
		 <c:if test="${c.attendanceState=='请假'}">
		   <%qj++; %>
		</c:if>
		 <c:if test="${c.attendanceState=='迟到'}">
		   <%cd++; %>
		</c:if>
		 <c:if test="${c.attendanceState=='早退'}">
		   <%zt++; %>
		</c:if>
		 <c:if test="${c.attendanceState=='旷课'}">
		   <%kk++; %>
		</c:if>
		 <c:if test="${!empty list}">
		   <%i++; %>
		</c:if>
	    <display:column  property="attendanceXuenian" title="学年"/>
	    <display:column  property="attendanceXueqi" title="学期"/>
	    <display:column  property="attendanceMonth" title="月份"/>
		<display:column  property="studentName" title="学生姓名"/>
		<display:column  property="attendanceState" title="考勤情况"/>
		<display:column  property="attendanceDesc" title="原因"/>	
		<display:column  property="attendanceTime" format="{0,date,yyyy-MM-dd}" title="考勤日期"/>
		<display:column  property="staffName" title="考勤人"/>		
		<display:column href="attendanceinfo/loadupdate.do" paramId="attendanceId" paramProperty="attendanceId" value="修改"  title="查看"/>
		<display:column href="attendanceinfo/delete.do"  paramId="attendanceId" paramProperty="attendanceId"  value="删除"  title="删除"/>
	</display:table>
</div>

<h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px; color:red">
学生总数：<%=i %>&nbsp; &nbsp;其中
出勤：<%=cq %> 人&nbsp; &nbsp;
缺席：<%=qx %> 人&nbsp; &nbsp;
请假：<%=qj %> 人&nbsp; &nbsp;
迟到：<%=cd %> 人&nbsp; &nbsp;
早退：<%=zt %>人&nbsp; &nbsp;
旷课：<%=kk %> 人&nbsp; &nbsp;

</h5>
</body>
</html>