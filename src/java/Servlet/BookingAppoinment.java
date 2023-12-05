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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author harish shaikh
 */
public class BookingAppoinment extends HttpServlet {

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
            String de = request.getParameter("demailid");
            String dm = request.getParameter("dmobile");
            String pn = request.getParameter("petname");
            String b = request.getParameter("breed");
            String w = request.getParameter("weight");
            String a = request.getParameter("age");
            String e = request.getParameter("emailid");
            String m = request.getParameter("mobile");
             String dt = request.getParameter("datetime");
            String s = request.getParameter("symptom");
            try {

                Connection con = ConnectionProvider.getConnection();

                PreparedStatement ps = con.prepareStatement("insert into bookingappoinment(demail,dmobile,petname,breed,weight,age,emailid,mobile,datetime,symptom) Value(?,?,?,?,?,?,?,?,?,?)");
             ps.setString(1, de);
              ps.setString(2, dm);
              ps.setString(3, pn);
              ps.setString(4, b);
              ps.setString(5, w);
              ps.setString(6, a);
              ps.setString(7, e);
              ps.setString(8, m);
              ps.setString(9, dt);
              ps.setString(10, s);
             ps.executeUpdate();

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
