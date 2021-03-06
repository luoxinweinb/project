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
<title>学生管理</title>
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
        <li>学生信息</li>
        <li>显示学生信息</li>
    </ul>
</div>
<form action="student/list.do"  method="post" class="form-inline">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
  <label class="" for="">条件：</label>
     <div class="form-group">
        <select onchange="query(this)"  name="classId"  class="form-control  input-sm">
    		<option value="">请选择班级</option>
        	<c:forEach items="${classlist}"  var="cla">
              <option value="${cla.classId }" >${cla.className }</option>
            </c:forEach>
        </select>
      </div>
     <div class="form-group">
          <select  name="studentPro" class="form-control input-sm"  size="1">
                        <option value="">请选择专业</option>
                    	<option   value="软件技术(Java软件开发方向)">软件技术(Java软件开发方向)</option>
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
                        <option value="计算机应用技术">计算机应用技术</option>
          </select>
      </div>
      <div class="form-group">
        <input type="text" name="studentNo" class="form-control"  id="activename" placeholder="请输入学号">
        <input type="text" name="studentName" class="form-control" id="activename" placeholder="请输入学生姓名">
      </div>
      <input type="submit"       value="查询"/>&nbsp;&nbsp;
      <input  type="button" onclick="javascript:location='student/loadadd.do'"  value="添加学生"/>
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
int i=0,nan=0,nv=0;  //统计男生和女生的人数 
%>
<div class="row" style="padding:15px; padding-top:0px; " align="right">
		<display:table class="table  table-condensed table-striped" name="list"  id="c" pagesize="10" requestURI="student/list.do">
		<c:if test="${c.studentSex=='男'}">
		   <%nan++; %>
		</c:if>
		 <c:if test="${c.studentSex=='女'}">
		   <%nv++; %>
		</c:if>
		<c:if test="${!empty list}">
		   <%i++; %>
		</c:if>
		<display:column  property="studentNo" title="学号" />
		<display:column  href="student/show.do" paramId="studentId" paramProperty="studentId"  property="studentName" title="姓名"/>
		<display:column  property="studentSex" title="性别"/>
		<display:column  property="studentBirthday" title="出生年月"/>
		<display:column  property="studentTellphone" title="手机号码"/>
		<display:column  property="studentQq" title="QQ"/>
		<display:column  property="studentHard" title="困难生"/>
		<display:column  property="studentLoan" title="助学贷款"/>
		<display:column  property="studentMuster" title="退伍考学"/>
		<display:column  property="studentProject" title="十一工程分"/>
		<display:column  property="className" title="班级" />
		<display:column  property="studentPro" title="专业"/>
		<display:column  property="studentSchool" title="所在分院"/>
		<display:column href="student/load.do"  paramId="studentId" paramProperty="studentId"  value="修改"  title="修改"/>
		<display:column href="student/delete.do"  paramId="studentId" paramProperty="studentId"  value="删除"  title="删除"/>
</display:table>               	                
</div>
<h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;color:red">
学生总数：<%=i %>&nbsp; &nbsp;&nbsp;
其中&nbsp; 
男生：<%=nan %> 人&nbsp; &nbsp;
女生：<%=nv %> 人&nbsp; &nbsp;
</h5>
</body>
</html>