<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Krieg
  Date: 2017/6/12
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<html>
<head>
    <title>更新学生信息</title>
</head>
<body>
<jsp:useBean id="db" class="com.krieg.DBBean" scope="page" />
<%
    request.setCharacterEncoding("gb2312");
    String name=request.getParameter("content");
    String sql = "SELECT * FROM student WHERE stu_id ='"+name+"'or name='"+name+"'" ;
    ResultSet rs = db.executeQuery(sql);
%>
<center>
        <%
        while (rs.next()) {
    %>
    <tr>
        <td>
            学号：
            <br>
        </td>
        <td>
            <%
                out.print(rs.getString(1));
            %>
            <br>
        </td>
    </tr>
    <form id="inform" name="inform" action="data/addinfo.jsp" method="post">
        <table border="0">
            <tr>
                <td>
                    姓名：
                    <br>
                </td>
                <td>
                    <input type="text"  name="name" value="<%out.print(rs.getString(2));%>">
                    <br>
                </td>
            </tr>
            <tr>
                <td>
                    性别:
                    <br>
                </td>
                <td>
                    <select id="sex" name="sex">
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select>
                    <br>
                </td>
            </tr>
            <tr>
                <td>
                    出生日期：
                    <br>
                </td>
                <td>
                    <select id="birth_year" name="birth_year">
                        <option value="-请选择-" disabled selected>-请选择-</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option>
                    </select>
                    <select id="birth_month" name="birth_month">
                        <option value="-请选择-" disabled selected>-请选择-</option><option value="01">1月</option><option value="02">2月</option><option value="03">3月</option><option value="04">4月</option><option value="05">5月</option><option value="06">6月</option><option value="07">7月</option><option value="08">8月</option><option value="09">9月</option><option value="10">10月</option><option value="11">11月</option><option value="12">12月</option>
                    </select>
                    <select id="birth_day" name="birth_day">
                        <option value="-请选择-" disabled selected>-请选择-</option><option value="01">1日</option><option value="02">2日</option><option value="03">3日</option><option value="04">4日</option><option value="05">5日</option><option value="06">6日</option><option value="07">7日</option><option value="08">8日</option><option value="09">9日</option><option value="10">10日</option><option value="11">11日</option><option value="12">12日</option><option value="13">13日</option><option value="14">14日</option><option value="15">15日</option><option value="16">16日</option><option value="17">17日</option><option value="18">18日</option><option value="19">19日</option><option value="20">20日</option><option value="21">21日</option><option value="22">22日</option><option value="23">23日</option><option value="24">24日</option><option value="25">25日</option><option value="26">26日</option><option value="27">27日</option><option value="28">28日</option><option value="29">29日</option><option value="30">30日</option><option value="31">31日</option>
                    </select>
                    <br>
                </td>
            </tr>
            <tr>
                <td>
                    入学年份:
                    <br>
                </td>
                <td>
                    <select id="enter_year" name="enter_year">
                        <option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option>
                    </select>
                    <br>
                </td>
            </tr>
            <tr>
                <td>
                    学院：
                    <br>
                </td>
                <td>
                    <input type="text" name="xueyuan">
                    <br>
                </td>
            </tr>
            <tr>
                <td>
                    专业：
                    <br>
                </td>
                <td>
                    <input type="text" name="zhuanye">
                    <br>
                </td>
            </tr>
            <tr>
                <td>
                    籍贯：
                    <br>
                </td>
                <td>
                    <input type="text" name="address">
                    <br>
                </td>
            </tr>
        </table>
        <%
            }
        %>
        <input type="submit" value="添加">    &nbsp;&nbsp;&nbsp;
        <a href="main.jsp"><input type="button" value="返回"></a>
    </form>

</body>
</html>
