<%--
  Created by IntelliJ IDEA.
  User: Krieg
  Date: 2017/6/11
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="db" class="com.krieg.DBBean" scope="page" />
<%

    String sql = "DELETE  FROM student WHERE stu_id ='"+request.getAttribute("content")+"'" ;
    int rs=db.executeUpdate(sql);
    if (rs==1)
    {
        out.print("<script language='javascript' type='text/javascript'>alert(\"删除学生信息成功！\");</script>");
        response.setHeader("refresh","5;url=../main.jsp");
    }

%>
</body>
</html>
