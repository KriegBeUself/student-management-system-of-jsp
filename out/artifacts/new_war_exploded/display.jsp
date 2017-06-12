<%--
  Created by IntelliJ IDEA.
  User: Krieg
  Date: 2017/6/11
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
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
</head>
<body>
<jsp:useBean id="db" class="com.krieg.DBBean" scope="page" />
<%
//    //驱动程序名
//    String driverName = "com.mysql.jdbc.Driver";
//    //数据库用户名
//    String userName = "root";
//    //密码
//    String userPasswd = "szy";
//    //数据库名
//    String dbName = "studentmanage";
//    //表名
//    String tableName = "student";
//    //联结字符串
//    String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
//            + userName + "&password=" + userPasswd;
//    Class.forName("com.mysql.jdbc.Driver").newInstance();
//    Connection connection = DriverManager.getConnection(url);
//    Statement statement = connection.createStatement();
    String sql = "SELECT * FROM student" ;
    ResultSet rs = db.executeQuery(sql);
%>
<br>
<br>
<table align="center">
    <tr>
        <th>
            <%
                out.print("学号");
            %>
        </th>
        <th>
            <%
                out.print("姓名");
            %>
        </th>
        <th>
            <%
                out.print("性别");
            %>
        </th>
        <th>
            <%
                out.print("出生日期");
            %>
        </th>
        <th>
            <%
                out.print("入学年份");
            %>
        </th>
        <th>
            <%
                out.print("学院");
            %>
        </th>
        <th>
            <%
                out.print("专业");
            %>
        </th>
        <th>
            <%
                out.print("籍贯");
            %>
        </th>
    </tr>

    <%
        while (rs.next()) {
    %>
    <tr>
        <td align="center">
            <%
                out.print(rs.getString(1));
            %>
        </td>
        <td align="center">
            <%
                out.print(rs.getString(2));
            %>
        </td>
        <td align="center">
            <%
                out.print(rs.getString(3));
            %>
        </td>
        <td align="center">
            <%
                out.print(rs.getString(4));
            %>
        </td>
        <td align="center">
            <%
                out.print(rs.getString(5));
            %>
        </td>
        <td align="center">
            <%
                out.print(rs.getString(6));
            %>
        </td>
        <td align="center">
        <%
            out.print(rs.getString(7));
        %>
    </td>
        <td align="center">
            <%
                out.print(rs.getString(8));
            %>
        </td>
    </tr>
    <%
        }
    %>
</table>
<div align="center">
    <br> <br> <br>
    <a href="main.jsp">返回</a>
</div>
<%
    rs.close();
    db.close();
%>
</body>
</html>
