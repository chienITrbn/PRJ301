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

public class LoadCategoryController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoadCategoryController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoadCategoryController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cid_raw = request.getParameter("cid");
        String index_raw = request.getParameter("index");
        try {
            int index;
            int cid = Integer.parseInt(cid_raw);
            if (index_raw == null) {
                index = 0;
            } else {
                index = Integer.parseInt(index_raw);
            }
            DAOProduct dProduct = new DAOProduct();
            DAOCategory dCat = new DAOCategory();
            int countPage = dProduct.getAllProductByCount(cid);
            int endPage = countPage / 9;
            if (countPage % 9 != 0) {
                endPage++;
            }
            DAOBrand dBrand = new DAOBrand();
            List<Brand> lBrand = dBrand.getAllListBrand();
            request.setAttribute("lBrand", lBrand);
            List<Product> lProductByCid = dProduct.getAllListProductByCategory(cid, index);
            List<Category> lCat = dCat.getAllCategory();
            request.setAttribute("cidPage", cid);
            request.setAttribute("lCat", lCat);
            request.setAttribute("endPage", endPage);
            request.setAttribute("lProduct", lProductByCid);
            request.getRequestDispatcher("Views/Client/shop.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
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
