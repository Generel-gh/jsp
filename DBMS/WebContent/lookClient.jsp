<%@ page import="java.sql.* " %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>了客户查询</title>
</head>
<body>
    <table align="center" width="500">
    <tr>
    <td>客户查询</td>
    <td>
    <a href="http://localhost:8084/EIMS/clientManage/lookClient.jsp">客户查询</a>
    </td>
    <td>
    <a href="http://localhost:8084/EIMS/clientManage/updateClientClient.jsp">客户修改</a>
    </td>
    <td>
    <a href="http://localhost:8084/EIMS/clientManage/deleteClient.jsp">客户删除</a>
    </td>
    </tr>
    </table>
    <br>
    <hr>
    <br>
    <table align="center" width="700" border="2">
       <tr>
        <th colspan="4">查看客户信息</th>
       </tr>
       <tr>
       <td>姓名</td>
       <td>电话</td>
       <td>地址</td>
       <td>邮箱</td>
       </tr>
       <%
        Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        Class.forName("com.myspl:jdbc.Driver");
        String url="jdbc:myspl://localhost:3306/eims?useUnicode=true&charcterEncoding=gbk";
        con=DriverManager.getConnection(url,"root","admin");
        stmt=con.createStatement();
        String sql="select*from client";
        rs=stmt.executeQuery(sql);
        while(rs.next()){
       %>
       <tr>
       <td><%= rs.getString("clientName") %></td>
       <td><%= rs.getString("clientTelephone") %></td>
       <td><%= rs.getString("clientAddress") %></td>
       <td><%= rs.getString("clientEmail") %></td>
       </tr>
       <%
        }
       %>
    </table>
</body>
</html>