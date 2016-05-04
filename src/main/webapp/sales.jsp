<%@ page import="com.bondar.Client" %>
<%@ page import="com.bondar.DAO.Factory" %>
<%@ page import="com.bondar.Sales" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Set" %>
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
  <title>Sales</title>
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
    <input type="submit" name="CANCEL" value="Назад" size="50">
  </div>
  <%
    String[] rows = (String[]) request.getAttribute("checkBox");
    for (int j = 0; j < rows.length; j++) {
    Client client = Factory.getInstance().getClientDAO().getClientByID(Integer.parseInt(rows[j]));
    Set set = client.getSales();
    ArrayList<Sales> sales = new ArrayList<Sales>();
    sales.addAll(set);
  %>
  <table border="2" align="center">
    <tbody>
      <tr>
        <td>№ карты</td>
        <td><%= client.getCardNumber()%></td>
      </tr>
    </tbody>
  </table>
  <table border="5" align="center">
    <tbody>
    <tr>
      <td>ID</td>
      <td>Дата продажи</td>
      <td>Сумма</td>
      <td>№ джинса</td>
      <td>размер джинса</td>
      <td>Продал</td>
    </tr>
      <%
      for (int i = 0; i <sales.size() ; i++){

        %>
    <tr>
      <td><%= sales.get(i).getID()%> </td>
      <td><%= sales.get(i).getDateOfSale()%> </td>
      <td><%= sales.get(i).getAmount()%> </td>
      <td><%= sales.get(i).getJeansNumber()%> </td>
      <td><%= sales.get(i).getJeansSize()%> </td>
      <td><%= sales.get(i).getSaler()%> </td>
    </tr>
      <%  }
         }
       %>
</form>
</tbody>
</table>
</form>

</body>
</html>
