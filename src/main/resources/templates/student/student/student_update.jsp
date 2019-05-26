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
<title>学生管理</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>
<script  type="text/javascript" src="resources/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="<%=basePath%>/resources/js/student.js"></script>
<script  type="text/javascript" src="resources/laydate/laydate.js"></script>
</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>学生管理</li>
        <li>学生信息</li>
        <li>修改学生信息</li>
    </ul>
</div>

<form action="student/update.do" name="smf1" onsubmit="return stuvalidate();" class="form-horizontal"  method="post">
   
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                	<input type="text" name="studentId" value="${stuinfo.studentId }" readonly="readonly" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学号</label>
                <div class="col-sm-9">
                	<input type="text" name="studentNo" value="${stuinfo.studentNo }" class="form-control input-sm" placeholder=""/>
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
                	<input type="text" name="studentName" value="${stuinfo.studentName }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
         <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">性别</label>
                <div class="col-sm-9">
                	<select  name="studentSex" class="form-control input-sm" >
                    
                        <option value="男" ${stuinfo.studentSex=='男'?'selected':'' }>男</option>
                        <option value="女" ${stuinfo.studentSex=='女'?'selected':'' }>女</option>
                    </select>
                </div>
            </div>
          </div>
    </div>
   	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">曾用名</label>
                <div class="col-sm-9">
                	<input type="text" name="studentName1" value="${stuinfo.studentName1 }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">民族</label>
                <div class="col-sm-9">
                	<input type="text" name="studentNational" value="${stuinfo.studentNational }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	 <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">出生日期</label>
                <div class="col-sm-9">
                	<input type="text" name="studentBirthday"  value="${stuinfo.studentBirthday }"  onclick="laydate()"  class="form-control input-sm" placeholder="格式：yyyy-mm-dd"/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">健康状况</label>
                <div class="col-sm-9">
                    <select  name="studentHealth" class="form-control input-sm" >
                        <option value="良好" ${stuinfo.studentHealth=='良好'?'selected':'' }>良好</option>
                        <option value="异常" ${stuinfo.studentHealth=='异常'?'selected':'' }>异常</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	 <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">籍贯</label>
                <div class="col-sm-9">
                 <select name="studentNative"  size="1"  class="form-control input-sm" >
                            <option value="江西" ${stuinfo.studentNative=='江西'?'selected':''} >江西</option>
                            <option value="湖北" ${stuinfo.studentNative=='湖北'?'selected':''} >湖北</option>
                            <option value="湖南" ${stuinfo.studentNative=='湖南'?'selected':''} >湖南</option>
                            <option value="河南" ${stuinfo.studentNative=='河南'?'selected':''} >河南</option>
                            <option value="山东" ${stuinfo.studentNative=='山东'?'selected':''} >山东</option>
                            <option value="江苏" ${stuinfo.studentNative=='江苏'?'selected':''} >江苏</option>
                            <option value="安徽" ${stuinfo.studentNative=='安徽'?'selected':''} >安徽</option>
                            <option value="浙江" ${stuinfo.studentNative=='浙江'?'selected':''} >浙江</option>
                            <option value="福建" ${stuinfo.studentNative=='福建'?'selected':''} >福建</option>
                            <option value="上海" ${stuinfo.studentNative=='上海'?'selected':''} >上海</option>
                            <option value="广东" ${stuinfo.studentNative=='广东'?'selected':''} >广东</option>
                            <option value="广西" ${stuinfo.studentNative=='广西'?'selected':''} >广西</option>
                            <option value="海南" ${stuinfo.studentNative=='海南'?'selected':''} >海南</option>
                            <option value="北京" ${stuinfo.studentNative=='北京'?'selected':''} >北京</option>
                            <option value="天津" ${stuinfo.studentNative=='天津'?'selected':''} >天津</option>
                            <option value="河北" ${stuinfo.studentNative=='河北'?'selected':''} >河北</option>
                            <option value="山西" ${stuinfo.studentNative=='山西'?'selected':''} >山西</option>
                            <option value="内蒙古" ${stuinfo.studentNative=='内蒙古'?'selected':''} >内蒙古</option>
                            <option value="宁夏" ${stuinfo.studentNative=='宁夏'?'selected':''} >宁夏</option>
                            <option value="新疆" ${stuinfo.studentNative=='新疆'?'selected':''} >新疆</option>
                            <option value="青海" ${stuinfo.studentNative=='青海'?'selected':''} >青海</option>
                            <option value="陕西" ${stuinfo.studentNative=='陕西'?'selected':''} >陕西</option>
                            <option value="甘肃" ${stuinfo.studentNative=='甘肃'?'selected':''} >甘肃</option>
                            <option value="四川" ${stuinfo.studentNative=='四川'?'selected':''} >四川</option>
                            <option value="云南" ${stuinfo.studentNative=='云南'?'selected':''} >云南</option>
                            <option value="贵州" ${stuinfo.studentNative=='贵州'?'selected':''} >贵州</option>
                            <option value="西藏" ${stuinfo.studentNative=='西藏'?'selected':''} >西藏</option>
                            <option value="重庆" ${stuinfo.studentNative=='重庆'?'selected':''} >重庆</option>
                            <option value="辽宁" ${stuinfo.studentNative=='辽宁'?'selected':''} >辽宁</option>
                            <option value="吉林" ${stuinfo.studentNative=='吉林'?'selected':''} >吉林</option>
                            <option value="黑龙江" ${stuinfo.studentNative=='黑龙江'?'selected':''} >黑龙江</option>
                          
                    </select>
                
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入学年月</label>
                <div class="col-sm-9">
                	<input type="text"   name="inDate"   value="${stuinfo.inDate }"     class="form-control input-sm" placeholder="格式：2016年9月"/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">婚否</label>
                <div class="col-sm-9">
                   <select  name="studentMarital" class="form-control input-sm" >
                          <option value="未婚" ${stuinfo.studentMarital=='未婚'?'selected':'' }>未婚</option>
                          <option value="已婚" ${stuinfo.studentMarital=='已婚'?'selected':'' }>已婚</option>
                    </select>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭地址</label>
                <div class="col-sm-9">
                	<input type="text" name="studentAddress"  value="${stuinfo.studentAddress }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">邮编</label>
                <div class="col-sm-9">
                	<input type="text" name="studentPost" value="${stuinfo.studentPost }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭电话</label>
                <div class="col-sm-9">
                	<input type="text" name="familyTellphone" value="${stuinfo.familyTellphone }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
      	<div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">本人电话</label>
                <div class="col-sm-9">
                	<input type="text" name="studentTellphone" value="${stuinfo.studentTellphone }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">QQ号</label>
                <div class="col-sm-9">
                	<input type="text" name="studentQq" value="${stuinfo.studentQq }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">是否党团员</label>
                <div class="col-sm-9">
                    <select  name="studentIsleague" class="form-control input-sm" >
                          <option value="群众" ${stuinfo.studentIsleague=='群众'?'selected':'' }>群众</option>
                          <option value="共青团员" ${stuinfo.studentIsleague=='共青团员'?'selected':'' }>共青团员</option>
                           <option value="党员" ${stuinfo.studentIsleague=='党员'?'selected':'' }>党员</option>
                    </select>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入党团时间</label>
                <div class="col-sm-9">
                	<input type="text" name="studentJoinTime"  value="${stuinfo.studentJoinTime }"   onclick="laydate()"   class="form-control input-sm" placeholder="格式：yyyy-mm-dd"/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">身份证号</label>
                <div class="col-sm-9">
                	<input type="text" name="studentIdcard" value="${stuinfo.studentIdcard }" class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入学前学校</label>
                <div class="col-sm-9">
                	<input type="text" name="studentBeforeSchool" value="${stuinfo.studentBeforeSchool }"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">特长爱好</label>
                <div class="col-sm-9">
                	<input type="text" name="studentHobby" value="${stuinfo.studentHobby }"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">所在分院</label>
                <div class="col-sm-9">
                    <select  name="studentSchool" class="form-control input-sm" >
                          <option value="信息学院" ${stuinfo.studentSchool=='信息学院'?'selected':'' }>信息学院</option>
                          <option value="商务学院" ${stuinfo.studentSchool=='商务学院'?'selected':'' }>商务学院</option>
                           <option value="软件学院" ${stuinfo.studentSchool=='软件学院'?'selected':'' }>软件学院</option>
                          <option value="艺术学院" ${stuinfo.studentSchool=='艺术学院'?'selected':'' }>艺术学院</option>
                          <option value="网络学院" ${stuinfo.studentSchool=='网络学院'?'selected':'' }>软件学院</option>
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
                    <select  name="studentPro" class="form-control input-sm" >
                          <option value="软件技术(Java软件开发方向)" ${stuinfo.studentPro=='软件技术(Java软件开发方向)'?'selected':'' }>软件技术(Java软件开发方向)</option>
                          <option value="软件技术(软件测试方向)" ${stuinfo.studentPro=='软件技术(软件测试方向)'?'selected':'' }>软件技术(软件测试方向)</option>
                          <option value="软件技术(网络运营策划方向)" ${stuinfo.studentPro=='软件技术(网络运营策划方向)'?'selected':'' }>软件技术(网络运营策划方向)</option>
                          <option value="软件技术(美工与设计方向)" ${stuinfo.studentPro=='软件技术(美工与设计方向)'?'selected':'' }>软件技术(美工与设计方向)</option>
                          <option value="软件技术(新媒体营销与策划方向)" ${stuinfo.studentPro=='软件技术(新媒体营销与策划方向)'?'selected':'' }>软件技术(新媒体营销与策划方向)</option>
                          <option value="软件技术(前端开发与UI设计方向)" ${stuinfo.studentPro=='软件技术(前端开发与UI设计方向)'?'selected':'' }>软件技术(前端开发与UI设计方向)</option>
                          <option value="软件技术(通信与运维方向)" ${stuinfo.studentPro=='软件技术(通信与运维方向)'?'selected':'' }>软件技术(通信与运维方向)</option>
                          <option value="软件技术(Android软件开发方向)" ${stuinfo.studentPro=='软件技术(Android软件开发方向)'?'selected':'' }>软件技术(Android软件开发方向)</option>
                          <option value="软件技术(大数据分析方向)" ${stuinfo.studentPro=='软件技术(大数据分析方向)'?'selected':'' }>软件技术(大数据分析方向)</option>
                          <option value="软件技术(VR虚拟与现实方向)" ${stuinfo.studentPro=='软件技术(VR虚拟与现实方向)'?'selected':'' }>软件技术(VR虚拟与现实方向)</option>
                          <option value="软件技术(18级)" ${stuinfo.studentPro=='软件技术(18级)'?'selected':'' }>软件技术(18级)</option>
                          <option value="计算机应用技术" ${stuinfo.studentPro=='计算机应用技术'?'selected':'' }>计算机应用技术</option>
                
                    </select>
                	
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">班级</label>
                <div class="col-sm-9">
                   <select onchange="query(this)" name="classId" class="form-control  input-sm">
        	            <c:forEach items="${classlist}" var="cc">
        	               <option value="${cc.classId}"  ${cc.classId==stuinfo.classId ?'selected':''} >${cc.className }</option>             
                        </c:forEach>
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
                   <select  name="studentEduSys" class="form-control input-sm" >
                          <option value="三年" ${stuinfo.studentEduSys=='三年'?'selected':'' }>三年</option>
                          <option value="四年" ${stuinfo.studentEduSys=='四年'?'selected':'' }>四年</option>
                    
                    </select>
                	
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">所在城市</label>
                <div class="col-sm-9">
                	<input type="text" name="studentProCity" value="${stuinfo.studentProCity }"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
     <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学历类型</label>
                <div class="col-sm-9">
                     <select  name="studentType" class="form-control input-sm" >
                           <option value="中专" ${stuinfo.studentType=='中专'?'selected':'' }>中专</option>
                           <option value="专科" ${stuinfo.studentType=='专科'?'selected':'' }>专科</option>
                           <option value="本科" ${stuinfo.studentType=='本科'?'selected':'' }>本科</option>
                            <option value="研究生" ${stuinfo.studentType=='研究生'?'selected':'' }>研究生</option>
                    </select>
                
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学籍状态</label>
                <div class="col-sm-9">
                    <select  name="studentState" class="form-control input-sm" >
                           <option value="正常"      ${stuinfo.studentState=='正常'?'selected':'' } >正常</option>
                           <option value="保留学籍"  ${stuinfo.studentState=='保留学籍'?'selected':'' } >保留学籍</option>
                           <option value="挂学籍"    ${stuinfo.studentState=='挂学籍'?'selected':'' } >挂学籍</option>
                           <option value="退学"      ${stuinfo.studentState=='退学'?'selected':'' } >退学</option>
                           <option value="预科"      ${stuinfo.studentState=='预科'?'selected':'' } >预科</option>
                           <option value="自考"      ${stuinfo.studentState=='自考'?'selected':'' } >自考</option>
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
                         <option  value="否"  ${stuinfo.studentHard=='否'?'selected':'' }>否</option>
                    	 <option  value="是"  ${stuinfo.studentHard=='是'?'selected':'' }>是</option>
                    </select>
                </div>
            </div>
        </div>
        
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">是否助学贷款</label>
                <div class="col-sm-9">
                    <select  name="studentLoan" class="form-control input-sm"  size="1">
                         <option  value="否"  ${stuinfo.studentLoan=='否'?'selected':'' }>否</option>
                    	 <option  value="是"  ${stuinfo.studentLoan=='是'?'selected':'' }>是</option>
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
                         <option  value="否"  ${stuinfo.studentMuster=='否'?'selected':'' }>否</option>
                    	 <option  value="是"  ${stuinfo.studentMuster=='是'?'selected':'' }>是</option>
                    </select>
                </div>
            </div>
        </div>
        
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">十一工程分</label>
                <div class="col-sm-9">
                	<input type="text" name="studentProject"  value="${stuinfo.studentProject }"   class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    
    
    
    
     <div class="row">
    	<div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">账号</label>
                <div class="col-sm-9">
                	<input type="text" name="studentNumber" value="${stuinfo.studentNumber }"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">密码</label>
                <div class="col-sm-9">
                	<input type="password" name="studentPassword"  value="${stuinfo.studentPassword }"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
    
 
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">描述信息</label>
                <div class="col-sm-9">
                	<textarea name="studentDesc"   rows="3"  cols="102" >${stuinfo.studentDesc }</textarea>
                </div>
            </div>
        
        </div>
    </div>
    

    <br/>
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit"  value="保存"/>&nbsp;&nbsp;
        	<input  type="button" onclick="javascript:location='student/list.do'"  value="返回上一级"/>

        </div>
    </div>
   </form>
   <br/>  
</body>
</html>