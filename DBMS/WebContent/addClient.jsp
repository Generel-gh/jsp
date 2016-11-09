<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加客户信息</title>
</head>
<body bgcolor="lightgreen">
  
        <table align="center" width="500">
            <tr>
                <td>
                    <a href="lookClient.jsp">客户查询</a>
                </td> 
                <td>客户添加</td>
                <td>
                    <a href="updateClient.jsp">客户修改</a>
                </td>    
                <td>
                    <a href="deleteClient.jsp">客户删除</a>
                </td>   
            </tr>
        </table>
        <br>
        <hr>
        <br>
        
          <form action="addClientCheck.jsp" method="post">
        <table align="center" width="300">
            <tr>
                <th colspan="4" align="center">添加客户信息</th>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input type="text" name="clientName"/></td>
            </tr>
             <tr>
                <td>电话</td>
                <td><input type="text" name="clientTelephone"/></td>
            </tr>
             <tr>
                <td>地址</td>
                <td><input type="text" name="clientAddress"/></td>
            </tr>
             <tr>
                <td>邮箱</td>
                <td><input type="text" name="clientEmail"/></td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input name="sure" type="submit" value="确认">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input name="clear" type="reset" value="取消">
                </td>
            </tr>
       </table>
    </form>

</body>
</html>