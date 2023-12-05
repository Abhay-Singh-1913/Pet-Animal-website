<%-- 
    Document   : NGO
    Created on : 13 Apr, 2023, 12:16:37 PM
    Author     : harish shaikh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Helper.ConnectionProvider"%>
<%@page import="Helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="Shelter.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <div>
                <div class="Dnav" style="margin-left: -1rem; margin-top: 1rem;">
                    <h2 style="margin-left: 4rem;">
                        <div class="D-logo">
                            <span>Pet</span>
                            <span style="color:green ">Care</span><br>
                        </div>
                        <div class="nav-login-page">
                            <div class="nav-login-page1">
                                <a href="login.jsp"> <li>Login/Singup</li></a>

                            </div>
                        </div>
                    </h2>

                    <div class="dnav-list">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            
                            <li>Contacts</li>
                        </ul> 

                    </div>
                </div>

        </header>
         <%
            Connection con = ConnectionProvider.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from ngo" );
          
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String nN = rs.getString("ngoName");
                String nA = rs.getString("ngoAddress");
                 String nn = rs.getString("ngoNumber");
                String nb = rs.getString("ngoAbout");
                String nI = rs.getString("ngoImage");
                 String nL = rs.getString("ngoLink");
                


        %>

        <div class="card">
        <div class="data">
            <H2>
                NGO trust Name: <%=nN%>
            </H2>
            <p>
                Address:<%=nA%>
            </p>
            <p>
                Phone no: <%=nn%>
            </p>
            <p>
                About: <%=nb%>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nisi saepe ab quo sint esse. Enim illo, ratione itaque tempore sit illum dolorem cumque culpa at repellat odio blanditiis ipsam consectetur!
            </p>
        </div>
        <div>
            <img class="card-img" src="<%=nI%>">
            <br>
            <a class="bnt" href="<%=nL%>">Visit</a>
        </div>
    </div>
            <%}%>
    </body>
</html>
