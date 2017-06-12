<%--
  Created by IntelliJ IDEA.
  User: Krieg
  Date: 2017/6/11
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除学生信息</title>
</head>
<body>
<form id="search" name="search" method="post" action="deletedis.jsp">
    <center>
        <input type="text" name="content" >
        <br>
        <br>
        <%--<a href="javascript:if(confirm('确定要删除该同学的信息吗？'))location='deletedis.jsp'">--%>
            <input type="submit" value="删除" onclick="if (confirm('确定要删除该同学的信息吗？'));">&nbsp;&nbsp;&nbsp;
        <a href="main.jsp"><input type="button" value="返回"></a>
        <p>*:请输入学生学号查找并删除</p>
    </center>
</form>

</body>
</html>
