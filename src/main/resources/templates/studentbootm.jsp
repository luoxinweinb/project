<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
<base href="<%=basePath%>">
<title>ss</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/highcharts.js" type="text/javascript"></script>
<script src="resources/js/jquery.highchartTable.js" type="text/javascript"></script>
<script language="javascript">
$(document).ready(function() {
  $('table.highchart').highchartTable();
});
</script>

</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style=" padding:0px; padding-left:20px;" >
  <li >数据分析与统计</li>
  <li>学生信息分析与统计</li>
</ul>
</div>

<div  style="padding:1px; margin:0px;"  >

<div class="row" >
	
	<div class="col-sm-8">
        <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>学生来源城市分布图
          </div>
              <div class="panel-body">
                  <table class="highchart" style="display:none; "  
                  data-graph-container-before="1"  data-graph-height="250" data-graph-type="area" >
              <thead> 
               <tr>
                    <th>数量</th>
                    <th>城市</th>
                </tr>
            </thead>
               <tbody>
            <c:forEach items="${reportInfo.getStudentNativeList }"  var="studentNative">
                      <tr >
                          <td> ${studentNative.student_native }</td>
                          <td> ${studentNative.total }</td>
                      </tr>
                    </c:forEach>
          </tbody>
            </table>  
              </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>学生性别分布图
          </div>
              <div class="panel-body">
                  <table class="highchart" style="display:none; "  
                  data-graph-container-before="1"  data-graph-height="250" data-graph-type="pie" >
              
                  <thead>
                      <tr>
		                <th>模块</th>
		                <th>数量</th>
                      </tr>
                   </thead>
                   <tbody>
                    <c:forEach items="${reportInfo.getStudentSexList }"  var="studentSex">
                      <tr >
                          <td>
                            ${studentSex.student_sex=='男'?'男':'' }
                            ${studentSex.student_sex=='女'?'女':'' }
                          </td>
                          <td >${studentSex.total }</td>
                      </tr>
                    </c:forEach>
       
                  </tbody>
                </table>
              </div>
        </div>
    </div>
</div>
    <!-- 加入其它信息 -->

<div class="row" >
	<div class="col-sm-8">
        <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>学生专业分布
          </div>
              <div class="panel-body">
              <table class="highchart" style="display:none; "  
                  data-graph-container-before="1"  data-graph-height="250" data-graph-type="column" >
              
                  <thead>
                      <tr>
                          <th >专业</th>
                          <th >人数 </th>
                      </tr>
                   </thead>
                   <tbody>
                   <c:forEach items="${reportInfo.getStudentProList }"  var="pro">
                      <tr >
                          <td>${pro.student_pro }</td>
                          <td >${pro.total }</td>
                      </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
        </div>
    </div>
 	<div class="col-sm-4">
            <div class="panel panel-default">
          <div class="panel-heading"  style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>学生专业数量
          </div>
           <table class="table table-bordered">
                <thead>
                      <tr>
                          <th >专业</th>
                          <th >人数</th>
                      </tr>
                   </thead>
                   <tbody>
                     <c:forEach items="${reportInfo.getStudentProList }"  var="pro">
                      <tr >
                          <td>${pro.student_pro }</td>
                          <td >${pro.total }</td>
                      </tr>
                    </c:forEach>
                  </tbody>
            </table>  
        </div>
    </div>
</div>
    
</div>
</body>
</html>