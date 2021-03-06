<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
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
    	 <li>教务管理</li>
         <li>学生评教</li>
         <li>显示学期评教信息</li>
    </ul>
</div>
<form action="evaluationinfo/list1.do"  method="post" class="form-inline">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
  <label class="" for="studentName">条件：</label>
     <div class="form-group">
        <select onchange="query(this)" name="evaluationXueqi" class="form-control  input-sm">
    		              <option value="">请选择学期</option>
        	              <option value="2015-2016学年第一学期">2015-2016学年第一学期</option>
               			  <option value="2015-2016学年第二学期">2015-2016学年第二学期</option>
               			  <option value="2016-2017学年第一学期">2016-2017学年第一学期</option>
               			  <option value="2016-2017学年第二学期">2016-2017学年第二学期</option>
               			  <option value="2017-2018学年第一学期">2017-2018学年第一学期</option>
               			  <option value="2017-2018学年第二学期">2017-2018学年第二学期</option>
               			  <option value="2018-2019学年第一学期">2018-2019学年第一学期</option>
               			  <option value="2018-2019学年第二学期">2018-2019学年第二学期</option>
               			  <option value="2019-2020学年第一学期">2019-2020学年第一学期</option>
               			  <option value="2019-2020学年第二学期">2019-2020学年第二学期</option>
        </select>
      </div>
     
       <div class="form-group">
        <select onchange="query(this)" name="classId" class="form-control  input-sm">
    		<option value="">请选择班级</option>
        	<c:forEach items="${classlist }" var="c">
              <option value="${c.classId }" >${c.className }</option>
            </c:forEach>
        </select>
       </div>
       <div class="form-group">
        <select onchange="query(this)" name="disciplineId" class="form-control  input-sm">
    		<option value="">请选择任教课程</option>
        	<c:forEach items="${disclist }" var="d">
              <option value="${d.disciplineId }" >${d.disciplineName }</option>
            </c:forEach>
        </select>
       </div>
       <div class="form-group">
        <select onchange="query(this)" name="staffId" class="form-control  input-sm">
    		<option value="">请选择教师</option>
        	<c:forEach items="${stafflist }" var="s">
            <option value="${s.staffId }">${s.staffName }</option>
            </c:forEach>
        </select>
       </div>

     <input type="submit"       value="查询"/>&nbsp;&nbsp;
     <!--
     <input type="button"      value="添加评教信息" onClick="javascript:window.location='evaluationinfo/loadadd.do'"/>
      -->
     <input type="button"      value="开启评教"     onClick="javascript:window.location='evaluationinfo/open1.do'"/>
     <input type="button"      value="禁止评教"     onClick="javascript:window.location='evaluationinfo/close1.do'"/>
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
	<display:table class="table  table-condensed table-striped" name="list" id="cc"  pagesize="10" requestURI="evaluationinfo/list.do">
	     <c:if test="${cc.sum>=90&&cc.sum<=100}">
		   <%a++; %>
		</c:if>
		  <c:if test="${cc.sum>=80&&cc.sum<90}">
		   <%b++; %>
		</c:if>
		  <c:if test="${cc.sum>=70&&cc.sum<80}">
		   <%c++; %>
		</c:if>
		  <c:if test="${cc.sum>=60&&cc.sum<70}">
		   <%d++; %>
		</c:if>
		  <c:if test="${cc.sum<60}">
		   <%e++; %>
		</c:if>
		 <c:if test="${!empty list}">
		   <%count++;
		   %>
		 <c:set var="s"  value="${cc.sum+s}"></c:set>
		</c:if>
		<display:column  property="evaluationXueqi" title="学期"/>

		<display:column  property="evaluationMajor" title="专业"/>
		<display:column  property="className" title="班级"/>
		<display:column  property="staffName" title="教师姓名"/>
		<display:column  property="disciplineName" title="任教课程"/>
		<display:column  property="sum" title="评教总分"/>
		<display:column  property="evaluationNote" title="建议"/>
		<display:column  property="studentName" title="评价学生"/>
		<display:column  property="evaluationTime" format="{0,date,yyyy-MM-dd}"  title="评价时间"/>
	
		<display:column href="evaluationinfo/delete.do"   paramId="evaluationId" paramProperty="evaluationId"  value="删除"  title="删除"/>
	</display:table>
</div>
	<!--去掉了修改评教信息链接，只能由学生进行评教: 
	  href="evaluationinfo/loadupdate.do" 
	  paramId="evaluationId" paramProperty="evaluationId" 
	  value="修改"  title="查看"
	-->
<h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px; color:red">
<%
//request.setAttribute("count", count);
Object ss=pageContext.getAttribute("s");
if(ss!=null)
    s=Integer.parseInt(ss.toString());
else
	s=0;
%>
总记录数：<%=count %>&nbsp; &nbsp;其中： 
90-100分：<%=a %> &nbsp; &nbsp;
80-89分：<%=b %> &nbsp; &nbsp;
70-79分：<%=c %> &nbsp; &nbsp;
60-69分：<%=d %> &nbsp; &nbsp;
60分以下：<%=e %>&nbsp; &nbsp;&nbsp; &nbsp;
平均分：<%=count!=0?(int)(s/count):0 %> 
分
</h5>
</body>
</html>