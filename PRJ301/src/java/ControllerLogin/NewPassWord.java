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

public class NewPassWord extends HttpServlet {

    /*
        Request data tu view va check cac dieu kien
        chua nhap dung mk cu hien thong bao va quay lai trang NewPassword.jsp
        
        Neu nhap mk moi ma khong trung voi re-pass quay lai trang NewPassword.jsp
    
        Nhap dung se hien thi thong bao changesuccsesfully
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            DAOAccount dAccount = new DAOAccount();
            // Get session
            Account a = (Account) session.getAttribute("account");
            /*
                get paramameter : oldpass , newpass , renewpass
            */
            String oldpass = request.getParameter("oldpass");
            String newpass = request.getParameter("newpass");
            String renewpass = request.getParameter("renewpass");
            String username = a.getUsername();
            String ms = "";
            // Tuong tac voi DAO va kiem tra 
            // neu ton tai thi cho doi mk
            // khong thi ve NewPassWord.jsp
            if (dAccount.checkAccountByUser(username) != null) {
                if (oldpass.equals(a.getPassword())) {
                    if (newpass.equals(renewpass)) {
                        a.setPassword(newpass);
                        dAccount.updateAccount(a);
                        ms = "Change Successfully!";
                        request.setAttribute("ms", ms);
                        request.getRequestDispatcher("Views/Login/NewPassWord.jsp").forward(request, response);
                    } else {
                        ms = "PassWord Does Not Matches";
                        request.setAttribute("ms",ms);
                        request.getRequestDispatcher("Views/Login/NewPassWord.jsp").forward(request, response);
                    }
                } else {
                    ms = "Old password not correct";
                    request.setAttribute("ms", ms);
                    request.getRequestDispatcher("Views/Login/NewPassWord.jsp").forward(request, response);
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
