<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>处理合同添加数据</title>
</head>
<body>
<%
String staffName=new
String(request.getParameter("staffName").getBytes("utf-8"),"utf-8");
String staffSex=new
String(request.getParameter("staffSex").getBytes("utf-8"),"utf-8");
String staffAge=new
String(request.getParameter("staffAge").getBytes("utf-8"),"utf-8");
String staffEducation=new
String(request.getParameter("staffEducation").getBytes("utf-8"),"utf-8");
String staffDepartment=new
String(request.getParameter("staffDepartment").getBytes("utf-8"),"utf-8");
String staffDate=new
String(request.getParameter("staffDate").getBytes("utf-8"),"utf-8");
String staffDuty=new
String(request.getParameter("staffDuty").getBytes("utf-8"),"utf-8");
String staffWage=new
String(request.getParameter("staffWage").getBytes("utf-8"),"utf-8");
Connection con=null;
Statement st=null;
try{
	Class.forName("com.mysql.jdbc.Drive");
	String url="jdbc:mysql://localhost:3306/eims?useUnicode=turn&characteEncoding=gbk";
	con=DriverManager.getConnection(url,"root","anmin");
	st=con.createStatement();
	String sql="insert into staff(staffName,staffSex,staffSex,staffEducation,staffDepartment,staffDate,staffDuty,staffWage)value('"+staffName+"','"+staffSex+"','"+staffSex+"','"+staffEducation+"','"+staffDepartment+"','"+staffDate+"','"+staffDuty+"','"+staffWage+"')";
	st.executeQuery(sql);
	response.sendRedirect("http://locahost:8084/EIMS/staffManager/lookStaff.jsp");
}
catch(Exception e){
	e.printStackTrace();
}
finally{
	st.close();
	con.close();
}
%>
</body>
</html>