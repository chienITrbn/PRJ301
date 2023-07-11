
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


public class RegisterController extends HttpServlet {

    /*
        Request from client
        getParameter username , pass , repass , email
        tuong tac DAOAccount check xem username do da ton tai chua
        neu chua thi cho dang ky
    
        Neu ton tai roi reponse /Views/Login/register.jsp va hien thi message
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String username = request.getParameter("username");
            String password = request.getParameter("pass");
            String rePassword = request.getParameter("repass");
            String email = request.getParameter("email");
            DAOAccount dAccount = new DAOAccount();
            Account a = dAccount.checkAccountByUser(username);
            if (a != null) {
                String ms = "User is Exits Pls Another username";
                request.setAttribute("ms", ms);
                request.getRequestDispatcher("/Views/Login/register.jsp").forward(request, response);
            } else if (username.isEmpty()
                    || password.isEmpty()
                    || rePassword.isEmpty()
                    || email.isEmpty()) {
                String ms = "Not Accept Empty";
                request.setAttribute("ms", ms);
                request.getRequestDispatcher("/Views/Login/register.jsp").forward(request, response);
            } else if(!password.equals(rePassword)){
                String ms = "Password does not matches";
                request.setAttribute("ms", ms);
                request.getRequestDispatcher("/Views/Login/register.jsp").forward(request, response);
            } else{
                HttpSession session = request.getSession();
                a = new Account(username, password, 1, false, email);
                session.setAttribute("account", a);
                SendMail sm = new SendMail();
                String code = sm.getRandom();
                boolean test = sm.sendEmailSignup(a, code);
                if (test) {
                    session.setAttribute("code", code);
                    session.setMaxInactiveInterval(180);
                    request.getRequestDispatcher("/Views/Login/MatchCodeLogin.jsp").forward(request, response);
                }
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
