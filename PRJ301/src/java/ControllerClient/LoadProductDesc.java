/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ControllerClient;

import DAO.DAOBrand;
import DAO.DAOCategory;
import DAO.DAOProduct;
import Model.Brand;
import Model.Category;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author hp
 */
public class LoadProductDesc extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            DAOBrand dBrand = new DAOBrand();
            DAOProduct dProduct = new DAOProduct();
            int value = Integer.parseInt(request.getParameter("sort"));
            DAOCategory dCat = new DAOCategory();
            List<Category> lCat = dCat.getAllCategory();
            List<Brand> lBrand = dBrand.getAllListBrand();
            String search = request.getParameter("search");
            List<Product> lProductBySearch = dProduct.searchByName(search);
            List<Product> lProductDesc = dProduct.getAllListProductDesc(value);
            request.setAttribute("lProduct", lProductDesc);
            request.setAttribute("lBrand", lBrand);
            request.setAttribute("lCat", lCat);
            request.setAttribute("lProduct", lProductBySearch);
            request.getRequestDispatcher("Views/Client/shop.jsp").forward(request, response);
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
