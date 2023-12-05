<%-- 
    Document   : Doctor-dasboard
    Created on : 19 Feb, 2023, 9:51:37 PM
    Author     : harish shaikh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="Entity.Dregistration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%Dregistration dr = (Dregistration) session.getAttribute("data2");%>
        <!--<main css link>-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="doctors.css" rel="stylesheet">
        <link href="Shelter.css" rel="stylesheet">
    </head>
    <body style="background-color:snow;margin: 0;box-sizing: border-box;">



        <!--<navber>-->
        <header>

            <div class="Dnav" >
                <h2 style="margin-left: 2rem;">
                    <div class="D-logo">
                        <span>Pet</span>
                        <span style="color:green ;margin-left: -2rem;">Care</span><br>
                    </div>

                </h2>
                <div class="dnav-list">
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Appointment</a></li>
                        <li><a href="#">Contacts</a></li>
                    </ul>  

                </div>
                <!--<Login>-->
                <div class="nav-login-page">
                    <div class="nav-login-page1">
                        <span>DASHBOARD</span>
                        <h3><%=dr.getEmailId()%></h3>
                    </div>
                </div>
                <!--<Login>-->

            </div>

        </header>

        <!--<navber>-->

        <section>
            <div class="dash-card">
                <div class="dash-cardboard">
                    <div class="dash-img">
                        <img src="img/" >
                    </div>
                    <div class="dash-dr-name">
                        <span> Shelter Name-</span><br>
                        <small>DR- Infromation</small>
                    </div>
                    <div class="dash-list">
                        <div class="dash-list1">
                            <ul>
                                <li id="Dashboard"><i class="fa fa-dashboard"></i><a href="#">Dashboard</a></li>
                                <li id="Appoinments"><i class="fa fa-calendar"></i><a href="#">Appoinment</a></li>
                                <li id="My patients"><i class="fa fa-male"></i><a href="#">My Customer</a></li>                                
                                <li id="Invoices"><i class="fas fa-file-invoice"></i><a href="#">Invoices</a></li>
                                <li id="Reviews"><i class="fa fa-star" aria-hidden="true"></i><a href="#">Reviews</a></li>
                                <li id="Profile-Setting"><i class="fa fa-gear"></i><a href="#">Profile Settings</a></li>
                                <li id="Social Media"><i class="fas fa-share-alt"></i><a href="#">Social Media</a></li>
                                <li id="Change Password"><i class="fas fa-lock"></i><a href="#">Change Password</a></li>
                                <li id="Log Out"><i class="fa fa-sign-out"></i><a href="LogoutPage">Log Out</a></li>
                            </ul>
                        </div>
                    </div>



                    <div class="dash-right">

                        <div class="dash-right1">


                            <!--<Main-Dashboard>-->
                            <div id="main-dashboard">
                                <div class="appoinment-detail"><span>Petname</span>
                                    <span>Breed</span>
                                    <span>Weight</span>
                                    <span>Age</span>
                                    <span>emailId</span>
                                    <span>mobile</span>
                                    <span>sympton</span>

                                </div>
                            </div>
                            <!--<Main-Dashboard>-->


                            <!--<Appoinment>-->
                            <div id="Appoinment" class="appoinment">
                                <%
                                    Connection con2 = ConnectionProvider.getConnection();
                                    PreparedStatement ps2 = con2.prepareStatement("select * from shelterslot where Semailid=?");
                                    ps2.setString(1, dr.getEmailId());

                                    ResultSet rs2 = ps2.executeQuery();
                                    while (rs2.next()) {
                                        String pi = rs2.getString("Petimage");
                                        String pn = rs2.getString("Petname");

                                        String pt = rs2.getString("Pettype");
                                        String d = rs2.getString("day");
                                        String p = rs2.getString("Price");
                                        String ur = rs2.getString("Ureportdate");


                                %>
                                <div class="appoinment-detail">
                                    <div class="appoinment-detail2">
                                        <span>Pet-Image</span>
                                        <h2><img src="img/<%=pi%>"></h2>
                                    </div>
                                    <div class="appoinment-detail2">
                                        <span>Pet-Name</span>
                                        <h2><%=pn%><h2>
                                                </div>
                                                <div class="appoinment-detail2">
                                                    <span>Pet-Type</span>
                                                    <h2><%=pt%></h2>
                                                </div>
                                                <div class="appoinment-detail2">
                                                    <span>No-of-days</span>
                                                    <h2><%=d%></h2>
                                                </div>
                                                <div class="appoinment-detail2">
                                                    <span>Charges</span>
                                                    <h2><%=p%></h2>
                                                </div>


                                                <div class="appoinment-detail2">
                                                    <button class="fa fa-close"></button>
                                                    <button id="accept" class="fa fa-check"></button>
                                                </div>

                                                </div>
                                                <%}%>
                                                </div>


                                                <!--<Appoinment>-->

                                                <!--<Shelter-registration>-->
                                                <div id="ShelterForm">
                                                    <form class="shelterForm" method="post" action="ShelterRegistration" enctype="multipart/form-data">
                                                        <div class="shelterFormDiv">
                                                            <label class="shelterLabel">Shelter Name</label>
                                                            <input class="shelterInput" type="text" name="Sname" required/>
                                                        </div>

                                                        <div class="shelterFormDiv">
                                                            <label class="shelterLabel">Owner Name</label>
                                                            <input class="shelterInput" type="text" name="Oname" required/>
                                                        </div>

                                                        <div class="shelterFormDiv">
                                                            <label class="shelterLabel">Shelter Mobile</label>
                                                            <input class="shelterInput" type="text" name="Smobile" required/>
                                                        </div>

                                                        <div class="shelterFormDiv">
                                                            <label class="shelterLabel">Office Time</label>
                                                            <input class="shelterInput" type="text" name="Otime" required/>
                                                        </div>



                                                        <div class="shelterFormDiv">
                                                            <label class="shelterLabel">Shelter Address</label>
                                                            <input class="shelterInput" type="text" name="Saddress" required/>
                                                        </div>

                                                        <div class="shelterFormDiv">
                                                            <label class="shelterLabel">State</label>
                                                            <input class="shelterInput" type="text" name="Sstate" required/>
                                                        </div>

                                                        <div class="shelterFormDiv">
                                                            <label class="shelterLabel">City</label>
                                                            <input class="shelterInput" type="text" name="Scity" required/>
                                                        </div>

                                                        <div class="shelterFormDiv">
                                                            <label class="shelterLabel">About</label>
                                                            <textarea class="shelterInput" type="text" name="Sabout" required></textarea>
                                                        </div>



                                                        <div class="shelterFormDiv">
                                                            <label class="shelterLabel">Shelter Image</label>
                                                            <input class="shelterInput" type="file" name="Simage" required/>
                                                        </div>

                                                        <div class="shelterFormDiv">
                                                            <label class="shelterLabel">Price Dog</label>
                                                            <input class="shelterInput" type="text" name="Pdog" required/>
                                                        </div>
                                                        <div class="shelterFormDiv">
                                                            <label class="shelterLabel">Price Cat</label>
                                                            <input class="shelterInput" type="text" name="Pcat" required/>
                                                        </div>

                                                        <div class="shelterForm-Button">
                                                            <button type="submit">Submit</button>
                                                        </div>
                                                    </form>
                                                </div>
                                                <!--<Shelter-registration>-->




                                                </div>
                                                </div>
                                                </div>
                                                </div>






                                                </section>
                                                <footer>

                                                </footer>
                                                <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

                                                <!--                                                <script>
                                                                                                    document.getElementById("main-dashboard").style.display = "flex";
                                                                                                    document.getElementById("ShelterForm").style.display = "none";
                                                                                                    document.getElementById("Appoinment").style.display = "none";
                                                                                                    document.getElementById("Dashboard").addEventListener("click", function () {
                                                                                                    document.getElementById("main-dashboard").style.display = "flex";
                                                                                                    document.getElementById("ShelterForm").style.display = "none";
                                                                                                    document.getElementById("Appoinment").style.display = "none";
                                                                                                    });
                                                                                                    document.getElementById("Profile-Setting").addEventListener("click", function () {
                                                                                                    document.getElementById("main-dashboard").style.display = "none";
                                                                                                    document.getElementById("ShelterForm").style.display = "block";
                                                                                                    document.getElementById("Appoinment").style.display = "none";
                                                                                                    });
                                                                                                    document.getElementById("Appoinments").addEventListener("click", function () {
                                                                                                    document.getElementById("main-dashboard").style.display = "none";
                                                                                                    document.getElementById("ShelterForm").style.display = "none";
                                                                                                    document.getElementById("Appoinment").style.display = "block";
                                                                                                    });
                                                                                                </script>-->

                                                <script>
                                                    $(document).ready(() => {
                                                        $("#main-dashboard").show();
                                                        $("#ShelterForm").hide();
                                                        $("#Appoinment").hide();
                                                        $("#Dashboard").click(() => {
                                                            $("#ShelterForm").hide();
                                                            $("#Appoinment").hide();
                                                            $("#main-dashboard").show();
                                                        });
                                                        $("#Profile-Setting").click(() => {
                                                            $("#Appoinment").hide();
                                                            $("#main-dashboard").hide;
                                                            $("#ShelterForm").show();
                                                        });
                                                        $("#Appoinments").click(() => {
                                                            $("#ShelterForm").hide();
                                                            $("#Appoinment").show();
                                                            $("#main-dashboard").hide();
                                                        });
                                                    });
                                                </script>

                                                
                                                <script>
                                                    $(document).ready(() => {
                                                        $("#accept").click(function () {
                                                            let bi = new FormData();
                                                            bi.append("Uemail", "");
                                                            bi.append("Notification", "Hii   Your Slot Have been Confirm for days Thank You  ");
                                                            $.ajax({
                                                                url: 'ShelterNotification',
                                                                data: bi,
                                                                contentType: false,
                                                                processData: false,
                                                                type: 'POST',
                                                                success: function (data) {

                                                                    alert(data);
                                                                }
                                                            });
                                                        });

                                                    });
                                                </script>
                                               
<%
//                                                    Connection con3 = ConnectionProvider.getConnection();
//                                                    PreparedStatement ps3 = con3.prepareStatement("select * from shelterslot where Semailid=?");
//                                                    ps2.setString(1, dr.getEmailId());
//
//                                                    ResultSet rs3 = ps3.executeQuery();
//                                                    while (rs3.next()) {
//
//                                                        String un = rs3.getString("Uname");
//                                                        String ue = rs3.getString("Uemail");
//                                                        String d = rs3.getString("day");
                                                %>

                                                </body>
                                                </html>
