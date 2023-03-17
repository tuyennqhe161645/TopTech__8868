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
import model.User;

/**
 *
 * @author Sio8
 */
public class Checkout extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<Integer> quantity = new ArrayList<>();
        if (session.getAttribute("account") == null) {
            response.sendRedirect("login");
        } else {
            try {
                ArrayList<Cart> c2 = (ArrayList<Cart>) session.getAttribute("c2");
                for (Cart c : c2) {
                    int quan = c.getQuantity();
                    quantity.add(quan);
                }
                request.setAttribute("cart", quantity);
                request.getRequestDispatcher("checkout.jsp").forward(request, response);

//                OrderDAO odao = new OrderDAO();
//                ProductDAO productDao = new ProductDAO();
//                User u = (User) session.getAttribute("account");
//                String productId = request.getParameter("pid");
//                String quantity = request.getParameter("quantity");
//                Cart c = odao.checkExist(u.getId(), productId);
//
////                double total = ;
            } catch (Exception e) {
                response.sendRedirect("./404.html");
            }
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

}
