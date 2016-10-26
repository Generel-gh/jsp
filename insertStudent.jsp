<%@ page language="java" contentType="text/html; charset=gb2312" 
    import="java.sql.*,java.io.*" %>
<%@ page %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>加入</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
%>


 <%
 
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
 String connectSQL="jdbc:sqlserver://localhost:1433;DatabaseName=software";
 Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","seasonflower");
 
 String sql="insert into student values (?,?,?,?)";
 PreparedStatement st=conn.prepareStatement(sql);
 
 String id=request.getParameter("id");
 String name=request.getParameter("name");
 String age=request.getParameter("age");
 String major=request.getParameter("major");
 
 st.setInt(1,Integer.parseInt(id));
 st.setString(2,name);
 st.setInt(3,Integer.parseInt(age));
 st.setString(4,major);
 
 st.executeUpdate();
 
 System.out.println(st.toString());
 
 st.close();
 conn.close();
 
 %>  

新成员已加入！


</body>
</html>