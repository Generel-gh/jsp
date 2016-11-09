<%@page import="java.sql.*" %>
<%@page contentType="text/html"pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>处理客户添加数据</title>
</head>
<body>
    <%
    String productName=new String(request.getParameter("paoductName").getBytes("iso-8859-1"),"utf-8");
    String productModel=new String(request.getParameter("productModel").getBytes("iso-8859-1"),"utf-8");    
    String productNumber=new String(request.getParameter("productNumber").getBytes("iso-8859-1"),"utf-8");
    String productPrice=new String(request.getParameter("productPrice").getBytes("iso-8859-1"),"utf-8");
    Connection con=null;
    Statement st=null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&charaterEncoding=gbk";
    con=DriverManager.getConnection(url,"root","admin");
    st=con.createStatement();
    String sql="insert into product(productName,productModel,productNumber,productPrice)values('"+productName+"','"+productModel+"','"+productNumber+"','"+productPrice+"')";
    st.executeUpdate(sql);
    response.sendRedirect("http://localhost:8084/EIMS/productManage/lookProduct.jsp");
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
