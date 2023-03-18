<%-- 
    Document   : message
    Created on : Mar 18, 2023, 1:08:14 AM
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
        <% if (request.getParameter("success") != null) { %>
        <p>An email has been sent to your email address with instructions on how to reset your password.</p>
        <form method="post" action="login.jsp">
            <h3>Please check your mail and reset your password </h3>
            <button type="submit">Reset Password</button>
        </form>
        <% } else if (request.getParameter("error") != null) { %>
        <p>The email address you entered does not exist in our database.</p>
        <% } else { %>
        
        
        <% } %> 

    </body>
</html>
