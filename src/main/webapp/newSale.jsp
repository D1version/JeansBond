<%--
  Created by IntelliJ IDEA.
  User: Влад
  Date: 04.05.2016
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>New sale</title>
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
<form method="post">
  <div align="center" style="margin-top: 10pt;">
    <input type="submit" name="ADDSALE" value="Добавить" size="50">
    <input type="submit" name="CANCEL" value="Отмена" size="50">
  </div>
  <table border="5" align="center">
    <tr><td>№ карты</td><td><input type="text" size="" name="SaleCardNumber" value=""></td></tr>
    <tr><td>Дата продажи</td><td><input type="text" size="" name="DateOfSale" value=""></td></tr>
    <tr><td>Сумма</td><td><input type="text" size="" name="SaleAmount" value=""></td></tr>
    <tr><td>№ джинса</td><td><input type="text" size="" name="JeansNumber" value=""></td></tr>
    <tr><td>Размер джинса</td><td><input type="text" size="" name="JeansSize" value=""></td></tr>
    <tr><td>Продал</td><td><input type="text" size="" name="Saler" value=""></td></tr>
  </table>
</form>

</body>
</html>
