/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ControllerLogin;

import DAO.DAOAccount;
import Model.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class LoginController extends HttpServlet {

    /*
        Request client va tuong tac dao
        getParameter username va password
        roi kiem tra 
         + neu username do ton tai trong database thi chuyen den trang Homepage
            . luu account vao session
            . va nguoi dung co role la 1 
            . con neu nguoi dung co role la 0 thi den trang admin
         + con khong thi hien thi thong Login Fail
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            DAOAccount dAccount = new DAOAccount();
            String username = request.getParameter("username");
            String password = request.getParameter("userpassword");
            Account a = dAccount.checkAccount(username, password);
            String url = request.getContextPath();
            if(a!=null){
                HttpSession session = request.getSession();
                session.setAttribute("account", a);
                if(a.getRole()==0){
                    request.getRequestDispatcher("/Views/Admin/Admin.jsp").forward(request, response);
                }else{
                     request.getRequestDispatcher("LoadProductController").forward(request, response);
                }
            }else if(username.isEmpty() || password.isEmpty()){
                String ms = "Pls Enter Again!";
                request.setAttribute("ms", ms);
                request.getRequestDispatcher("/Views/Login/login.jsp").forward(request, response);
            } else {
                String ms = "Pls check your username or password!";
                request.setAttribute("ms", ms);
                request.getRequestDispatcher("/Views/Login/login.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
