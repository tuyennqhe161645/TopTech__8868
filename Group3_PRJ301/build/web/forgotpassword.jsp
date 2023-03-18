<%-- 
    Document   : forgotpassword
    Created on : Mar 18, 2023, 12:59:08 AM
    Author     : Hoàng Vũ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- forgotpassword.jsp -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Forgot Password</title>
</head>
<body>
	<h2>Forgot Password</h2>
	<form method="post" action="ForgotPassword">
		<label>Email:</label>
		<input type="email" name="email" required><br>
		<button type="submit">Submit</button>
	</form>
</body>
</html>

