<%--
  Created by IntelliJ IDEA.
  User: Krieg
  Date: 2017/6/10
  Time: 19:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎注册阿宁学生信息管理系统</title>
</head>
<body>
<center>
    <h3 style="color:#5240ff">欢迎注册使用阿宁学生信息管理系统</h3>
    <form id="signinform" name="signinForm" action="data/addadmin.jsp" method="post">
        <table border="0">
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password">
                </td>
            </tr>

        </table>
        <br>
        <input type="submit" value="注册" style="color:#BC8F8F">
        <a href="index.jsp"><input type="button" value="返回" style="color:#BC8F8F"></a>
    </form>
</center>

</body>
</html>
