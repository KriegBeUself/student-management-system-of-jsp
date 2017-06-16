<%--
  Created by IntelliJ IDEA.
  User: Krieg
  Date: 2017/6/12
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新学生信息</title>
</head>
<body>
<form id="search" name="search" method="post" action="data/updatedis.jsp">
    <center>
        <input type="text" name="content" >
        <br>
        <br>
        <%--<a href="javascript:if(confirm('确定要删除该同学的信息吗？'))location='deletedis.jsp'">--%>
        <input type="submit" value="更改" >&nbsp;&nbsp;&nbsp;
        <a href="main.jsp"><input type="button" value="返回"></a>
        <p>*:请输入学号修改个人资料</p>
    </center>
</form>
</body>
</html>
