/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dao.OrderDAO;
import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import model.Cart;
import model.Product;
import model.User;
import java.math.RoundingMode;  
import java.text.DecimalFormat;

/**
 *
 * @author Sio8
 */
public class Checkout extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<Cart> cart = new ArrayList<>();
        if (session.getAttribute("account") == null) {
            response.sendRedirect("login");
        } else {       
            DecimalFormat d = new DecimalFormat("0.00"); 
            User u = (User) session.getAttribute("account");
            OrderDAO odao = new OrderDAO();
            ArrayList<Cart> c2 = odao.getCartByuId(u.getId());
            double total = 0; 
            for(Cart c: c2){
                total += c.getQuantity()*c.getProduct().getPrice(); 
            }        
            request.setAttribute("total", d.format(total));
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

}
