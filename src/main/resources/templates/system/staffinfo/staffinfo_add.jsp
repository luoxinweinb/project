<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<title>员工管理</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>
<script  type="text/javascript" src="resources/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="<%=basePath%>/resources/js/staff.js"></script>
<script  type="text/javascript" src="resources/laydate/laydate.js"></script>
</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>系统管理</li>
        <li>员工管理</li>
        <li>添加员工</li>
    </ul>
</div>

<form action="system/add.do" method="post" class="form-horizontal" name="stmf01" onsubmit="return validate_stmf01();">
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">姓名</label>
                <div class="col-sm-9">
                	<input type="text" name="staffName" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">年龄</label>
                <div class="col-sm-9">
                	<input type="text" name="staffAge" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
    </div>

	<div class="row">
    	
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">性别</label>
                <div class="col-sm-9">
                		<select name="staffSex" class="form-control input-sm" >
                            <option>男</option>
                            <option>女</option>
                        </select>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">籍贯</label>
                <div class="col-sm-9">
                	 <select name="staffNativePlace"  class="form-control input-sm" >
                            <option value="江西">江西</option>
                            <option value="湖北">湖北</option>
                            <option value="湖南">湖南</option>
                            <option value="河南">河南</option>
                            <option value="山东">山东</option>
                            <option value="江苏">江苏</option>
                            <option value="安徽">安徽</option>
                            <option value="浙江">浙江</option>
                            <option value="福建">福建</option>
                            <option value="上海">上海</option>
                            <option value="广东">广东</option>
                            <option value="广西">广西</option>
                            <option value="海南">海南</option>
                            <option value="北京">北京</option>
                            <option value="天津">天津</option>
                            <option value="河北">河北</option>
                            <option value="山西">山西</option>
                            <option value="内蒙古">内蒙古</option>
                            <option value="宁夏">宁夏</option>
                            <option value="新疆">新疆</option>
                            <option value="青海">青海</option>
                            <option value="陕西">陕西</option>
                            <option value="甘肃">甘肃</option>
                            <option value="四川">四川</option>
                            <option value="云南">云南</option>
                            <option value="贵州">贵州</option>
                            <option value="西藏">西藏</option>
                            <option value="重庆">重庆</option>
                            <option value="辽宁">辽宁</option>
                            <option value="吉林">吉林</option>
                            <option value="黑龙江">黑龙江</option>
                          
                    </select>
                </div>
            </div>
        
        </div>
    </div>

	<div class="row">
    	
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">身份证</label>
                <div class="col-sm-9">
                <input type="text" name="staffIdcard" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">出生日期</label>
                <div class="col-sm-9">
                	<input   type="text" name="staffBrithday"  onclick="laydate()"   class="form-control input-sm" placeholder="格式：yyyy-mm-dd"/>
                </div>
            </div>
        
        </div>
    </div>

	<div class="row">
    	
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">办公电话</label>
                <div class="col-sm-9">
                <input type="text" name="staffOfficePhone" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">电子邮件</label>
                <div class="col-sm-9">
                	<input type="text" name="staffEamil" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
        
    </div>

	<div class="row">
    	
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">移动电话</label>
                <div class="col-sm-9">
                <input type="text" name="staffMobilePhone" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭住址</label>
                <div class="col-sm-9">
                	<input type="text" name="staffAddr" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
    </div>

	<div class="row">
    	
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">QQ</label>
                <div class="col-sm-9">
                <input type="text" name="staffQq" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入职时间</label>
                <div class="col-sm-9">
                	<input type="text" name="staffEntryTime"  onclick="laydate()"   class="form-control input-sm" placeholder="格式：yyyy-mm-dd "/>
                </div>
            </div>
        
        </div>
        
    </div>

	<div class="row">
    	
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">教育水平</label>
                <div class="col-sm-9">
                		<select name="staffEductionLevel"  class="form-control input-sm" >
                            <option>博士</option>
                            <option>硕士</option>
                            <option selected="selected">本科</option>
                            <option>专科</option>
                        </select>
                </div>
            </div>
        </div>
         <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">员工类型</label>
                <div class="col-sm-9">
                		<select name="staffState"  class="form-control input-sm" >
                            <option value="1">教务人员</option>
                            <option selected="selected" value="2">任课教师</option>
                            <option value="3">班主任</option>
                        </select>
                </div>
            </div>
        </div>
        
    </div>
    <div class="row">
        	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">账号</label>
                <div class="col-sm-9">
                	<input type="text" name="userNumber" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">密码</label>
                <div class="col-sm-9">
                <input type="password" name="userPassowrd" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
    	
        
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">备注</label>
                <div class="col-sm-9">
                 <textarea name="staffRemark"  rows="3"  cols="102"></textarea>
                </div>
            </div>
        </div>
    </div>
    
   <br/>
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit"   value="保存"/>&nbsp;&nbsp;&nbsp;&nbsp;
        	<input  type="button" onclick="javascript:location='system/list.do'"  value="返回"/>
        </div>
    </div>
</form>
</body>
</html>