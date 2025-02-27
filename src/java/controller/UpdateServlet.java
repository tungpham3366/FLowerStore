/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AccountDAO;
import dal.CategoryDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Category;
import model.Customer;

/**
 *
 * @author PC
 */
@WebServlet(name = "UpdateServlet", urlPatterns = {"/updateprofile"})
public class UpdateServlet extends HttpServlet {

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
            out.println("<title>Servlet UpdateServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateServlet at " + request.getContextPath() + "</h1>");
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
        String customer_id = request.getParameter("customer_id");
        int customerid;
        HttpSession session = request.getSession();
        AccountDAO ad = new AccountDAO();
        try {
            customerid = Integer.parseInt(customer_id);
            Customer c = ad.getCustomerById(customerid);
            session.setAttribute("profile", c);
            request.getRequestDispatcher("updateprofile.jsp").forward(request, response);
        } catch (Exception e) {
        }

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
        String customer_id = request.getParameter("id");
        String username = request.getParameter("username");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String information = request.getParameter("information");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String role = request.getParameter("role");
        String avatar = request.getParameter("avatar");
        AccountDAO clb = new AccountDAO();
        int id;
        int role_raw;
        boolean gender_raw;
        HttpSession session = request.getSession();

        try {
            role_raw = Integer.parseInt(role);
            id = Integer.parseInt(customer_id);
            gender_raw = Boolean.parseBoolean(gender);
            Customer c = clb.getCustomerById(id);
            Customer cNew = new Customer(id, username, c.getPassword(), firstname, lastname, gender_raw, email, address, information, dob, phone, role_raw, avatar);
            if(clb.checkUserName(username) )
            {
                request.setAttribute("er", "this username has been occupied");
                request.getRequestDispatcher("updateprofile.jsp").forward(request, response);
            }
            else clb.update(cNew);
            session.setAttribute("profile", cNew);
            request.getRequestDispatcher("profile.jsp").forward(request, response);
            response.sendRedirect("profile");
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
    }
//
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
