<%--
  Created by IntelliJ IDEA.
  User: Krieg
  Date: 2017/6/10
  Time: 17:16
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
    String num=request.getParameter("num");
    String name=request.getParameter("name");
    String sex=request.getParameter("sex");
    String year=request.getParameter("birth_year");
    String month=request.getParameter("birth_month");
    String day=request.getParameter("birth_day");
    String enter_year=request.getParameter("enter_year");
    String xueyuan=request.getParameter("xueyuan");
    String zhuanye=request.getParameter("zhuanye");
    String jiguan=request.getParameter("address");
    String sql="insert into student values("+"'"+num+"','"+name+"','"+sex+"','"+year+"-"+month+"-"+day+"','"+enter_year+"','"+xueyuan+"','"+zhuanye+"','"+jiguan+"')";//定义一个查询语句
    int rs=db.executeUpdate(sql);//运行上面的语句
    if (rs==1)
    {
        out.print("<script language='javascript' type='text/javascript'>alert(\"添加学生信息成功！\");</script>");
        response.setHeader("refresh","0;url=../main.jsp");
    }


%>
</body>
</html>
