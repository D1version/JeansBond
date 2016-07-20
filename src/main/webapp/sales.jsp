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
  <link rel="stylesheet" href="style.css" type="text/css"/>
</head>
<body>
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
      Integer salary = 0;
  %>
  <table>
    <tbody>
    <tr>
      <td>№ карты</td>
      <td><%= client.getCardNumber()%></td>
    </tr>
    </tbody>
  </table>
  <table>
    <tbody>
    <tr>
      <td>Дата продажи</td>
      <td>Сумма</td>
      <td>№ джинса</td>
      <td>размер джинса</td>
      <td>Продал</td>
    </tr>
      <%
      for (int i = 0; i <sales.size() ; i++){
        salary += sales.get(i).getAmount();
        %>
    <tr>
      <td><%= sales.get(i).getDateOfSale()%> </td>
      <td><%= sales.get(i).getAmount()%> </td>
      <td><%= sales.get(i).getJeansNumber()%> </td>
      <td><%= sales.get(i).getJeansSize()%> </td>
      <td><%= sales.get(i).getSaler()%> </td>
    </tr>
      <%  }
      %>
    <tr><td>Всего:</td>
      <td><%=salary%></td>
    </tr>
      <%
         }
       %>
</form>
</tbody>
</table>
</form>

</body>
</html>
