/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ControllerAdmin;

import DAO.DAOProduct;
import Model.Product;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.time.LocalDate;

/**
 *
 * @author hp
 */
public class AddProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods. Request from client getParameter tuong ung nameP , desc ,
     * category , oldprice , newprice ,brand fileUpload , quantity , size
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        DAOProduct dProduct = new DAOProduct();
        String name = request.getParameter("nameP");
        String desc = request.getParameter("desc");
        int cid = Integer.parseInt(request.getParameter("category"));
        double oldPrice = Double.parseDouble(request.getParameter("oldprice"));
        double newPrice = Double.parseDouble(request.getParameter("newprice"));
        int brand = Integer.parseInt(request.getParameter("brand"));
        String fileName = request.getParameter("fileUpload");
        Date created = Date.valueOf(LocalDate.now());
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int size = Integer.parseInt(request.getParameter("size"));
        int view = 0;
        // Tao duoc 1 object moi
        Product p = new Product(name, desc, cid, oldPrice, newPrice, brand, "image/" + fileName, true, true, created, created, quantity, view, size);
        // Add va chuyen ve trang ManagerProduct
        dProduct.insertProduct(p);
        request.getRequestDispatcher("ManagerProduct").forward(request, response);
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
