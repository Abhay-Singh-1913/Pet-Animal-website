<%-- 
    Document   : TotalAdoption
    Created on : 27 Mar, 2023, 9:07:38 AM
    Author     : harish shaikh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
         
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="Animal.css" rel="stylesheet">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body style="margin: 0rem;padding: 0rem;box-shadow: border-box;">
        
        
        <div class="ShowPet-nav">
            <div class="ShowPet-nav2">
                  <div class="ShowPet-log">
            <span style="color:black;">Pet</span>
            <span style="color: green ;">Care</span><br>
            
            </div>
                
                
                <div class="ShowPet-nav3">
                    
                </div>
                <div class="ShowPet-nav4">
                    <h1>WelCome to PetCare</h1>
                </div>
             </div>
        </div>
         <%
         Connection con=ConnectionProvider.getConnection();
       
         PreparedStatement ps=con.prepareStatement("select * from notification");
         
         ResultSet rs= ps.executeQuery();
         while(rs.next()){
             String Dn=rs.getString("Dname");
              String Da=rs.getString("Daddress");
               String An=rs.getString("Aname");
                String Aa=rs.getString("Aaddress");
                 String an=rs.getString("animalname");
                  String ap=rs.getString("animalprice");
                   String ag=rs.getString("animalage");
                   String ai=rs.getString("animalimage");
         
         
         %>
         <div class="TotalAdoption-Section">
             <div class="TotalAdoption-Section1">
                 <div class="TotalAdoption-Section2">
                     <div class="TotalAdoption-detail">
                         <h1>Doner-Detail</h1>
                         <div class="all_img">
                        <img src="img/Front/dog.jpg">
                    </div>
                         <div class="All-detail">
                             <span>Doner Name:<%=Dn%></span><br>
                             <span>Doner Address:<%=Da%></span><br>
                         </div>
                     </div>
                     <div class="TotalAdoption-detail">
                         <h1>Adoption-Detail</h1> 
                         <div class="all_img">
                        <img src="img/Front/dog.jpg">
                    </div>
                         <div class="All-detail">
                             <span>Adopter Name:<%=An%></span><br>
                              <span>Adopter Address:<%=Aa%></span><br>
                               
                         </div>
                     </div>
                     <div class="TotalAdoption-detail">
                         <h1>Pet-Detail</h1> 
                         <div class="all_img">
                        <img src="img/<%=ai%>">
                    </div>
                         <div class="All-detail">
                             <span>Pet Name : <%=an%></span>                        
                            <span>Pet price :<%=ap%></span>
                            <span>Pet Age :<%=ag%></span>
                            
                         </div>
                     </div>
                 </div>
             </div>
             <%}%>
         </div>
    </body>
</html>
