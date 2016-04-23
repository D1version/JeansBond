<%--
  Created by IntelliJ IDEA.
  User: Влад
  Date: 20.04.2016
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.bondar.Client" %>
<%@ page import="com.bondar.DAO.Factory" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jeans Bond</title>
  <style>
    table{
      margin: auto;
    }
    td{
      font-size: 150%;
      text-align: center;
      background-color: #b9ffae;
    }
  </style>
</head>
<body style="color: #000000; background-color: #a6ffa1">
<table border="5">
  <tbody>
  <tr>
    <td>ID</td>
    <td>Имя</td>
    <td>Фамилия</td>
    <td >Дата рождения</td>
    <td>Дата регистрации</td>
    <td>№ карты</td>
    <td>Номер телефона</td>
    <td>E-mail</td>
    <td>Сумма покупок</td>
    <td>Кол-во</td>
    <td>B</td>
  </tr>
  <form>
    <%
      ArrayList<Client> clients = (ArrayList<Client>) Factory.getInstance().getClientDAO().getAllClients();
      for (int i = 0; i <clients.size() ; i++){
        int id = clients.get(i).getID();%>
    <tr>
      <td><%= id%> </td>
      <td><%= clients.get(i).getName()%></td>
      <td><%= clients.get(i).getSecondName()%></td>
      <td><%= clients.get(i).getBirthday()%></td>
      <td><%= clients.get(i).getRegistrationDate()%></td>
      <td><%= clients.get(i).getCardNumber()%></td>
      <td><%= clients.get(i).getPhoneNumber()%></td>
      <td><%= clients.get(i).getEmail()%></td>
      <td><%= clients.get(i).getAmount()%></td>
      <td><%= clients.get(i).getCounter()%></td>
      <td><input TYPE="checkbox" name="checkBox" VALUE="<%= id%>"/></td>
    </tr>
    <% } %>
  </form>
  </tbody>
</table>
</body>
</html>
