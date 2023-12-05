/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Entity.loginDetail;
import Helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author harish shaikh
 */
@MultipartConfig
public class login extends HttpServlet {

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
             String e=request.getParameter("emailId");
               String p=request.getParameter("password");
               
             try{
                Connection con= ConnectionProvider.getConnection();
                PreparedStatement ps=con.prepareStatement("select * from logindetail where emailId=? and password=?");
                ps.setString(1,e); ps.setString(2,p);
                
                ResultSet rs=ps.executeQuery();
                if(rs.next()){
                    
                    String eid=rs.getString("emailId");
                    String i=rs.getString("image");
                    String n=rs.getString("fullName");
                    String m=rs.getString("mobile");
                    String fa=rs.getString("fullAddress");
                    
                    
                     
               
                    loginDetail lD=new loginDetail(n,eid,m,fa,i);
                    HttpSession sp=request.getSession();
                    sp.setAttribute("data", lD);
                     response.sendRedirect("index.jsp");
                }
                else{
                   response.sendRedirect("LoginPet.jsp");   
                }
                
                
                
             } 
             catch(Exception l){
                 
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
