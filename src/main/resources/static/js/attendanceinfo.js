 
function avalidate(){
	if(amf.attendanceTime.value==""||amf.attendanceTime.value==null){
		alert("考勤日期不能为空!");
		amf.attendanceTime.focus();
		return false;
	}
	
	return true;
}
