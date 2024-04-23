<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignIn Form</title>
<link rel="stylesheet" href="style1.css">
</head>
<body>
<div class="container">
<div class="outline dance">
<form action="userlogin" method="get">
<table>
<tr> 
<td><input type="text" name="name" placeholder="UserName"></td>
<td><img src="signature.png" width="22px" style="margin-bottom:20px;margin-left:-20px"></td>
</tr>
<tr> 
<td><input type="password" name="password" placeholder="Password"></td>
<td><img src="password.png" width="22px" style="margin-bottom:20px;margin-left:-20px"></td>
</tr>
<tr> 
<td><button type="submit" class="btn" value="userlogin">Submit</button></td>
</tr>
<tr>
<td><a href="signup.jsp" target="_blank" class="anchor">Don't Have An Account!</a></td>
</tr>
</table>
</form>
</div>
</div>


</body>
</html>