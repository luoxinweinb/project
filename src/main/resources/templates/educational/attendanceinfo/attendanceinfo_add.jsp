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
<script type="text/javascript" src="<%=basePath%>/resources/js/attendanceinfo.js"></script>
<script  type="text/javascript" src="resources/laydate/laydate.js"></script>

</head>
<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>学生管理</li>
    	<li>考勤管理</li>
         <li>添加考勤</li>
  
    </ul>
</div>

<form action="attendanceinfo/add.do" name="amf" onsubmit="return avalidate();" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                	<input type="text" readonly="readonly" name="attendanceId" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学生姓名</label>
                <div class="col-sm-9">
                	<select name="studentId" class="form-control input-sm" >
                		<c:forEach items="${stulist }" var="stu">
                		
                    	<option value="${stu.studentId }" >${stu.studentName }</option>
                    	</c:forEach>
                    </select>
                </div>
            </div>
        </div>

    </div>
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">考勤情况</label>
                <div class="col-sm-9">
                 <select name="attendanceState"  class="form-control input-sm"  size="1">
                   <option checked="checked"   value="出勤">出勤</option>
                   <option     value="缺席">缺席</option>
                   <option     value="请假">请假</option>
                   <option     value="迟到">迟到</option>
                   <option     value="早退">早退</option>
                   <option     value="旷课">旷课</option>           
                 </select>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">考勤日期</label>
                <div class="col-sm-9">
               		 <input type="text" name="attendanceTime"   onclick="laydate()"    class="form-control input-sm" placeholder="格式：yyyy-mm-dd"/>
                </div>
            </div>
        
        </div>

    </div>

    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">原因</label>
                <div class="col-sm-9">
                	<textarea name="attendanceDesc" class="form-control"></textarea>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">学年</label>
                <div class="col-sm-9">
                   <select onchange="query(this)" name="attendanceXuenian" class="form-control  input-sm">
    		              <option value="">请选择学年</option>
               			  <option value="2015-2016学年">2015-2016学年</option>
               			  <option value="2016-2017学年">2016-2017学年</option>
               			  <option value="2017-2018学年">2017-2018学年</option>
               			  <option value="2018-2019学年">2018-2019学年</option>
               			  <option value="2019-2020学年">2019-2020学年</option>
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
                      <select onchange="query(this)" name="attendanceXueqi" class="form-control  input-sm">
    		              <option value="">请选择学期</option>
               			  <option value="第一学期">第一学期</option>
               			  <option value="第二学期">第二学期</option>
                      </select>
                </div>
            </div>
        </div>
        
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">月份</label>
                <div class="col-sm-9">
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
            </div>
        </div>
    </div>
    
     <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">备注信息</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">备注信息</label>
                <div class="col-sm-9">
                	<textarea name="attendanceRemark" class="form-control"></textarea>
                </div>
            </div>
        
        </div>

    </div>
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	  <input  type="submit"  value="保存"/>&nbsp;&nbsp;
        	  <input  type="button" onclick="javascript:location='attendanceinfo/list.do'"  value="返回上一级"/>

        </div>
    </div>
</form>

</body>
</html>