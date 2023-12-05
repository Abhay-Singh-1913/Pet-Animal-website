/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

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
public class ShelterBookingForm extends HttpServlet {

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
           String  se= request.getParameter("Semailid");
            String sn = request.getParameter("Sname");
            String un = request.getParameter("Uname");
            String um = request.getParameter("Umobile");
            String ue = request.getParameter("Uemail");
            String ua = request.getParameter("Uaddress");
            String pt = request.getParameter("Pettype");
            String pn = request.getParameter("Petname");
             String d = request.getParameter("day");
            String p = request.getParameter("Price");
             String ur = request.getParameter("Ureportdate");
            Part pi = request.getPart("Petimage");
            try {

                Connection con = ConnectionProvider.getConnection();
    PreparedStatement ps = con.prepareStatement("insert into shelterslot(Semailid,Sname,Uname,Umobile,Uemail,Uaddress,Pettype,Petname,day,Price,Ureportdate,Petimage) Value(?,?,?,?,?,?,?,?,?,?,?,?)");
             ps.setString(1, se);
              ps.setString(2, sn);
              ps.setString(3, un);
              ps.setString(4, um);
              ps.setString(5, ue);
              ps.setString(6, ua);
              ps.setString(7, pt);
              ps.setString(8, pn);
              ps.setString(9, d);
              ps.setString(10, p);
              
              ps.setString(11, ur);
              ps.setString(12, pi.getSubmittedFileName());
              
             ps.executeUpdate();
             String rr = request.getRealPath("img") + File.separator + pi.getSubmittedFileName();
                FileOutputStream fos = new FileOutputStream(rr);
                InputStream is = pi.getInputStream();
                byte by[] = new byte[is.available()];
                is.read(by);
                fos.write(by);
                fos.close();

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
