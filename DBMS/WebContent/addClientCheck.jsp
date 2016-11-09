<%@ page import="java.sql.* " %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>处理客户添加数据</title>
</head>
<body>
<%
    String clientName=
    new String(request.getParameter("clientName").getBytes("ISO-8859-1"),"utf-8");
    String clientTelephone=
    new String(request.getParameter("clientName").getBytes("ISO-8859-1"),"utf-8");
    String clientAddress=
    new String(request.getParameter("clientName").getBytes("ISO-8859-1"),"utf-8");
    String clientEmail=
    new String(request.getParameter("clientName").getBytes("ISO-8859-1"),"utf-8");
    Connection con=null;
    Statement st=null;
  try{
	  Class.forName("com.myspl.jdpc.Driver");
	  String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
	  con=DriverManager.getConnection(url,"root","admin");
	  st=con.createStatement();
	  String sql="insert into client(clientName,clientTelphone,clientAddress,clientEmail)values('"+clientName+"','"+clientTelephone+"','"+clientAddress+"','"+clientEmail+"')";
	  st.executeUpdate(sql);
	  response.sendRedirect("http://localhost:8084/EIMS/clientManage/lookClient.jsp");
	  
	
  }catch(Exception e){
	e.printStackTrace();
  }
  finally{
	  st.close();
	  con.close();
	  
  }
  
%>

</body>
</html>