/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author PC
 */
@WebServlet(name = "EditProductServle", urlPatterns = {"/editproduct"})
public class EditProductServle extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditProductServle</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditProductServle at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String flower_id = request.getParameter("flower_id");
        int id = 0;
        try {
            id = Integer.parseInt(flower_id);
        } catch (Exception e) {
        }
        ProductDAO pd = new ProductDAO();
        CategoryDAO cd = new CategoryDAO();
        List<Category> cat = cd.getAll();
        Product p = pd.getProductById(id);
        request.setAttribute("id", id);
        request.setAttribute("product", p);
        request.setAttribute("cate", cat);
        request.getRequestDispatcher("editproduct.jsp").forward(request, response);
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
        String flower_id = request.getParameter("flower_id");
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String describe = request.getParameter("describe");
        String price_raw = request.getParameter("price");
        String color = request.getParameter("color");
        String imagegs = request.getParameter("images");
        String status_raw = request.getParameter("status");
        String date = request.getParameter("date");
        int cate = 0, id = 0, status = 0;
        double price = 0;
        ProductDAO pd = new ProductDAO();
        try {
            id = Integer.parseInt(flower_id);
            cate = Integer.parseInt(category);
            status = Integer.parseInt(status_raw);
            price = Double.parseDouble(price_raw);
        } catch (NumberFormatException e) {

        }
        PrintWriter out = response.getWriter();
        Product de = pd.getProductById(id);
        CategoryDAO cd = new CategoryDAO();
        Category c = cd.getCategoryById(cate);
        Product d = new Product(de.getFlower_id(), c, name, describe, price,color, imagegs,status, date);
        pd.updateProduct(d);
//        out.println(de.getFlower_id());
//        out.println(c.getCategory_id());
//        out.println(name);
//        out.println(describe);
//        out.println(price);
//        out.println(date);
//        out.println(de.getCountry());
//        out.println(de.getDiscount());
//        out.println(imagegs);
//        out.println(de.getSubcategory_id());
//        out.println(color);

              response.sendRedirect("managerproduct");
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
