<%@page import="com.amazon.domain.Item"%>
<%@page import="java.util.List"%>
<html>

<head>
<title>
List of Items
</title>
</head>

<body>

<form action="/amazon/cs" method="post">

<a href="help.jsp">Help<a> <a href="login.jsp">Logout</a> 

<table>
<%
List<Item> items = (List<Item>)request.getAttribute("items");
if(items != null) {
%>

<tr>
	<td>Select</td>
	<td>id</td>
	<td>name</td>
	<td>price</td>
	<td>Quantity</td>
</tr>

<%
for(Item item: items) {
%>

<tr>
<td><input type="checkbox"></td>
<td><%=item.getId() %></td>
<td><%=item.getName() %></td>
<td><%=item.getPrice() %></td>
<td> <input type= "text" name="quantity" size="4"/></td>
</tr>

<%
}}
%>

</table>

<input type="submit" name="action" value="Add to Cart"> 
<input type="submit" name="action" value="Checkout">
<input type="hidden" name="page" value="item"/>

</form>

</body>

</html>