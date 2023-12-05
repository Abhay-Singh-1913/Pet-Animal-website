/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Helper.*;
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
public class DonatePet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = res.getWriter()) {
            String n = req.getParameter("name");
            String m = req.getParameter("mobile");
            String a = req.getParameter("address");
            String s = req.getParameter("state");
            String c = req.getParameter("city");
            String at = req.getParameter("animaltype");
            String an = req.getParameter("animalname");
            String ac = req.getParameter("animalcolor");
            String ah = req.getParameter("animalhybrit");
            String aw = req.getParameter("animalweight");
            String aa = req.getParameter("animalage");
            Part image = req.getPart("animalimage");
            String ap = req.getParameter("animalprice");
            String ab=req.getParameter("animalabout");
         

            try {
                Connection con = ConnectionProvider.getConnection();
               
                PreparedStatement ps = con.prepareStatement("insert into donate(name,mobile,address,state,city,animaltype,animalname,animalcolor,animalhybrit,animalweight,animalage,animalimage,animalprice,animalabout) Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1, n);
                ps.setString(2, m);
                ps.setString(3, a);
                ps.setString(4, s);
                ps.setString(5, c);
                ps.setString(6, at);
                ps.setString(7, an);
                ps.setString(8, ac);
                ps.setString(9, ah);
                ps.setString(10, aw);
                ps.setString(11, aa);
                ps.setString(12, image.getSubmittedFileName());
                ps.setString(13, ap);
                 ps.setString(14, ab);
                ps.executeUpdate();

                String rr = req.getRealPath("img") + File.separator + image.getSubmittedFileName();
                FileOutputStream fos = new FileOutputStream(rr);
                InputStream is = image.getInputStream();
                byte by[] = new byte[is.available()];
                is.read(by);
                fos.write(by);
                fos.close();
 
            res.sendRedirect("SearchPet.jsp");

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
