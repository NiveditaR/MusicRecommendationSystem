<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>

<form action="login" method="post">
<label>Item ID:</label>
<input type="text" id="songId" name="songId"/>
<input type="submit" value="search"/>

</form>
<br>
OR
<form action="user" method="post">
<label>User ID:</label>
<input type="text" id="userId" name="userId"/>
<input type="submit" value="search"/>

</form>
<br>
</body>
</html>