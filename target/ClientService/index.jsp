<%--
  Created by IntelliJ IDEA.
  User: Влад
  Date: 20.04.2016
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.bondar.DAO.Factory" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jeans Bond</title>
</head>
<body>
<table border="1">
  <tbody>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>Second Name</td>
    <td>Registration Date</td>
    <td>Card Number</td>
    <td>Phone Number</td>
    <td>Amount</td>
    <td>B</td>
  </tr>
  <form name="main" action="page2.jsp" method="post">
    <%
      ResultSet rs = (ResultSet) Factory.getInstance().getClientDAO().getAllClients();
      while (rs.next()){
        int id = rs.getInt(1);%>
    <tr>
      <td><%= id%> </td>
      <td><%= rs.getString(2)%></td>
      <td><%= rs.getString(3)%></td>
      <td><%= rs.getString(4)%></td>
      <td><%= rs.getString(5)%></td>
      <td><%= rs.getString(6)%></td>
      <td><%= rs.getInt(7)%></td>
      <td><input TYPE="checkbox" name="checkBox" VALUE="<%= id%>"/></td>
    </tr>
    <% } %>
  </form>
  </tbody>
</table>
</body>
</html>
