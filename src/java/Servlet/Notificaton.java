/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author harish shaikh
 */
@MultipartConfig
public class Notificaton extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String an = request.getParameter("animalname");
            String at = request.getParameter("animaltype");
            String ai = request.getParameter("animalimage");
            String aa = request.getParameter("animalage");
            String ap = request.getParameter("animalprice");
            String ah = request.getParameter("animalhybrit");
            String Dn = request.getParameter("Dname");
            String Dm = request.getParameter("Dmobile");
            String Da = request.getParameter("Daddress");
            String An = request.getParameter("Aname");
            String Ae = request.getParameter("Aemail");
            String Am = request.getParameter("Amobile");
            String Aa = request.getParameter("Aaddress");
            String Ai = request.getParameter("Aimage");

            
            try {
                Connection con = ConnectionProvider.getConnection();
                PreparedStatement ps = con.prepareStatement("insert into notification(animalname,animaltype,animalimage,animalage,animalprice,animalhybrit,Dname,Dmobile,Daddress,Aname,Aemail,Amobile,Aaddress,Aimage) Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1,an );
                ps.setString(2,at );
                ps.setString(3,ai );
                ps.setString(4,aa );
                ps.setString(5,ap );
                ps.setString(6,ah );
                ps.setString(7,Dn );
                ps.setString(8,Dm );
                ps.setString(9,Da );
                ps.setString(10,An );
                ps.setString(11,Ae );
                ps.setString(12,Am );
                ps.setString(13,Aa );
                ps.setString(14,Ai );
               
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Notificaton.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Notificaton.class.getName()).log(Level.SEVERE, null, ex);
        }
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
