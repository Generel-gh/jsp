<%@page import="java.sql.*" %>
<%@page contentType="text/html"pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <title>处理售后添加数据</title>
</head>
<body>
    <% 
    String clientName=new String(request.getParameter("clientName").getBytes("ISO-8859-1"),"UTF-8");
    String clientOpinion=new String(request.getParameter("clientOpinion").getBytes("ISO-8859-1"),"UTF-8");
    String StaffName=new String(request.getParameter("StaffName").getBytes("ISO-8859-1"),"UTF-8");
    Connection con=null;
    Statement st=null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mtsql://localhost:2206/eims?useUnicode=true&characterEncoding=gbk";
    con=DriverManager.getConnection(url,"root","admin");
    st=con.createStatement();
    String sql="insert into cs(clientName,clientOpinion,StaffName)values('"+clientName+"','"+clientOpinion+"','"+StaffName+"')";
    st.executeUpdate(sql);
    response.sendRedirect("http://localhost:8084/EIMS/CSManage/lookCS.jsp");
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
