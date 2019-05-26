<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%! Integer yourNumber=new Integer(1);%>
  <% 
  //统计在线人数 
  if(session.isNew()){ //如果是一个新的会话
     Integer number=(Integer)application.getAttribute("Count");
     if(number==null) //如果是第一个访问本站
     {number=new Integer(1);}
     else
     {number=new Integer(number.intValue()+1);}
     application.setAttribute("Count", number);
     yourNumber=(Integer)application.getAttribute("Count");
     }
   %>  
   <%
   //统计访问量：
    Integer count2=(Integer)application.getAttribute("count2");
     if(count2==null){
         count2=1;
    }
     application.setAttribute("count2", count2+1);
 %>
  <table width="100%" border="0" cellspacing="0" cellpadding="4" class="login-buttom-bg">

       <tr>
        <td align="center"><span class="login-buttom-txt">
        学院地址：江西省南昌市湾里区先锋国际软件园&nbsp;&nbsp;邮编：330041&nbsp;&nbsp;电话：0791-83792888
        </span></td>
      </tr>
      <tr>
        <td align="center"><span class="login-buttom-txt">
        CopyRight&copy; 2015 Ahead.&nbsp;&nbsp; 赣备ICP: 98234354669&nbsp;&nbsp; 访问总人数: <%=yourNumber %>
        &nbsp;&nbsp;浏览次数：<%=count2%>
        </span></td>
      </tr>
    </table>