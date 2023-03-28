<html>

<head>
<!-- Import JavaScript files -->
<!-- Import CSS files -->
</head>

<body>

<%
String loginError = (String)request.getAttribute("loginError");
if(loginError!=null){
%>

<span style="color:red"><%=loginError %></span>

<%
}
%>

<form action="/amazon/cs" method="post">


Username: <input type= "text" name="username"/>
<br>
<br>
Password: <input type= "password" name="password"/>
<br>
<br>
<input type="submit" name="action" value="Login">
<input type="submit" name="action" value="Reset"/>

<input type="hidden" name="page" value="login"/>
<input type="hidden" name="page" value="Reset"/>


</form>





</body>

</html>