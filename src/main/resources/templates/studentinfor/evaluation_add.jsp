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
<title>添加学期评价</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>
<script  type="text/javascript"  src="resources/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript"   src="resources/js/evaluationinfo.js"></script>
 
</head>
<body style="background-color: #eeeeee">
 <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">评教说明</h5>
 <p>1. 师德、仪表（共15分）（优15分、良12分、中9分、差6分）<br/>
 &nbsp;&nbsp;&nbsp;&nbsp;热爱本职工作，关心并严格要求学生，与学生沟通通畅，着装整洁,仪表端庄,
 不迟到,不提前下课,上课不做教学无关事情，掌控课堂纪律好，在教学过程中教书育人。</p>
 <p>2. 教学过程（共20分）（优20分、良16分、中12分、差8分）<br/>
 &nbsp;&nbsp;&nbsp;&nbsp;认真备课，授课准备充分，教学安排合理，授课内容熟练，条理清楚，授课知识点准确，重点突出，
 概括难点清晰、反映科学前沿信息，能扩大学生视野。</p>
 <p>3. 教学方法（共15分）（优15分、良12分、中9分、差6分）<br/>
 &nbsp;&nbsp;&nbsp;&nbsp;教学方法灵活，注重应用，多媒体课件制作视觉效果好，板书工整，能使用案例教学，
 视频、课件、板书结合到位，知识面广。</p>
 <p>4. 语言表达（共15分）（优15分、良12分、中9分、差6分）<br/>
 &nbsp;&nbsp;&nbsp;&nbsp;语言表达形象、生动、幽默、准确、简练，语速快慢适中，
 解答问题简练明了，讲授的知识点能举一反三。</p>
 <p>5. 能力培养（共20分）（优20分、良16分、中12分、差8分）<br/>
  &nbsp;&nbsp;&nbsp;&nbsp;教会学生掌握学习方法，培养学生获取知识、理解问题的能力，培养学生创新思维和创新能力，
  重视实训实践中的基本技能训练，因人施教，指导学生的个性发展。</p>
 <p>6. 教学效果（共15分）（优15分、良12分、中9分、差6分）<br/>
 &nbsp;&nbsp;&nbsp;&nbsp;善于引导学生思考、调动学生的主动性、积极性，师生互动好，布置课外练习并能认真批改和准确评价，
 学生较好地掌握了知识点，达到了教学目标，提高了学生分析问题、解决问题和自学能力。</p>
 
<form action="evaluationinfor/add.do" name="mf001" onsubmit="return validate01();" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">添加评教信息</h5>
    <div class="row">
    	
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学期</label>
                <div class="col-sm-9">
                     <select name="evaluationXueqi" class="form-control input-sm">
                        
                          <option value="2015-2016学年第一学期">2015-2016学年第一学期</option>
               			  <option value="2015-2016学年第二学期">2015-2016学年第二学期</option>
               			  <option value="2016-2017学年第一学期">2016-2017学年第一学期</option>
               			  <option value="2016-2017学年第二学期">2016-2017学年第二学期</option>
               			  <option value="2017-2018学年第一学期">2017-2018学年第一学期</option>
               			  <option value="2017-2018学年第二学期">2017-2018学年第二学期</option>
               			  <option value="2018-2019学年第一学期" selected="selected">2018-2019学年第一学期</option>
               			  <option value="2018-2019学年第二学期">2018-2019学年第二学期</option>
               		 </select>
                	
                </div>
            </div>
        </div>
       <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">专业</label>
                <div class="col-sm-9">
                    <select  name="evaluationMajor" class="form-control input-sm"  size="1">
                    	<option selected="selected" value="软件技术(Java软件开发方向)">软件技术(Java软件开发方向)</option>
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
    </div>
    
    <div class="row">
    	
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">班级</label>
                <div class="col-sm-9">
               		    <select name="classId" class="form-control input-sm">
               				<c:forEach items="${classlist }" var="c">
               				  <option value="${c.classId }">${c.className }</option>               			
               				</c:forEach>
               			</select>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">教师姓名</label>
                <div class="col-sm-9">
                   <select name="staffId" class="form-control input-sm">
               		<c:forEach items="${stafflist }" var="staff">
               		   <option value="${staff.staffId }">${staff.staffName }</option>  
               		</c:forEach>	
               	  </select>
                </div>
            </div>
        </div>
        
    </div>
    
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">任教课程</label>
                <div class="col-sm-9">
               		    <select name="disciplineId" class="form-control input-sm">
               				<c:forEach items="${disclist }" var="d">
               				    <option value="${d.disciplineId }">${d.disciplineName }</option>  
               				</c:forEach>
               			</select>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">师德、仪表(15分)</label>
                <div class="col-sm-9">
               			<input type="text" name="score1"    class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">教学过程(20分)</label>
                <div class="col-sm-9">
               		<input type="text" name="score2"  class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        
        </div>
    </div>
     <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">教学方法(15分)</label>
                <div class="col-sm-9">
               			<input type="text" name="score3"     class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">语言表达(15分)</label>
                <div class="col-sm-9">
               		<input type="text" name="score4"    class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>
     <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">能力培养(20分)</label>
                <div class="col-sm-9">
               			<input type="text" name="score5"      class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">教学效果(15分)</label>
                <div class="col-sm-9">
               		<input type="text" name="score6"     class="form-control input-sm" placeholder=""/>
                </div>
            </div>
        </div>
    </div>

    
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">建议</label>
                <div class="col-sm-9">
               		<textarea cols="115" name="evaluationNote"></textarea>
                </div>
            </div>
        </div>
     </div>
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	 <input  type="submit"      value="添 加"/>
        </div>
    </div>
</form>
<br/>
</body>
</html>