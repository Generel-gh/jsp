<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="nvyoubao.GirlFriend" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>爱的丘比特殿堂</title>
</head>
<body bgcolor="lightgreen">
<%
	GirlFriend gf = (GirlFriend)session.getAttribute("myGirlFriend");//从session中获得
	String phone = request.getParameter("phone");//从刚刚的页面中得到选项内容
	
	int shengQi = gf.getShengQi();//获得女友现在的生气值
	int ai = gf.getAi();//获得女友现在的爱值
	
	if(phone.equals("1")){
		shengQi = shengQi+10;
	}else if(phone.equals("2")){
		shengQi = shengQi+30;
	}else if(phone.equals("3")){
		ai = ai+20;
	}else{
		ai = ai+10;
		shengQi=shengQi +10;
	}
	
	gf.setShengQi(shengQi);
	gf.setAi(ai);
	
	if(gf.getShengQi()>30){
		out.print("<h1>天涯何处无芳草，你被pass了0.0</h1>");
	}else{
		out.print("<h1>人生自古谁无死，女友怒气已"+gf.getShengQi()+"值</h1>");
		
		if(gf.getAi()>30){
			out.print("<h1>人生若只如初见，对你女友再好一点！</h1>");
		}
		out.print("<p><a href='status.jsp'>继续测试！</a></p>");
	}
	
	if(gf.getAi()>100){
		out.print("<h1>执子之手，与子偕老！去吧离开这个虚幻的世界，去找你的归宿0.0</h1>");
	}
%>
</body>
</html>