<%@ page language="java" contentType="text/html; charset=gb2312" 
    import="java.sql.*,java.io.*" %>
<%@ page %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>送别</title>
</head>
<body>


<h3>已删除信息</h3>
 <%
 
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
 String connectSQL="jdbc:sqlserver://localhost:1433;DatabaseName=software";
 Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","seasonflower");
 
 String sql="delete from  student where id =?";
 PreparedStatement st=conn.prepareStatement(sql);
 
 String id=request.getParameter("id");
 String name=request.getParameter("name");
 String age=request.getParameter("age");
 String major=request.getParameter("major");
 
 st.setInt(1,Integer.parseInt(id));
 int rs=st.executeUpdate();
 
 System.out.println(st.toString());
 
 st.close();
 conn.close();
 
 %>  



删除成功！


</body>
</html>
