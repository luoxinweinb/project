/*
 *  <p>1. 师德、仪表（共15分）（优15分、良12分、中9分、差6分）<br/>
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
 * 
 * 
 */
function validate01(){
	var s,d1,d2,d3,d4,d5,d6;
	if(mf001.score1.value==""||mf001.score1.value==null){
		alert("评分不能为空!");
		mf001.score1.focus();
		return false;
	}else{
		d1=parseInt(mf001.score1.value);
	}
	if(isNaN(mf001.score1.value)||mf001.score1.value%1!=0){
		alert("评分只能为整数!");
		return false;
	}
    if(mf001.score1.value<0||mf001.score1.value>15){
    	alert("评分必须在0-15之间!");
		mf001.score1.focus();
		return false;
    }
	
	if(mf001.score2.value==""||mf001.score2.value==null){
		alert("评分不能为空!");
		mf001.score2.focus();
		return false;
	}else{
    	d2=parseInt(mf001.score2.value);
    }
	if(isNaN(mf001.score2.value)||mf001.score2.value%1!=0){
		alert("评分只能为整数!");
		return false;
	}
	if(mf001.score2.value<0||mf001.score2.value>20){
    	alert("评分必须在0-20之间!");
		mf001.score2.focus();
		return false;
    }
	
	if(mf001.score3.value==""||mf001.score3.value==null){
		alert("评分不能为空!");
		mf001.score3.focus();
		return false;
	}else{
		d3=parseInt(mf001.score3.value);
	}
	if(isNaN(mf001.score3.value)||mf001.score3.value%1!=0){
		alert("评分只能为整数!");
		return false;
	}
	if(mf001.score3.value<0||mf001.score3.value>15){
    	alert("评分必须在0-15之间!");
		mf001.score3.focus();
		return false;
    }
	
	if(mf001.score4.value==""||mf001.score4.value==null){
		alert("评分不能为空!");
		mf001.score4.focus();
		return false;
	}else{
		d4=parseInt(mf001.score4.value);
	}
	if(isNaN(mf001.score4.value)||mf001.score4.value%1!=0){
		alert("评分只能为整数!");
		return false;
	}
	if(mf001.score4.value<0||mf001.score4.value>15){
    	alert("评分必须在0-15之间!");
		mf001.score4.focus();
		return false;
    }
	
	if(mf001.score5.value==""||mf001.score5.value==null){
		alert("评分不能为空!");
		mf001.score5.focus();
		return false;
	}else{
		d5=parseInt(mf001.score5.value);
	}
	if(isNaN(mf001.score5.value)||mf001.score5.value%1!=0){
		alert("评分只能为整数!");
		return false;
	}
	if(mf001.score5.value<0||mf001.score5.value>20){
    	alert("评分必须在0-20之间!");
		mf001.score5.focus();
		return false;
    }
	
	if(mf001.score6.value==""||mf001.score6.value==null){
		alert("评分不能为空!");
		mf001.score1.focus();
		return false;
	}else{
		d6=parseInt(mf001.score6.value);
	}
	if(isNaN(mf001.score6.value)||mf001.score6.value%1!=0){
		alert("评分只能为整数!");
		return false;
	}
	if(mf001.score6.value<0||mf001.score6.value>15){
    	alert("评分必须在0-15之间!");
		mf001.score6.focus();
		return false;
    }
    s=d1+d2+d3+d4+d5+d6;
	if(s<=80&&(mf001.evaluationNote.value.length==0)){
		alert("请你给出建议!");
		return false;
	}
	return true;
}
/*
 * 月度评教
 */
function validate2(){
 	if(f002.evaluationContent.value!="满意"&&(f002.evaluationNote.value.length==0)){
 		alert("请你给出建议!");
 		return false;
 	}
 	return true;
 }

