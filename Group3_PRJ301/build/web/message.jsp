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
        <style>
            body {
                font-family: "Open Sans", sans-serif;
                height: 100vh;

                background-color: #ddd;
                background-size: cover;
            }

            @keyframes spinner {
                0% {
                    transform: rotateZ(0deg);
                }
                100% {
                    transform: rotateZ(359deg);
                }
            }

            * {
                box-sizing: border-box;
            }

            .wrapper {
                display: flex;
                align-items: center;
                flex-direction: column;
                justify-content: center;
                width: 100%;
                min-height: 100%;
                padding: 20px;
                background: rgba(darken(40%), 0.85);
            }


            .forgot{
                border-radius: 10px;
                padding: 10px 20px 20px 20px;
                width: 60%;
                position: relative;
                padding-bottom: 43px;
                box-shadow: 0px 1px 5px rgb(0 0 0 / 30%);
                background-color: white;
                text-align: center; 
            }

            .a {
                display: block;
                padding: 15px 10px;
                width: 100%;
                border: 1px solid #ddd;
                transition: border-width 0.2s ease;
                border-radius: 20px;
                margin: 37px 0px;
                color: #1976d2;
                border: solid;
            }
            .state {
              
                padding: 8px 10px;
                margin-bottom: 38px;
                width: 70%;
                border: 1px solid #ddd;         
                border-radius: 20px;
                color: white;
                margin-bottom: -27px;
                margin-top: 13px;
                background-color: #1976d2;
            }
            .state:hover {
                background-color: white;
                color: #1976d2;
            }

        </style>
    </head>
    <body>
        <div class="wrapper">
            <div class="forgot">
                <h2>Forgot Password</h2>
                <% if (request.getParameter("success") != null) { %>
                <p>An email has been sent to your email address with instructions on how to reset your password.</p>
                <form method="post" action="login.jsp">
                    <h3>Please check your mail and reset your password </h3>
                    <input class="state" type="submit" value="Reset Password">
                </form>
                <% } else if (request.getParameter("error") != null) { %>
                <p>The email address you entered does not exist in our database.</p>
                <% } else { %>

                <% } %> 
            </div>
        </div>

    </body>
</html>
