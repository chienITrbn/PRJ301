/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ControllerLogin;

import DAO.DAOAccount;
import Model.Account;
import Model.SendMail;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
public class ForgotPassWord extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String username = request.getParameter("username");
            String email = request.getParameter("useremail");
            DAOAccount dAccount = new DAOAccount();
            Account a = dAccount.checkAccountByUserEmail(username, email);
            if (a != null) {
                HttpSession session = request.getSession();
                session.setAttribute("accountForgot", a);
                SendMail sm = new SendMail();
                String code = sm.getRandom();
                Boolean test = sm.sendEmailSignup(a, code);
                if (test) {
                    session.setAttribute("code", code);
                    session.setMaxInactiveInterval(180);
                    request.getRequestDispatcher("/Views/Login/MatchCodeLoginForgot.jsp").forward(request, response);
                }
            } else if (username.isEmpty() || email.isEmpty()) {
                String ms = "Not Accept Empty! Pls enter again";
                request.setAttribute("ms", ms);
                request.getRequestDispatcher("/Views/Login/forgot_password.jsp").forward(request, response);
            } else {
                String ms = "Not found username or email ! pls try again";
                request.setAttribute("ms", ms);
                request.getRequestDispatcher("/Views/Login/forgot_password.jsp").forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
