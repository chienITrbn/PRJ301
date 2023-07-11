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
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


public class LoadProductController extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoadProductController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoadProductController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    /*
        Tuong tac tang DAOProduct getAllListProduct()
        lay ra tat ca san pham day sang View
        
        1.1 Tuong tac tang DAOProduct getAllListBrand()
        1.2 Tuong tac tang DAOProduct getAllListCategory()
        1.3 Reponse View co duong dan /client.Shop.jsp
    */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAOProduct dProduct = new DAOProduct();
        DAOCategory dCat = new DAOCategory();
        List<Product> lProduct = dProduct.getAllListProduct();
        List<Product> lProductSort = dProduct.getAllListProductSortByPrice();
        List<Category> lCat = dCat.getAllCategory();
        DAOBrand dBrand = new DAOBrand();
        List<Brand> lBrand = dBrand.getAllListBrand();
        // 1.1
        request.setAttribute("lBrand", lBrand);
        //1.2
        request.setAttribute("lCat", lCat);
        request.setAttribute("lProduct", lProduct);
        request.setAttribute("lProductSort", lProductSort);
        //1.3
        request.getRequestDispatcher("Views/Client/shop.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
