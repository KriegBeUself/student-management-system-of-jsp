<%--
  Created by IntelliJ IDEA.
  User: Krieg
  Date: 2017/6/11
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.sql.*" pageEncoding="gb2312" %>
<%@ page contentType="text/html;charset=gb2312"%>
<html>
<head>
    <style type="text/css">
        table {
            border: 2px #CCCCCC solid;
            width: 1000px;
        }

        td,th {
            height: 30px;
            border: #CCCCCC 1px solid;
        }
    </style>
    <%--<script>--%>
        <%--//清空栏目提示确认框--%>
        <%--function confirm_delete(){--%>
            <%--if (confirm("确认要删除本条信息！")){--%>
                <%----%>

                <%--return true;--%>
            <%--}--%>
            <%--return false;--%>
        <%--}--%>
    <%--</script>--%>
</head>
<body>
<jsp:useBean id="db" class="com.krieg.DBBean" scope="page" />
<%
    request.setCharacterEncoding("gb2312");
    String name=request.getParameter("content");
    String sql = "delete  FROM student WHERE stu_id ='"+name+"'" ;
    int rs = db.executeUpdate(sql);;
    request.setAttribute("content",name);
%>


<%
    if (rs==1) {
        out.print("<script language='javascript' type='text/javascript'>alert(\"删除成功！\");</script>");
        response.setHeader("refresh","0;url=../delete.jsp");
    }
%>
<%--<br>--%>
<%--<br>--%>
<%--<table align="center">--%>
    <%--<tr>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("学号");--%>
            <%--%>--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("姓名");--%>
            <%--%>--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("性别");--%>
            <%--%>--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("出生日期");--%>
            <%--%>--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("入学年份");--%>
            <%--%>--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("学院");--%>
            <%--%>--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("专业");--%>
            <%--%>--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("籍贯");--%>
            <%--%>--%>
        <%--</th>--%>
    <%--</tr>--%>
    <%--<tr>--%>
        <%--<td align="center">--%>
            <%--<%--%>
                <%--out.print(rs.getString(1));--%>
            <%--%>--%>
        <%--</td>--%>
        <%--<td align="center">--%>
            <%--<%--%>
                <%--out.print(rs.getString(2));--%>
            <%--%>--%>
        <%--</td>--%>
        <%--<td align="center">--%>
            <%--<%--%>
                <%--out.print(rs.getString(3));--%>
            <%--%>--%>
        <%--</td>--%>
        <%--<td align="center">--%>
            <%--<%--%>
                <%--out.print(rs.getString(4));--%>
            <%--%>--%>
        <%--</td>--%>
        <%--<td align="center">--%>
            <%--<%--%>
                <%--out.print(rs.getString(5));--%>
            <%--%>--%>
        <%--</td>--%>
        <%--<td align="center">--%>
            <%--<%--%>
                <%--out.print(rs.getString(6));--%>
            <%--%>--%>
        <%--</td>--%>
        <%--<td align="center">--%>
            <%--<%--%>
                <%--out.print(rs.getString(7));--%>
            <%--%>--%>
        <%--</td>--%>
        <%--<td align="center">--%>
            <%--<%--%>
                <%--out.print(rs.getString(8));--%>
            <%--%>--%>
        <%--</td>--%>
    <%--</tr>--%>
<%--</table>--%>
<%--<%--%>
    <%--}--%>
    <%--else--%>
    <%--{--%>
        <%--out.print("<script language='javascript' type='text/javascript'>alert(\"查无此人！\");</script>");--%>
        <%--response.setHeader("refresh", "0;url=../search.jsp");--%>
    <%--}--%>
<%--%>--%>

<%--<div align="center">--%>
    <%--<br> <br> <br>--%>
    <%--<a href="javascript:if(confirm('确定要删除该同学的信息吗？'))location='data/deletedata.jsp'"><input type="button"  value="删除" style="color: #ff4a40"></a>--%>
    <%--<%--%>

    <%--%>--%>
    <%--<a href="../delete.jsp"><input type="button" value="返回" style="color: aliceblue"></a>--%>
<%--</div>--%>

<%
    db.close();

%>
</body>
</html>