
package ControllerClient;

import DAO.DAOProduct;
import Model.Carrt;
import Model.Item;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

public class Cart extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            response.setContentType("text/html;charset=UTF-8");
                HttpSession session = request.getSession();
                Carrt carrt = null;
                Object o = session.getAttribute("cart");
                if (o != null) {
                    carrt = (Carrt) o;
                } else {
                    carrt = new Carrt();
                }
                // lay duoc quantity va pid
                //  roi check
                String num_raw = request.getParameter("num");
                String id_raw = request.getParameter("id");
                int id, num;
                try {
                    id = Integer.parseInt(id_raw);
                    num = Integer.parseInt(num_raw);
                    DAOProduct dProduct = new DAOProduct();
                    Product p = dProduct.getProductById(id);
                    double price = p.getHistorical_cost() * 1.2;
                    Item t = new Item(p, num, price);
                    carrt.addItem(t);
                } catch (NumberFormatException e) {
                    System.out.println(e);
                }
                /*
                    Get total cart from session
                */
                List<Item> list = carrt.getItems();
                session.setAttribute("cart", carrt);
                session.setAttribute("size", list.size());
                response.sendRedirect("LoadProductController");
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
