<%--
  Created by IntelliJ IDEA.
  User: Krieg
  Date: 2017/6/10
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加学生信息</title>
</head>
<body>
<center>
    <form name="inform" action="data/addinfo.jsp" method="get">
        <p>学号：<input type="text" name="num"></p>
        <p>姓名：<input type="text" name="name"></p>
    </form>
    <input type="submit" value="添加">
    &nbsp;&nbsp;&nbsp;
    <input type="submit" value="删除">
    &nbsp;&nbsp;&nbsp;
    <a href="main.jsp"><input type="button" value="返回"></a>

</center>

</body>
</html>
