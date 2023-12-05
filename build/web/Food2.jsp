<%-- 
    Document   : biopet2
    Created on : 12 Apr, 2023, 4:45:34 PM
    Author     : harish shaikh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Helper.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="Animal.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >
        
        <%
                            Connection con = ConnectionProvider.getConnection();
                            String h = request.getParameter("animalname");
                            PreparedStatement ps = con.prepareStatement("select * from biopet where animalName=?");
                            ps.setString(1, h);

                            ResultSet rs = ps.executeQuery();
                            while (rs.next()) {
                                String an = rs.getString("animalName");
                                String ai = rs.getString("animalImage");
                                String ad = rs.getString("animalDiscription");
                                String av = rs.getString("animalVideo");


                        %>
        
        
     <div class="readpet-detail">
         <h2 >
           <%=an%>  
         </h2>
         <iframe src="<%=av%>">
             
         </iframe>
         <p>
            <%=ad%> 
         </p>
         
     </div>  
         <%}%>
    </body>
</html>
