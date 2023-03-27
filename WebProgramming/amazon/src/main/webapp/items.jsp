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

<table>
<%
List<Item> items = (List<Item>)request.getAttribute("items");
if(items != null) {
%>

<tr>
	<td>id</td>
	<td>name</td>
	<td>price</td>
</tr>

<%
for(Item item: items) {
%>

<tr>
<td><%=item.getId() %></td>
<td><%=item.getName() %></td>
<td><%=item.getPrice() %></td>
</tr>

<%
}}
%>

</table>

<input type="hidden" name="page" value="item"/>

</form>

</body>

</html>