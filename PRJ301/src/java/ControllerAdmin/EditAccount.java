
package ControllerAdmin;

import DAO.DAOAccount;
import Model.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author hp
 */
public class EditAccount extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            DAOAccount dAccount = new DAOAccount();
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String role_raw = request.getParameter("role");
            String active_raw = request.getParameter("active");
            int role = 0;
            int active_v = 0;
            boolean active = false;
            String email = request.getParameter("email");
            try {
                role = Integer.parseInt(role_raw);
                active_v = Integer.parseInt(active_raw);
                if (active_v == 0) {
                    active = false;
                } else {
                    active = true;
                }
                Account a = new Account(username, password, role, active, email);
                dAccount.updateAccount(a);
                request.getRequestDispatcher("ListAccount").forward(request, response);
            } catch (NumberFormatException e) {
                System.out.println(e);
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
