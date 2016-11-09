<%@page import ="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>处理客户删除的数据</title>
</head>
<body>
<%
String clientName=
new String(request.getParameter("clientName").getBytes("UTF-8"),"UTF-8");
Connection con=null;
Statement st=null;
try{
	Class.forName("com.mysql.jdbc.Drive");
	String url="jdbc:mysql://localhost:3306/eims ? useUnicode=turn&characteEncoding=gbk";
	con=DriverManager.getConnection(url,"root","anmin");
	st=con.createStatement();
	String sq="delete from client where clientName= '"+clientName+"'";
	st.executeUpdate(sq);
	response.sendRedirect("http://locahost:8804/EIMS/clientManagen/lookClient.jsp");
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