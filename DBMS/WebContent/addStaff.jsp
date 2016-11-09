<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加员工信息</title>
</head>
<body bgcolor="lightgreen">
<form action="htp://locahost:8084/EIMS/staffManager/addStaffCheck.jsp"method="post">
<table align="center"width="300">
<tr>
<td>
<a href="http://locahost:8084/EIMS/staffManager/lookStaff.jsp">员工查询</a>
</td>
<td>员工添加</td>
</tr>
</table>
<br>
<hr>
<br>
<table align="center"width="300">
<tr>
<th colspan="8" align="center">添加员工信息</th>
</tr>
<tr>
<td>姓名</td>
<td><input type="text" name="staffName"/></td>
</tr>
<tr>
<td>性别</td>
<td><input type="text" name="staffSex"/></td>
</tr>
<tr>
<td>年龄</td>
<td><input type="text" name="staffAge"/></td>
</tr>
<tr>
<td>学历</td>
<td><input type="text" name="staffEduction"/></td>
</tr>
<tr>
<td>部门</td>
<td><input type="text" name="staffDepartment"/></td>
</tr>
<tr>
<td>入职时间</td>
<td><input type="text" name="staffDate"/></td>
</tr>
<tr>
<td>职务</td>
<td><input type="text" name="staffDuty"/></td>
</tr>
<tr>
<td>工资</td>
<td><input type="text" name="staffWage"/></td>
</tr>
<tr>
<tr align="center">
<td colspan="2">
<input name="sure"type="submit"value="确认">
&nbsp;&nbsp;&nbsp;&nbsp;
<input name="sure"type="reset"value="取消">
</td>
</tr>
</table>
</form>
</body>
</html>