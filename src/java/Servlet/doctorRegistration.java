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
public class doctorRegistration extends HttpServlet {

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
            out.print("hvufvuqvfu");
            Part doctorImage = request.getPart("D-image");
            String firstName = request.getParameter("DF-name");
            String lastName = request.getParameter("DL-name");
            String email = request.getParameter("D-email");
            String number = request.getParameter("D-number");
            String gender = request.getParameter("D-gender");
            String adhar = request.getParameter("D-adhar");
            String dob = request.getParameter("D-dob");
            String bio = request.getParameter("D-bio");
            String clinicName = request.getParameter("DC-name");
            String clinicAddress = request.getParameter("DC-address");
            Part clinicImage1 = request.getPart("DC-image1");
            Part clinicImage2 = request.getPart("DC-image2");
            String dAddress = request.getParameter("D-address");
            String dCity = request.getParameter("D-city");
            String dState = request.getParameter("D-state");
            String dPrice = request.getParameter("D-price");
            String dService = request.getParameter("D-service");
            String dSpecialization = request.getParameter("D-specialization");
            String dDegree[] = request.getParameterValues("D-degree[]");
            String dCollege[] = request.getParameterValues("D-college[]");
            String dHospital[] = request.getParameterValues("D-hospital[]");
            String dDesignation[] = request.getParameterValues("D-designation[]");
            String dAward[] = request.getParameterValues("D-award[]");
            String dRegistration[] = request.getParameterValues("D-registration[]");

            StringBuilder newDegree1 = new StringBuilder();
            for (String n : dDegree) {
                newDegree1.append(" ").append(n).append(" , ");
            }
            StringBuilder newCollege2 = new StringBuilder();
            for (String n : dCollege) {
                newCollege2.append(" ").append(n).append(" , ");
            }
            out.print(newCollege2);
            StringBuilder newHospital3 = new StringBuilder();
            for (String n : dHospital) {
                newHospital3.append(" ").append(n).append(" , ");
            }
            StringBuilder newDesignation4 = new StringBuilder();
            for (String n : dDesignation) {
                newDesignation4.append(" ").append(n).append(" , ");
            }
            StringBuilder newAward5 = new StringBuilder();
            for (String n : dAward) {
                newAward5.append(" ").append(n).append(" , ");
            }
            StringBuilder newRegistration6 = new StringBuilder();
            for (String n : dRegistration) {
                newRegistration6.append(" ").append(n).append(" , ");
            }
            try {
                Connection con = ConnectionProvider.getConnection();
                PreparedStatement ps = con.prepareStatement("insert into doctorregistration(Dimage,DFname,DLname,"
                        + "Demail,Dnumber,Dgender,Dadhar,Ddob,Dbio,DCname,DCaddress,DCimage1,DCimage2,Daddress,"
                        + "Dcity,Dstate,Dprice,Dservice,"
                        + "Dspecialization,Ddegree,Dcollege,Dhospital,Ddesignation,Daward,Dregistration) Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1, doctorImage.getSubmittedFileName());
                ps.setString(2, firstName);
                ps.setString(3, lastName);
                ps.setString(4, email);
                ps.setString(5, number);
                ps.setString(6, gender);
                ps.setString(7, adhar);
                ps.setString(8, dob);
                ps.setString(9, bio);
                ps.setString(10, clinicName);
                ps.setString(11, clinicAddress);
                ps.setString(12, clinicImage1.getSubmittedFileName());
                ps.setString(13, clinicImage2.getSubmittedFileName());
                ps.setString(14, dAddress);
                ps.setString(15, dCity);
                ps.setString(16, dState);
                ps.setString(17, dPrice);
                ps.setString(18, dService);
                ps.setString(19, dSpecialization);
                ps.setString(20, newDegree1.toString());
                ps.setString(21, newCollege2.toString());
                ps.setString(22, newHospital3.toString());
                ps.setString(23, newDesignation4.toString());
                ps.setString(24, newAward5.toString());
                ps.setString(25, newRegistration6.toString());
                ps.executeUpdate();

                String rr = request.getRealPath("img") + File.separator + doctorImage.getSubmittedFileName();
                FileOutputStream fos = new FileOutputStream(rr);
                InputStream is = doctorImage.getInputStream();
                byte by[] = new byte[is.available()];
                is.read(by);
                fos.write(by);
                fos.close();
                String rr1 = request.getRealPath("img") + File.separator + clinicImage1.getSubmittedFileName();
                FileOutputStream fos1 = new FileOutputStream(rr1);
                InputStream is1 = clinicImage1.getInputStream();
                byte by1[] = new byte[is1.available()];
                is1.read(by1);
                fos1.write(by1);
                fos1.close();
                String rr2 = request.getRealPath("img") + File.separator + clinicImage2.getSubmittedFileName();
                FileOutputStream fos2 = new FileOutputStream(rr2);
                InputStream is2 = clinicImage2.getInputStream();
                byte by2[] = new byte[is2.available()];
                is2.read(by2);
                fos2.write(by2);
                fos2.close();

            } catch (Exception l) {

            }

//            String name[]=request.getParameterValues("D-award[]");
//            String name2=request.getParameter("DC-name");
//           out.print(name2);
//            
//            
//            StringBuilder newAward2=new StringBuilder();
//            for( String n:name){
//                newAward2.append(" ").append(n).append(" , ");
//            }
//            out.print(newAward2);
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
