/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Entity.loginDetail;
import Helper.ConnectionProvider;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author harish shaikh
 */
@MultipartConfig
public class loginRegistration extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String fN = request.getParameter("fullName");
            String e = request.getParameter("emailId");
            String m = request.getParameter("mobile");
            String fA = request.getParameter("fullAddress");
            Part i = request.getPart("image");
            String p = request.getParameter("password");

            try {
                loginDetail lg = new loginDetail(fN, e, m, fA, i.getSubmittedFileName(), p);
                Connection con = ConnectionProvider.getConnection();

                PreparedStatement ps = con.prepareStatement("insert into logindetail(fullName,emailId,mobile,fullAddress,image,password) Values(?,?,?,?,?,?)");
                ps.setString(1, lg.getFullName());
                ps.setString(2, lg.getEmailId());
                ps.setString(3, lg.getMobile());
                ps.setString(4, lg.getFullAddress());
                ps.setString(5, lg.getImage());
                ps.setString(6, lg.getPassword());
                ps.executeUpdate();

                String rr = request.getRealPath("img") + File.separator + i.getSubmittedFileName();
                FileOutputStream fos = new FileOutputStream(rr);
                InputStream is = i.getInputStream();
                byte by[] = new byte[is.available()];
                is.read(by);
                fos.write(by);
                fos.close();
                response.sendRedirect("LoginPet.jsp");
            } catch (Exception l) {

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
