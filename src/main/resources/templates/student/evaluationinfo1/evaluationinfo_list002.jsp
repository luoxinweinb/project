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
         <li>显示月度评教信息</li>
    </ul>
</div>
<form action="evaluationxueqi/list1.do"  method="post" class="form-inline">
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
        <select onchange="query(this)" name="evaluationMonth" class="form-control  input-sm">
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
                        <select onchange="query(this)" name="evaluationContent" class="form-control input-sm">
                             <option value="">请选择评价</option>
               				  <option value="满意">满意</option>
               				  <option value="一般">一般</option>
               				  <option value="不满意">不满意</option>
               				  <option value="特别不满意">特别不满意</option>
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
     <input type="button"       value="添加评教信息"   onClick="javascript:window.location='evaluationxueqi/loadadd.do'"/>
      -->
     <input type="button"      value="开启评教"     onClick="javascript:window.location='evaluationxueqi/open2.do'"/>
     <input type="button"      value="禁止评教"     onClick="javascript:window.location='evaluationxueqi/close2.do'"/>
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
int s=0,count=0,a=0,b=0,c=0,d=0;   //a,b,c,d分别表示 ： 满意，一般， 不满意， 特别不满意 
int c1=0; //统计
request.setAttribute("s", s);
%>
<div class="row" style="padding:15px; padding-top:0px; " align="right">
	<display:table class="table  table-condensed table-striped" name="list" id="cc"  pagesize="10"  requestURI="evaluationxueqi/list.do">
	      <c:if test="${cc.evaluationContent=='满意'}">
		   <%a++; %>
		</c:if>
		  <c:if test="${cc.evaluationContent=='一般'&& !(empty cc.evaluationNote)}">
		   <%b++; %>
		</c:if>
		  <c:if test="${cc.evaluationContent=='不满意'&& !(empty cc.evaluationNote)}">
		   <%c++; %>
		</c:if>
		  <c:if test="${cc.evaluationContent=='特别不满意'&& !(empty cc.evaluationNote)}">
		   <%d++; %>
		</c:if>

		 <c:if test="${!empty list}">
		   <%count++;
		   %>
		  </c:if>
        <c:if test="${!empty list&&(cc.evaluationContent=='满意'||cc.evaluationContent!='满意'&& (cc.evaluationNote!=''))}">
		   <%c1++;
		   %>
		  </c:if>
		<display:column  property="evaluationXueqi" title="学期"/>
		<display:column  property="evaluationMonth" title="月份"/>
		<display:column  property="evaluationMajor" title="专业"/>
		<display:column  property="className" title="班级"/>
		<display:column  property="staffName" title="教师姓名"/>
		<display:column  property="disciplineName" title="任教课程"/>
		<display:column  property="evaluationContent" title="评价情况"/>
		<display:column  property="evaluationNote" title="建议"/>
		<display:column  property="studentName" title="评价学生"/>
		<display:column  property="evaluationTime" format="{0,date,yyyy-MM-dd}"  title="评价时间"/>
	
		<display:column href="evaluationxueqi/delete.do"   paramId="evaluationId" paramProperty="evaluationId"  value="删除"  title="删除"/>
	</display:table>
</div>
<h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px; color:red">
<%
request.setAttribute("count", count);
%>
<%//=c1 %>
总记录数：<%=count %>&nbsp; &nbsp;其中： 
满意：<%=(int)(a*0.1/c1*1000) %>% &nbsp; &nbsp;
一般：<%=(int)(b*0.1/c1*1000) %>% &nbsp; &nbsp;
不满意：<%=(int)(c*0.1/c1*1000) %>% &nbsp; &nbsp;
特别不满意：<%=(int)(d*0.1/c1*1000) %>% &nbsp; &nbsp;

</h5>
</body>
</html>