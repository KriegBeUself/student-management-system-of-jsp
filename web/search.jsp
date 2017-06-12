<%--
  Created by IntelliJ IDEA.
  User: Krieg
  Date: 2017/6/11
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>查找学生信息</title>
</head>
<body>
<form id="search" name="search" method="post" action="data/searchstu.jsp">
    <center>
        <input type="text" name="content" >
        <br>
        <br>
        <input type="submit" value="搜索">&nbsp;&nbsp;&nbsp;
        <a href="main.jsp"><input type="button" value="返回"></a>
        <p>*:请输入学生姓名或者学号查找学生信息！</p>
    </center>
</form>

</body>
</html>
