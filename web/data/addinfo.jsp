<%--
  Created by IntelliJ IDEA.
  User: Krieg
  Date: 2017/6/10
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.lang.*" %>
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
    String temp= request.getHeader("referer");

    if (temp.equals("http://localhost/data/updatedis.jsp"))
    {
        System.out.println("从修改信息界面跳转而来，执行update操作");
        String sql="update student set name='"+name+"',sex='"+sex+"',birth='"+year+"-"+month+"-"+day+"',entrance_date='"+enter_year+"',zhuanye='"+zhuanye+"',xueyuan='"+xueyuan+"',address='"+jiguan+"' WHERE stu_id='"+num+"';";//定义一个查询语句
        int rs=db.executeUpdate(sql);//运行上面的语句
        if (rs==1)
        {
            out.print("<script language='javascript' type='text/javascript'>alert(\"修改学生信息成功！\");</script>");
            response.setHeader("refresh","0;url=../main.jsp");
        }
    }
    else
    {

        String sql="insert into student values("+"'"+num+"','"+name+"','"+sex+"','"+year+"-"+month+"-"+day+"','"+enter_year+"','"+xueyuan+"','"+zhuanye+"','"+jiguan+"')";//定义一个查询语句
        int rs=db.executeUpdate(sql);//运行上面的语句
        if (rs==1)
        {
            out.print("<script language='javascript' type='text/javascript'>alert(\"添加学生信息成功！\");</script>");
            response.setHeader("refresh","0;url=../update.jsp");
        }
    }


%>
</body>
</html>
