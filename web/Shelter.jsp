<%-- 
    Document   : Doctor
    Created on : 15 Oct, 2022, 9:50:35 PM
    Author     : harish shaikh
--%>

<%@page import="Entity.Dregistration"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%Dregistration dr = (Dregistration) session.getAttribute("data3");%>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="doctors.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor</title>
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
                     <!--<Login>-->
                     <div class="nav-login-page" style="margin-top: 0rem;">
                            <div class="nav-login-page1">
                                <%if (dr != null) {%>

                                <h3><%=dr.getEmailId()%></h3>
                                <br>
                                <a href="LogoutPage"> <li>Logout/Signup</li></a>


                                <%} else {%>
                                <a href="LoginShelter.jsp"> <li>Login/Singup</li></a>
                                        <%}%>
                            </div>
                        </div>
                        <!--<Login>-->
                    </h2>

                    <div class="dnav-list">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="#">Find Shelter</a></li>
                            <li>Contacts</li>
                        </ul> 

                    </div>
                </div>

        </header>

        <section>
            <form method="post" action="SearchShelter">
                <div class="Dmid">

                    <img src="img/Shelter2.avif"style="width:50rem;height: 35rem;">
                    <div class="Dmid1">
                        <h1 style="font-size: 3rem;font-weight: 2rem;">Find Your Pet A Shelter </h1>
                        <div class="Dmid2">

                            <span  style="font-size: 3.5rem;margin-left: 1em;">Search and Find </span><br>
                            <input  type="text" name="state" placeholder="State" style="width: 15rem;">
                            <i style="margin-left: -2.5rem;font-size: 1.5rem;" class="fa fa-map-marker"></i>
                            <input type="text" name="city" placeholder="Enter Your City">
                            <i style="margin-left: -2rem; font-size: 1.5rem;"class="fa fa-search"></i>
                            <div class="Dsearch-button">
                                <button type="submit">Search</button>
                            </div> 

                        </div>
                        <div class="Dmisp">
                            <h2 style=" margin-top: 3rem;">Instant appointment with doctors.Guaranteed.</h2>
                            <ul>
                                <li>100,000 Verified doctors</li>
                                <li>3M+ Patient recommendations</li>
                                <li>25M Patients/year</li>
                            </ul>
                        </div>
                    </div>

                </div>
            </form>
        </section>

        <footer>

        </footer>


        <!-- /Login Tab Content -->
        <!--<login-javaScript>-->

        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script>
            $(document).ready(() => {
                $("#login-page").show();
                $("#Doctor-registration").hide();
                $("#patient-registration").hide();
                $("#patient").click(() => {
                    $("#login-page").hide();
                    $("#Doctor-registration").hide();
                    $("#patient-registration").show();

                });
                $("#Doctor-page").click(() => {
                    $("#login-page").hide();
                    $("#patient-registration").hide;
                    $("#Doctor-registration").show();

                });
                $("#patient-page").click(() => {
                    $("#login-page").hide();
                    $("#patient-registration").show();
                    $("#Doctor-registration").hide();
                });
                $("#Login1").click(() => {
                    $("#login-page").show();
                    $("#patient-registration").hide();
                    $("#Doctor-registration").hide();

                });



            });
        </script>
        <!--<login-javaScript>-->
    </body>
</html>

