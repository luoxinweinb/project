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
<title>c</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>
<script  type="text/javascript" src="resources/My97DatePicker/WdatePicker.js"></script>

<script type="text/javascript" src="resources/js/student.js"></script>

<script  type="text/javascript" src="resources/laydate/laydate.js"></script>

</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>学生管理</li>
        <li>学生信息</li>
        <li>添加学生信息</li>
    </ul>
</div>

<form action="student/add.do" name="smf1" onsubmit="return stuvalidate();" class="form-horizontal" method="post">
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                	<input type="text" name="studentId" readonly="readonly" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学号</label>
                <div class="col-sm-9">
                	<input type="text" name="studentNo" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    	<!--开始 -->
    	<div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">姓名</label>
                <div class="col-sm-9">
                	<input type="text" name="studentName" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">性别</label>
                <div class="col-sm-9">
                	<select  name="studentSex" class="form-control input-sm" >
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select>
                </div>
            </div>
        </div>
        
    </div>
   <!--结束 -->
       	<!--开始 -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">曾用名</label>
                <div class="col-sm-9">
                	<input type="text" name="studentName1" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">民族</label>
                <div class="col-sm-9">
                	<input type="text" name="studentNational" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
       
    </div>
   <!--结束 -->
    <!--开始 -->
    	<div class="row">
    	 <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">出生日期</label>
                <div class="col-sm-9">  
                	<input type="text" name="studentBirthday"  onclick="laydate()"  class="form-control input-sm" placeholder="格式：yyyy-mm-dd"/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">健康状况</label>
                <div class="col-sm-9">
                     <select  name="studentHealth" class="form-control input-sm"  size="1">
                        <option  selected="selected" value="良好">良好</option>
                        <option value="异常">异常</option>
                    </select>

                </div>
            </div>
        </div>
       
    </div>
   <!--结束 -->
   <!--开始 -->
    	<div class="row">
    	 <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">籍贯</label>
                <div class="col-sm-9">
                
                   <select name="studentNative"  class="form-control input-sm" >
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
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入学年月</label>
                <div class="col-sm-9">
                	<input type="text"   name="inDate"    class="form-control input-sm" placeholder="格式：2016年9月"/>
                </div>
            </div>
        </div>
        
    </div>
   <!--结束 -->
      <!--开始 -->
    	<div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">婚否</label>
                <div class="col-sm-9">
                    <select  name="studentMarital" class="form-control input-sm"  size="1">
                        <option  selected="selected" value="未婚">未婚</option>
                        <option value="已婚">已婚</option>
                    </select>
                
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭地址</label>
                <div class="col-sm-9">
                	<input type="text" name="studentAddress" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        
    </div>
   <!--结束 -->
         <!--开始 -->
    	<div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">邮编</label>
                <div class="col-sm-9">
                	<input type="text" name="studentPost" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭电话</label>
                <div class="col-sm-9">
                	<input type="text" name="familyTellphone" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        
    </div>
   <!--结束 -->
            <!--开始 -->
    	<div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">本人电话</label>
                <div class="col-sm-9">
                	<input type="text" name="studentTellphone" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">QQ号</label>
                <div class="col-sm-9">
                	<input type="text" name="studentQq" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
      
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">是否党团员</label>
                <div class="col-sm-9">
                    <select  name="studentIsleague" class="form-control input-sm"  size="1">
                    	<option  value="群众">群众</option>
                        <option  selected="selected" value="共青团员">共青团员</option>
                        <option value="党员">党员</option>
                    </select>
                
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入党团时间</label>
                <div class="col-sm-9">
                	<input type="text" name="studentJoinTime"  onclick="laydate()"  class="form-control input-sm" placeholder="格式：yyyy-mm-dd"/>
                </div>
            </div>
        </div>
       
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">身份证号</label>
                <div class="col-sm-9">
                	<input type="text" name="studentIdcard" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入学前学校</label>
                <div class="col-sm-9">
                	<input type="text" name="studentBeforeSchool"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
       
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">特长爱好</label>
                <div class="col-sm-9">
                	<input type="text" name="studentHobby" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">所在分院</label>
                <div class="col-sm-9">
                     <select  name="studentSchool" class="form-control input-sm"  size="1">
                    	<option selected="selected" value="信息学院">信息学院</option>
                        <option value="软件学院">软件学院</option>
                        <option value="商务学院">商务学院</option>
                        <option value="网络学院">网络学院</option>
                        <option value="艺术学院">艺术学院</option>
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
                     <select  name="studentPro" class="form-control input-sm"  size="1">
                    	<option  value="软件技术(Java软件开发方向)">软件技术(Java软件开发方向)</option>
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
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">班级</label>
                <div class="col-sm-9">
                 <select onchange="query(this)" name="classId" class="form-control  input-sm">
                   <!--      -->    
        	            <c:forEach items="${classlist }" var="cc">
                           <option value="${cc.classId }">${cc.className }</option>
                        </c:forEach>
                     
                    <!--    
                    <option value="44">180315班</option>
                      -->    
                 </select>
                </div>
            </div>
        </div>
       
    </div>
    
     <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学制</label>
                <div class="col-sm-9">
                    <select  name="studentEduSys" class="form-control input-sm"  size="1">
                    	<option selected="selected" value="三年">三年</option>
                        <option value="四年">四年</option>
                    </select>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">所在城市</label>
                <div class="col-sm-9">
                	<input type="text" name="studentProCity"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
       
    </div>
    
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学历类型</label>
                <div class="col-sm-9">
                    <select  name="studentType" class="form-control input-sm"  size="1">
                        <option value="中专">中专</option>
                    	<option selected="selected" value="专科">专科</option>
                        <option value="本科">本科</option>
                        <option value="研究生">研究生</option>
                    </select>
                </div>
            </div>
        </div>
        
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学籍状态</label>
                <div class="col-sm-9">
                    <select  name="studentState" class="form-control input-sm"  size="1">
                        <option selected="selected" value="正常">正常</option>
                    	<option  value="保留学籍">保留学籍</option>
                        <option value="挂学籍">挂学籍</option>
                        <option value="退学">退学</option>
                        <option value="预科">预科</option>
                        <option value="自考">自考</option>
                    </select>
                </div>
            </div>
        </div>
        
    </div>
    
     <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">是否困难学生</label>
                <div class="col-sm-9">
                    <select  name="studentHard" class="form-control input-sm"  size="1">
                        <option  value="否">否</option>
                    	<option  value="是">是</option>
                    </select>
                </div>
            </div>
        </div>
        
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">是否助学贷款</label>
                <div class="col-sm-9">
                    <select  name="studentLoan" class="form-control input-sm"  size="1">
                        <option  value="否">否</option>
                    	<option  value="是">是</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    
     <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">是否退伍考学</label>
                <div class="col-sm-9">
                    <select  name="studentMuster" class="form-control input-sm"  size="1">
                        <option  value="否">否</option>
                    	<option  value="是">是</option>
                    </select>
                </div>
            </div>
        </div>
        
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">十一工程分</label>
                <div class="col-sm-9">
                	<input type="text" name="studentProject"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    
    
    
     <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">账号</label>
                <div class="col-sm-9">
                	<input type="text" name="studentNumber" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">密码</label>
                <div class="col-sm-9">
                	<input type="password" name="studentPassword"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
   <!--结束 -->

    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">描述信息</label>
                <div class="col-sm-9">
                	<textarea name="studentDesc"   rows="3"  cols="102" ></textarea>
                </div>
            </div>
        
        </div>

    </div>
   
   
    
     <br/>
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4" align="center">
        	<input  type="submit"  value="保存"/>&nbsp;&nbsp;
            <input  type="button" onclick="javascript:location='student/list.do'"  value="返回上一级"/>

        </div>
    </div>
</form>
<br/>
</body>
</html>