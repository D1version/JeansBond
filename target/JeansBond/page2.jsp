<%--
  Created by IntelliJ IDEA.
  User: Влад
  Date: 27.04.2016
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="com.bondar.Client" %>
<%@ page import="com.bondar.DAO.Factory" %>
<html>
<head>
  <title>Edit</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <style>
    tr{
      font-size: 150%;
      text-align: center;
      background-color: #b9ffae;
    }
    input {
      display: inline-block;
      color: black;
      font-weight: 700;
      text-decoration: none;
      text-aling: center;
      user-select: none;
      padding: .5em 2em;
      outline: none;
      border: 2px solid;
      border-radius: 1px;
      transition: 0.2s;
    }
    input:hover { background: rgba(255,255,255,.2); }
    input:active { background: white; }
  </style>
</head>
<body style="color: #000000; background-color: #a6ffa1">
<%
  String[] rows = (String[]) request.getAttribute("checkBox");
  if (rows == null){
%>
<form method="post">
  <div align="center" style="margin-top: 10pt;">
    <input type="submit" name="ADD" value="Добавить" size="50">
    <input type="submit" name="CANCEL" value="Отмена" size="50">
  </div>
  <table border="5" align="center">
    <tr><td>Имя</td><td><input type="text" size="" name="Name" value=""></td></tr>
    <tr><td>Фамилия</td><td><input type="text" size="" name="SecondName" value=""></td></tr>
    <tr><td>Дата рождения</td><td><input type="text" size="" name="Birthday" value=""></td></tr>
    <tr><td>Дата регистрации</td><td><input type="text" size="" name="RegistrationDate" value=""></td></tr>
    <tr><td>№ карты</td><td><input type="text" size="" name="CardNumber" value=""></td></tr>
    <tr><td>Номер телефона</td><td><input type="text" size="" name="PhoneNumber" value=""></td></tr>
    <tr><td>Viber</td><td><input type="text" size="" name="Viber" value=""></td></tr>
    <tr><td>E-mail</td><td><input type="text" size="" name="Email" value=""></td></tr>
    <tr><td>Сумма покупок</td><td><input type="text" size="" name="Amount" value=""></td></tr>
    <tr><td>Кол-во</td><td><input type="text" size="" name="Counter" value=""></td></tr>
  </table>
</form>
<%
} else if(rows.length == 1){
  Client client = Factory.getInstance().getClientDAO().getClientByID(Integer.parseInt(rows[0]));
%>
<form method="post">
  <div align="center" style="margin-top: 10pt;">
    <input type="submit" name="SAVE" value="Сохранить" size="30">
    <input type="submit" name="CANCEL" value="Отмена" size="30">
  </div>
  <%
      int id = client.getID();
  %>
  <table border="5" align="center">
    <tr><td>Имя</td><td><input type="text" size="" name="Name" value="<%= client.getName()%>"></td></tr>
    <tr><td>Фамилия</td><td><input type="text" size="" name="SecondName" value="<%= client.getSecondName()%>"></td></tr>
    <tr><td>Дата рождения</td><td><input type="text" size="" name="Birthday" value="<%= client.getBirthday()%>"></td></tr>
    <tr><td>Дата регистрации</td><td><input type="text" size="" name="RegistrationDate" value="<%= client.getRegistrationDate()%>"></td></tr>
    <tr><td>№ карты</td><td><input type="text" size="" name="CardNumber" value="<%= client.getCardNumber()%>"></td></tr>
    <tr><td>Номер телефона</td><td><input type="text" size="" name="PhoneNumber" value="<%= client.getPhoneNumber()%>"></td></tr>
    <tr><td>Viber</td><td><input type="text" size="" name="Viber" value="<%= client.getViber()%>"></td></tr>
    <tr><td>E-mail</td><td><input type="text" size="" name="Email" value="<%= client.getEmail()%>"></td></tr>
    <tr><td>Сумма покупок</td><td><input type="text" size="" name="Amount" value="<%= client.getAmount()%>"></td></tr>
    <tr><td>Кол-во</td><td><input type="text" size="" name="Counter" value="<%= client.getCounter()%>"></td></tr>
  </table>
  <input type="hidden" name="ID" value="<%= id%>">
</form>
<% } %>
</body>
</html>
