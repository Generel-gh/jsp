<%@page import="java.sql.*" %>
<%@page contentType="text/html"pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <title>产品查询</title>
</head>
<body bgcolor="lightgreen">
    <table align="center" width="500">
        <tr>
            <td>产品查询</td>
            <td>
                <a href="http://localhost:8084/EIMS/productManage/addProduct.jsp">产品添加</a>
            </td>
        </tr>
    </table>
    <br>
    <hr>
    <br>
    <table align="center"width="700"border="2" >
        <tr>
            <tr>
                <td>产品名称</td>
                <td>产品型号</td>
                <td>产品数量</td>
                <td>产品价格</td>
        </tr>
        <%
        Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&charaterEncoding=gbk";
        con=DriverManager.getConnection(url,"root","admin");
        stmt=con.createStatement();
        String sql="select*from product";
        rs=stmt.executeQuery(sql);
        while(rs.next()){
        %>
        <tr>
            <td><%=rs.getString("productName")%></td>
            <td><%=rs.getString("productModel")%></td>
            <td><%=rs.getString("productNumber")%></td>
            <td><%=rs.getString("productPrice")%></td>
        </tr>
        <%
        }
        %>
    </table>   
    </body>
</html>
