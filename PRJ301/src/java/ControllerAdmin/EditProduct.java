/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ControllerAdmin;

import DAO.DAOBrand;
import DAO.DAOCategory;
import DAO.DAOProduct;
import DAO.DAOSize;
import Model.Brand;
import Model.Category;
import Model.Product;
import Model.Size;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

/**
 *
 * @author hp
 */
public class EditProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     * Request from client
     * getParameter pid va tuong tac voi DAO
     * Neu ton tai pid thi day sang EditProduct
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            // convert pid
            int id = Integer.parseInt(request.getParameter("pid"));
            DAOProduct dProduct = new DAOProduct();
            DAOBrand dBrand = new DAOBrand();
            DAOSize dSize = new DAOSize();
            DAOCategory dCategory = new DAOCategory();
            List<Brand> lBrand = dBrand.getAllListBrand();
            List<Size> lSize = dSize.getAllSize();
            List<Category> lCate = dCategory.getAllCategory();
            //check xem Product do co tai tai hay khong
            Product p = dProduct.getProductById(id);
            int cid = p.getCategoryId();
            int bid = p.getBrandId();
            int sid = p.getSize();
            Brand b = dBrand.getBrandById(bid);
            Category c = dCategory.getCategoryById(cid);
            Size s = dSize.getSizeById(sid);
            request.setAttribute("size", s);
            request.setAttribute("bid", b);
            request.setAttribute("cat", lCate);
            request.setAttribute("cid", c);
            request.setAttribute("pid", p);
            request.setAttribute("lBrand", lBrand);
            request.setAttribute("lSize", lSize);
            request.getRequestDispatcher("Views/Admin/EditProduct.jsp").forward(request, response);
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
        DAOProduct dProduct = new DAOProduct();
        int pid = Integer.parseInt(request.getParameter("pid"));
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
        Product p = new Product(pid, name, desc, cid, oldPrice, newPrice, brand, "image/" + fileName, true, true, created, created, quantity, view, size);
        dProduct.updateProduct(p);
        request.getRequestDispatcher("ManagerProduct").forward(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
