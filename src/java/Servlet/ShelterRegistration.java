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
public class ShelterRegistration extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest req, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           String sn = req.getParameter("Sname");
            String on = req.getParameter("Oname");
            String sm = req.getParameter("Smobile");
            String ot = req.getParameter("Otime");
            String sa = req.getParameter("Saddress");
            String ss = req.getParameter("Sstate");
            String sc = req.getParameter("Scity");
            String saa = req.getParameter("Sabout");
            Part si = req.getPart("Simage");
            String pd = req.getParameter("Pdog");
            String pc = req.getParameter("Pcat");
           
         

            try {
                Connection con = ConnectionProvider.getConnection();
               
                PreparedStatement ps = con.prepareStatement("insert into shelterdata(Sname,Oname,Smobile,Otime,Saddress,Sstate,Scity,Sabout,Simage,Pdog,Pcat) Values(?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1, sn);
                ps.setString(2, on);
                ps.setString(3, sm);
                ps.setString(4, ot);
                ps.setString(5, sa);
                ps.setString(6, ss);
                ps.setString(7, sc);
                ps.setString(8, saa);
                ps.setString(9, si.getSubmittedFileName());
                ps.setString(10, pd);
                ps.setString(11, pc);
                ps.executeUpdate();

                String rr = req.getRealPath("img") + File.separator + si.getSubmittedFileName();
                FileOutputStream fos = new FileOutputStream(rr);
                InputStream is = si.getInputStream();
                byte by[] = new byte[is.available()];
                is.read(by);
                fos.write(by);
                fos.close();
                response.sendRedirect("ShelterDashboard.jsp");
          

            } catch (Exception l) {
                l.printStackTrace();
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
