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
        <%--//�����Ŀ��ʾȷ�Ͽ�--%>
        <%--function confirm_delete(){--%>
            <%--if (confirm("ȷ��Ҫɾ��������Ϣ��")){--%>
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
        out.print("<script language='javascript' type='text/javascript'>alert(\"ɾ���ɹ���\");</script>");
        response.setHeader("refresh","0;url=../delete.jsp");
    }
%>
<%--<br>--%>
<%--<br>--%>
<%--<table align="center">--%>
    <%--<tr>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("ѧ��");--%>
            <%--%>--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("����");--%>
            <%--%>--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("�Ա�");--%>
            <%--%>--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("��������");--%>
            <%--%>--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("��ѧ���");--%>
            <%--%>--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("ѧԺ");--%>
            <%--%>--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("רҵ");--%>
            <%--%>--%>
        <%--</th>--%>
        <%--<th>--%>
            <%--<%--%>
                <%--out.print("����");--%>
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
        <%--out.print("<script language='javascript' type='text/javascript'>alert(\"���޴��ˣ�\");</script>");--%>
        <%--response.setHeader("refresh", "0;url=../search.jsp");--%>
    <%--}--%>
<%--%>--%>

<%--<div align="center">--%>
    <%--<br> <br> <br>--%>
    <%--<a href="javascript:if(confirm('ȷ��Ҫɾ����ͬѧ����Ϣ��'))location='data/deletedata.jsp'"><input type="button"  value="ɾ��" style="color: #ff4a40"></a>--%>
    <%--<%--%>

    <%--%>--%>
    <%--<a href="../delete.jsp"><input type="button" value="����" style="color: aliceblue"></a>--%>
<%--</div>--%>

<%
    db.close();

%>
</body>
</html>