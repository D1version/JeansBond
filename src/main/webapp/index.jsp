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
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
  <title>Jeans Bond</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <link rel="stylesheet" href="style.css" type="text/css"/>

</head>
<body>
<form action = "check" method ="post">
  <div class="but">
    <div id="fixedBlock">
      <input type="submit" name="REFRESH" value="Обновить" size="50"/>
      <input type="submit" name="NEWSALE" value="Дабавить продажу" size="50"/>
      <input type="submit" name="EDIT" value="Добавить/Редактировать" size="50"/>
      <input type="submit" name="SALES" value="История продаж" size="50"/>
      <input type="submit" name="DELETE" onClick="return confirm('Вы подтверждаете удаление?');" value="Удалить" size="50"/>
      <input type="submit" name="BACKUP" value="Сохранить БД" size="50"/>
    </div>
  </div>
  <div id="z">
    <table>
      <tbody>
      <tr>
        <td>№</td>
        <td>Имя</td>
        <td>Фамилия</td>
        <td>Дата рождения</td>
        <td>Дата регистрации</td>
        <td>Номер телефона</td>
        <td>Viber</td>
        <td>Сумма покупок</td>
        <td>Кол-во</td>
        <td>№ карты</td>
        <td>B</td>
      </tr>
        <%
      ArrayList<Client> clients = (ArrayList<Client>) Factory.getInstance().getClientDAO().getAllClients();
      for (int i = 0; i <clients.size() ; i++){
        int id = clients.get(i).getID();%>
      <tr>
        <td><%= i+1%></td>
        <td><%= clients.get(i).getName()%></td>
        <td><%= clients.get(i).getSecondName()%></td>
        <td><%= clients.get(i).getBirthday()%></td>
        <td><%= clients.get(i).getRegistrationDate()%></td>
        <td><%= clients.get(i).getPhoneNumber()%></td>
        <td><%= clients.get(i).getViber()%></td>
        <td><%= clients.get(i).getAmount()%></td>
        <td><%= clients.get(i).getCounter()%></td>
        <td><%= clients.get(i).getCardNumber()%></td>
        <td><input TYPE="checkbox" name="checkBox" VALUE="<%= id%>"/></td>
      </tr>
        <% } %>
</form>
</tbody>
</table>
</div>


<%
  String name = (String) request.getAttribute("nameProblem");
  String secondName = (String) request.getAttribute("secondNameProblem");
  String birthday = (String) request.getAttribute("birthdayProblem");
  String registrationDate = (String) request.getAttribute("regDateProblem");
  String cardNumber = (String) request.getAttribute("cardNumberProblem");
  String phoneNumber = (String) request.getAttribute("phoneNumberProblem");
  String viber = (String) request.getAttribute("viberProblem");
  String amount = (String) request.getAttribute("amountProblem");
  String counter = (String) request.getAttribute("counterProblem");
  String delete = (String) request.getAttribute("DELETE");
  String edit = (String) request.getAttribute("EDIT");
  String sales = (String) request.getAttribute("SALES");
  String cardAbsence = (String) request.getAttribute("cardAbsence");
  String jeansNumber = (String) request.getAttribute("jeansNumberProblem");
  String jeansSize = (String) request.getAttribute("jeansSizeProblem");
  String saler = (String) request.getAttribute("salerProblem");
  String backup = (String) request.getAttribute("BACKUP");
  String cardAvailable = (String) request.getAttribute("cardAvailable");

  if (name == "problem"){
%>
<script language="JavaScript">alert("Поле \"Имя\" не может быть пустым и сожержать цифры!")</script>
<%
} else if (secondName == "problem"){
%>
<script language="JavaScript">alert("Поле \"Фамилия\" не может быть пустым и сожержать цифры!")</script>
<%
} else if (sales == "problem"){
%>
<script language="JavaScript">alert("Не выбраны клиенты для истории продаж!")</script>
<%
} else if (birthday == "problem" || registrationDate == "problem"){
%>
<script language="JavaScript">alert("Дата должна соответствовать формату ДД-ММ-ГГГГ, и не может быть будущей!")</script>
<%
} else if (cardNumber == "problem"){
%>
<script language="JavaScript">alert("Номер карты не может быть пустым и должен содержать 4 цифры!")</script>
<%
} else if (phoneNumber == "problem"){
%>
<script language="JavaScript">alert("Номер телефона не может содержать символы и быть пустым, должен соответствовать шаблону: \"0*********\"!")</script>
<%
} else if (viber == "problem"){
%>
<script language="JavaScript">alert("Поле \"Viber\" может содержать только \"+\" или \"-\"!")</script>
<%
} else if (amount == "problem"){
%>
<script language="JavaScript">alert("Поле \"Сумма покупок\" не может быть пустым и содержит только цифры! Максимальная сумма: 999999999")</script>
<%
} else if (counter == "problem"){
%>
<script language="JavaScript">alert("Поле \"Кол-во\" не может быть пустым и содержит только цифры!")</script>
<%
} else if (delete == "problem"){
%>
<script language="JavaScript">alert("Ничего не выбрано для удаления!")</script>
<%
} else if (edit == "problem"){
%>
<script language="JavaScript">alert("Выбирите только одного клиента для редактирования!")</script>
<%
} else if (cardAbsence == "problem"){
%>
<script language="JavaScript">alert("В базе нет клиента с таким номером карты!")</script>
<%
} else if (jeansNumber == "problem"){
%>
<script language="JavaScript">alert("Номер джинса не может содержать буквы!")</script>
<%
} else if (jeansSize == "problem"){
%>
<script language="JavaScript">alert("Размер джинса не может содержать буквы!")</script>
<%
} else if (saler == "problem"){
%>
<script language="JavaScript">alert("Поле \"Продал\" может содержать только буквы!")</script>
<%
} else if (backup == "problem"){
%>
<script language="JavaScript">alert("Не удалось сохранить БД на компьютер!")</script>
<%
} else if (backup == "OK"){
%>
<script language="JavaScript">alert("БД успешно сохранена в файл \"backup.sql\"!")</script>
<%
} else if (cardAvailable == "problem"){
%>
<script language="JavaScript">alert("Клиент с такой картой уже есть в БД!")</script>
<%

  }
%>
</body>
</html>
