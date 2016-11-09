<%@page import ="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" Content="text/html;charset=UTF-8">
<title>处理客户修改数据</title>
</head>
<body>
<%
String clientName=new String(request.getParameter("clientName").getBytes("UTF-8"),"UTF-8");
String clienTelephone=new String(request.getParameter("clienTelephone").getBytes("UTF-8"),"UTF-8");
String ClientAddress=new String(request.getParameter("ClientAddress").getBytes("UTF-8"),"UTF-8");
String clientEmail=new String(request.getParameter("clientEmail").getBytes("UTF-8"),"UTF-8");
Connection con=null;
Statement st=null;
if(clientName.equals("")){
	response.sendRedirect("http://locahost:8804/EIMS/clientManagen/updateClient.jsp");
}
else{
	try{
		Class.forName("com.mysql.jdbc.Drive");
		String url="jdbc:mysql://localhost:3306/eims ? useUnicode=turn&characteEncoding=gbk";
		con=DriverManager.getConnection(url,"root","anmin");
		st=con.createStatement();
		String sql="update client setclientName= '"+clientName+"',clienTelephone='"+clienTelephone+"',ClientAddress='"+ClientAddress+"',ClientAddress='"+ClientAddress+"',clientEmail='"+clientEmail+"'where clientName='"+clientName+"'";
		st.executeUpdate(sql);
		response.sendRedirect("http://locahost:8804/EIMS/clientManagen/lookClient.jsp");
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		st.close();
		con.close();
	}
}
	%>
<body>
</html>