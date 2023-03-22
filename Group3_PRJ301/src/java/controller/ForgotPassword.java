/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.DBContext;
import dao.MD5;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Hoàng Vũ
 */
public class ForgotPassword extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public static String getRandomNumberString() {
        // It will generate 6 digit random Number.
        // from 0 to 999999
        Random rnd = new Random();
        int number = rnd.nextInt(999999);

        // this will convert any number sequence into 6 character.
        return String.format("%06d", number);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String recipient = request.getParameter("email");
        String newpass = getRandomNumberString();
        // Generate a new pw for password reset

        // Check if email exists in the database
        boolean emailExists = false;
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            DBContext dao = new DBContext();

            // Execute SQL query
            String sql = "SELECT * FROM users WHERE email = ?";
            stmt = dao.connection.prepareStatement(sql);
            stmt.setString(1, recipient);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                emailExists = true;
                // Update the pw in the database
                sql = "UPDATE users SET password = ? WHERE email = ?";
                MD5 md5 = new MD5();
                stmt = dao.connection.prepareStatement(sql);
                stmt.setString(1, md5.getMd5(newpass));
                stmt.setString(2, recipient);
                stmt.executeUpdate();
            }
            rs.close();
            stmt.close();
        } catch (SQLException se) {
            se.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se2) {
            } // nothing we can do
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }

        // Send password reset email
        if (emailExists) {
            String subject = "Password Reset";
//          SendEmail(email, request, response);
            String message = messageProcess(newpass);
            HttpSession verifyPremium = request.getSession();
            verifyPremium.setAttribute("verifyCode", messageProcess(""));
            verifyPremium.setMaxInactiveInterval(60);

            // Set up mail server and authentication
            String host = "smtp.gmail.com";
//        String user = "thegalaxy2308@gmail.com";
//        String password = "ollvprlecgkrgzbf";
            String user = "toptech8868@gmail.com";
            String password = "sjxyriefmnrchwzs";

            // Create properties object for the mail session
            Properties props = new Properties();
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");

            // Create mail session and authenticate with credentials
            Session session = Session.getInstance(props, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(user, password);
                }
            });

            try {
                // Create message and set recipient, subject, and message newpass
                Message msg = new MimeMessage(session);
                msg.setFrom(new InternetAddress(user));
                msg.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
                msg.setSubject("Verify your email");
                msg.setText(message);

                // Send message
                Transport.send(msg);

                // Redirect to success page
            } catch (MessagingException e) {
                // Redirect to error page

            }
            response.sendRedirect("message.jsp?success=true");
        } else {
            response.sendRedirect("message.jsp?error=true");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    public static void SendEmail(String recipient, HttpServletRequest request, HttpServletResponse response) {
//        String token = UUID.randomUUID().toString();
//        String resetUrl = "http://localhost:8080/resetpassword?token=" + token;
        String message = messageProcess("");
        HttpSession verifyPremium = request.getSession();
        verifyPremium.setMaxInactiveInterval(60);

        // Set up mail server and authentication
        String host = "smtp.gmail.com";
//        String user = "thegalaxy2308@gmail.com";
//        String password = "ollvprlecgkrgzbf";
        String user = "toptech8868@gmail.com";
        String password = "sjxyriefmnrchwzs";

        // Create properties object for the mail session
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", "587");

        // Create mail session and authenticate with credentials
        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        try {
            // Create message and set recipient, subject, and message newpass
            Message msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(user));
            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
            msg.setSubject("Verify your email");
            msg.setText(message);

            // Send message
            Transport.send(msg);

            // Redirect to success page
        } catch (MessagingException e) {
            // Redirect to error page

        }

    }

    public static String messageProcess(String newPassword) {
        String resetUrl = "http://localhost:8080/login";
        String message = "Hello,\n"
                + "We really thank you for taking time to help us reset your password.\n"
                + "Your new password is: " + newPassword;

        return message;
    }

}
