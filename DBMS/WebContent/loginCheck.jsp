<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>数据处理页面</title>
</head>
<body>
<%
String userName=new String(request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");
String password=new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
Connection con=null;
Statement st=null;
ResultSet rs=null;
if(userName.equals("")){
	response.sendRedirect("login.jsp");
}
try{
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/eims ？ useUnicode=true&characterEncoding=gbk";
	con=DriverManager.getConnection(url,"root","admin");
	st=con.createStatement();
	String query="select*from user where userName='"+userName+"'";
	rs=st.executeQuery(query);
	if(rs.next()){
		response.sendRedirect("main/main.jsp");
	}else{
		response.sendRedirect("login.jsp");
	}

}catch(Exception e){
	e.printStackTrace();
}finally{
	rs.close();
	st.close();
	con.close();
}

%>

</body>
</html>