<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
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
<script  type="text/javascript" src="resources/laydate/laydate.js"></script>
</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>教务管理</li>
        <li>教师管理</li>
        <li>修改教师信息</li>
    </ul>
</div>

<form action="teacher/update.do" method="post" class="form-horizontal">
   
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号：</label>
                <div class="col-sm-9">
                	<input type="text" name="staffId" value="${staffInfo.staffId }" readonly="readonly" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">姓名：</label>
                <div class="col-sm-9">
                	<input type="text" name="staffName" value="${staffInfo.staffName }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>

    </div>
    <!-- 开始2 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">年龄：</label>
                <div class="col-sm-9">
                	<input type="text" name="staffAge" value="${staffInfo.staffAge }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">性别：</label>
                <div class="col-sm-9">
                		<select name="staffSex" class="form-control input-sm" >
                            <option  ${staffInfo.staffSex=='男'?'selected':'' }>男</option>
                            <option ${staffInfo.staffSex=='女'?'selected':'' }>女</option>
                        </select>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束2 -->
    <!-- 开始3 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">籍贯：</label>
                <div class="col-sm-9">
                  <select name="staffNativePlace"  class="form-control input-sm" >
                            <option value="江西" ${staffInfo.staffNativePlace=='江西'?'selected':''} >江西</option>
                            <option value="湖北" ${staffInfo.staffNativePlace=='湖北'?'selected':''} >湖北</option>
                            <option value="湖南" ${staffInfo.staffNativePlace=='湖南'?'selected':''} >湖南</option>
                            <option value="河南" ${staffInfo.staffNativePlace=='河南'?'selected':''} >河南</option>
                            <option value="山东" ${staffInfo.staffNativePlace=='山东'?'selected':''} >山东</option>
                            <option value="江苏" ${staffInfo.staffNativePlace=='江苏'?'selected':''} >江苏</option>
                            <option value="安徽" ${staffInfo.staffNativePlace=='安徽'?'selected':''} >安徽</option>
                            <option value="浙江" ${staffInfo.staffNativePlace=='浙江'?'selected':''} >浙江</option>
                            <option value="福建" ${staffInfo.staffNativePlace=='福建'?'selected':''} >福建</option>
                            <option value="上海" ${staffInfo.staffNativePlace=='上海'?'selected':''} >上海</option>
                            <option value="广东" ${staffInfo.staffNativePlace=='广东'?'selected':''} >广东</option>
                            <option value="广西" ${staffInfo.staffNativePlace=='广西'?'selected':''} >广西</option>
                            <option value="海南" ${staffInfo.staffNativePlace=='海南'?'selected':''} >海南</option>
                            <option value="北京" ${staffInfo.staffNativePlace=='北京'?'selected':''} >北京</option>
                            <option value="天津" ${staffInfo.staffNativePlace=='天津'?'selected':''} >天津</option>
                            <option value="河北" ${staffInfo.staffNativePlace=='河北'?'selected':''} >河北</option>
                            <option value="山西" ${staffInfo.staffNativePlace=='山西'?'selected':''} >山西</option>
                            <option value="内蒙古" ${staffInfo.staffNativePlace=='内蒙古'?'selected':''} >内蒙古</option>
                            <option value="宁夏" ${staffInfo.staffNativePlace=='宁夏'?'selected':''} >宁夏</option>
                            <option value="新疆" ${staffInfo.staffNativePlace=='新疆'?'selected':''} >新疆</option>
                            <option value="青海" ${staffInfo.staffNativePlace=='青海'?'selected':''} >青海</option>
                            <option value="陕西" ${staffInfo.staffNativePlace=='陕西'?'selected':''} >陕西</option>
                            <option value="甘肃" ${staffInfo.staffNativePlace=='甘肃'?'selected':''} >甘肃</option>
                            <option value="四川" ${staffInfo.staffNativePlace=='四川'?'selected':''} >四川</option>
                            <option value="云南" ${staffInfo.staffNativePlace=='云南'?'selected':''} >云南</option>
                            <option value="贵州" ${staffInfo.staffNativePlace=='贵州'?'selected':''} >贵州</option>
                            <option value="西藏" ${staffInfo.staffNativePlace=='西藏'?'selected':''} >西藏</option>
                            <option value="重庆" ${staffInfo.staffNativePlace=='重庆'?'selected':''} >重庆</option>
                            <option value="辽宁" ${staffInfo.staffNativePlace=='辽宁'?'selected':''} >辽宁</option>
                            <option value="吉林" ${staffInfo.staffNativePlace=='吉林'?'selected':''} >吉林</option>
                            <option value="黑龙江" ${staffInfo.staffNativePlace=='黑龙江'?'selected':''} >黑龙江</option>
                          
                    </select>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">身份证号：</label>
                <div class="col-sm-9">
                <input type="text" name="staffIdcard" value="${staffInfo.staffIdcard }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束3 -->
        <!-- 开始4 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">出生日期：</label>
                <div class="col-sm-9">
                	<input   type="text" name="staffBrithday" value="<fmt:formatDate value="${staffInfo.staffBrithday }" type="both"  pattern="yyyy-MM-dd" />"    onclick="laydate()"    class="form-control input-sm" placeholder="格式：yyyy-mm-dd"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">办公电话：</label>
                <div class="col-sm-9">
                <input type="text" name="staffOfficePhone" value="${staffInfo.staffOfficePhone }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束4 -->
    <!-- 开始4 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">电子邮件：</label>
                <div class="col-sm-9">
                	<input type="text" name="staffEamil" value="${staffInfo.staffEamil }"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">移动电话：</label>
                <div class="col-sm-9">
                <input type="text" name="staffMobilePhone" value="${staffInfo.staffMobilePhone }"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束4 -->    
    <!-- 开始5 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭住址：</label>
                <div class="col-sm-9">
                	<input type="text" name="staffAddr"  value="${staffInfo.staffAddr }"  class="form-control input-sm" placeholder=" "/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">QQ号：</label>
                <div class="col-sm-9">
                <input type="text" name="staffQq" value="${staffInfo.staffQq }"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束5 -->    
    <!-- 开始6 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入职时间：</label>
                <div class="col-sm-9">
                	<input type="text" name="staffEntryTime" value="<fmt:formatDate value="${staffInfo.staffEntryTime }" type="both"  pattern="yyyy-MM-dd" />"    onclick="laydate()"    class="form-control input-sm" placeholder="格式：yyyy-mm-dd "/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">教育水平：</label>
                <div class="col-sm-9">
                		<select name="staffEductionLevel"  class="form-control input-sm" >
                        	<option value="保密" ${staffInfo.staffEductionLevel=='保密'?'selected':''}>保密</option>
                            <option value="博士" ${staffInfo.staffEductionLevel=='博士'?'selected':'' }>博士</option>
                            <option value="硕士" ${staffInfo.staffEductionLevel=='硕士'?'selected':'' }>硕士</option>
                            <option value="本科" ${staffInfo.staffEductionLevel=='本科'?'selected':'' }>本科</option>
                            <option value="专科" ${staffInfo.staffEductionLevel=='专科'?'selected':'' }>专科</option>
                        </select>
                </div>
            </div>
        </div>
    </div>
    <div style="display:${staffInfo.roleId!=1?'block':'none' }" >
    	<div class="row">
        	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">账号：</label>
                <div class="col-sm-9">
                    <input type="text" name="userNumber" value="${staffInfo.userNumber }"  class="form-control input-sm" placeholder=""/>
                
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">密码：</label>
                <div class="col-sm-9">
                	 <input type="text" name="userPassowrd" value="${staffInfo.userPassowrd }"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
 </div>

    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">备注：</label>
                <div class="col-sm-9">
                	<textarea name="staffRemark"  rows="3"  cols="102">${staffInfo.staffRemark } </textarea>
                </div>
            </div>
        
        </div>
   </div>
    

     <br/>
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit"   value="修改"/>&nbsp;&nbsp;
        	<input type="button"     value="返回上一级" onClick="javascript:window.location='teacher/list.do'"/>

        </div>
    </div>
</form>
<br/>
</body>
</html>