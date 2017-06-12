<%--
  Created by IntelliJ IDEA.
  User: Krieg
  Date: 2017/6/10
  Time: 19:41
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
    request.setCharacterEncoding("UTF-8");
    String username=request.getParameter("username");
    String password=request.getParameter("password");//取出signin.jsp的值
    //下面是数据库操作
    String sql="insert into admin values("+"'"+username+"','"+password+"')";//定义一个查询语句
    int rs=db.executeUpdate(sql);//运行上面的语句
    if(rs==1)
    { %>
<script language='javascript' type='text/javascript'>
    alert("注册成功！");</script>
<%
        response.setHeader("refresh","0;url=../index.jsp");
    }
%>

</body>
</html>
