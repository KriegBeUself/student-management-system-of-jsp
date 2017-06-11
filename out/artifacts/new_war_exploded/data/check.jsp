<%--
  Created by IntelliJ IDEA.
  User: Krieg
  Date: 2017/6/10
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ page import="static java.awt.SystemColor.text" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<jsp:useBean id="db" class="com.krieg.DBBean" scope="page" />

<%
    request.setCharacterEncoding("UTF-8");
    String username=request.getParameter("username");
    String password=request.getParameter("password");//取出login.jsp的值

    //下面是数据库操作
    String sql="select * from admin where username="+"'"+username+"'";//定义一个查询语句
    ResultSet rs=db.executeQuery(sql);//运行上面的语句
    if(rs.next() )
    {
        /* if(password.equals(rs.getString(2)))
        {

        } */
        if(password.equals(rs.getObject("password"))){
            response.sendRedirect("../main.jsp");
        }
        else{

            out.print("<script language='javascript' type='text/javascript'>alert(\"密码错误！请核对后重新输入！\");</script>");
            response.setHeader("refresh", "0;url=../index.jsp");
        }
    }
    else
    {
        out.print("<script language='javascript' type='text/javascript'>alert(\"该账户不存在！请核对后重新输入！\");</script>");
        response.setHeader("refresh", "0;url=../index.jsp");
    }

%>
</body>
</html>
