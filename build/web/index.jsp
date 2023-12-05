<%-- 
    Document   : index
    Created on : 19 Jan, 2022, 9:40:13 AM
    Author     : harish shaikh
--%>

<%@page import="Entity.SNotification"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Helper.ConnectionProvider.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="Helper.ConnectionProvider"%>
<%@page import="com.mysql.cj.Session"%>
<%@page import="Entity.loginDetail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <% loginDetail lD = (loginDetail) session.getAttribute("data");%>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="Animal.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Animal Care</title>
    </head>
    <body>
        <header>
            <div class="log">
                <div class="log1">
                    <span style="color:black;">Pet</span>
                    <span style="color: green ;">Care</span><br>

                </div>
                <div class="path">
                    <div class="shape1"></div>
                    <div class="shape2"></div>
                    <div class="shape3"></div>
                </div>
                <div class="serach1">
                    <div class="search-icon">

                        <input type="text" placeholder="Search">
                        <button class="fa fa-search"></button>

                    </div>

                </div>
            </div>

            <div class="con1">
                <div class="con3">
                    <%if (lD != null) {%>
                    <div class="logout-page">
                        <div class="Sessions-email" id="logout-page">

                            <img src="img/<%=lD.getImage()%>">
                            <h3><%=lD.getEmailId()%></h3>

                        </div>
                        <div class="cart-message">
                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                            <!--<Notification-page>-->
                            <div class="notification-message">
                                <a id="notification" href="#"><i class="far fa-comment-alt"></i> </a>
                                <div class="notification" id="notification_page">
                                    <div class="notification1">
                                        <h5>No Notification Found</h5>
                                        <%
                                            Connection con = ConnectionProvider.getConnection();
                                            PreparedStatement ps = con.prepareStatement("select * from notification where Dmobile=? and Dname=?");
                                            ps.setString(1, lD.getMobile());
                                            ps.setString(2, lD.getFullName());

                                            ResultSet rs = ps.executeQuery();
                                            while (rs.next()) {
                                                String an = rs.getString("animalname");
                                                String An = rs.getString("Aname");
                                                String ae = rs.getString("Aemail");
                                                String am = rs.getString("Amobile");
                                                String aa = rs.getString("Aaddress");

                                        %>
                                        <div class="notify-messsage">
                                            <div class="notify-messsage1" style="margin-left: 1rem;">
                                                <span><%=An%> is ready for Adoption
                                                    to<%=an%></span>
                                                <p>Address:<%=aa%></p><p>Mobile:<%=am%></p>
                                                <p>Please Confirm<a href="TotalAdoption.jsp?data=<%=lD.getMobile()%>" style="margin-left: 2rem;">Confirm</a></p>
                                            </div>
                                        </div>

                                        <%}%>




                                    </div>

                                    <div class="notification_cross">
                                        <a id="remove_notification" href="#"><i class="fa fa-close"></i></a>
                                    </div>
                                </div>

                            </div>
                            <!--<Notification-page>-->

                        </div>


                        <a href="LogoutPage"> <li style="margin-top:-2rem;margin-left: 2rem;align-items: center;padding-left: 0.5rem;">Logout/Signup</li></a>

                    </div>

                    <%} else {%>
                    <li><a href="LoginPet.jsp">Login/Signup</a> </li>
                    <%}%>
                </div>
            </div>
            <div class="nav1">

                <li>Home</li>
                <li><a href="Shelter.jsp" style="text-decoration: none; color: black;">Shelter</a></li>
                <li><a href="Doctor.jsp" style="text-decoration: none; color: black;">Doctor</a></li>


                <li>Don&Adop-pet
                    <div class="nav2">
                        <ul>

                            <%if (lD != null) {%>
                            <a href="Donation.jsp" style="text-decoration: none; color: black;"><li>Donate pets</li></a>
                                    <%} else { %>
                            <a onclick="Donation_page()" style="text-decoration: none; color: black;"><li>Donate pets</li></a><%}%>

                            <a href="SearchPet.jsp" style="text-decoration: none; color: black;"><li>Adoped pets</li></a>
                            <a href="TotalAdoption.jsp" style="text-decoration: none; color: black;"><li>Total Adoption</li></a>
                        </ul>
                    </div>

                </li>
                <a href="BioPet.jsp"> <li>Bio-pet</li></a>
                <li>More
                    <div class="nav2">
                        <ul>
                            <a href="NGO.jsp">  <li>NGO Donate</li></a>
                             <a href="Food.jsp">  <li>Food</li></a>

                            <li>FeedBack</li>
                            <li>Helps</li>
                            <li><a href="#abouts" style="text-decoration: none;color: black;">About</a></li>
                            <li> <a href="#" style="text-decoration: none;color: black;">Contect Us</a></li>
                        </ul>
                    </div>
                </li>
                <div class="loc">
                    <input type="text" placeholder="Location">
                    <i style="margin-left:-1.5rem;" class="fa fa-map-marker" aria-hidden="true"></i>
                </div>
            </div>

        </header>
        <section>
            <div class="path1">

                <img src="img/Front/dog3.png">

            </div>
            <div class="img1">
                <img src="img/Front/dog.jpg">
            </div>
        </section>
        <div class="img-des">
            <div class="img-des1">

                <ul>
                    <li><a href="#"><img src="img/Front/Petshelter.png">Shelter</a></li>
                    <li><a href="Doctor.jsp"><img src="img/Front/petDoctor.png">Doctar</a></li>
                    <li><a href="NGO.jsp"><img src="img/Front/NGO.jpg">NGO</a></li>
                    <li><a href="#"><img src="img/Front/petFood.jpg">Bio</a></li>
                </ul>

            </div>
        </div>

        <div class="about" id="abouts">
            <div class="about1">
                <h1>About</h1>
                <p style="margin: 5rem;">In this website all the thing are present which can help the pet animals. 
                    It is the user friendly website user can logging easily and they can Adopted  and Donated pet,
                    and pet shelter feature can also there,
                    and main feature of this website is donation likes as many NGO are their they can doing job very well but they have some money Problem so 
                    they can’t to give more facility to pet animal  are rescue animals so is this website all  NGO are join And those people are donate some money they can donate direct to NGO.
                    We are developing the website which have all the feature.
                    Our website user friendly where user can easily login and adopt and donate the pet animal.
                    There is also a Ngo section. 
                    In which user can help the Ngo by donating the money and help the Ngo to solve the problem. 
                    User can read summary and the biography the pet animals and animal related disease information is also present. There is also a pet shelter feature in which user can keep their pet for a specific time period. Doctor consulting feature. And animal related toys and food section is provided according to the preference.  </p>

            </div>
        </div>

        <footer>
            <div class="social-meadia1">
                <div class="social-media2">
                    <div class="icons">
                        <i class="fa fa-facebook-square" ></i>
                        <i class="fa fa-twitter"></i>
                        <i class="fa fa-linkedin"></i>
                        <i class="fa fa-instagram"></i>
                    </div> 
                </div>
            </div>
        </footer>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script>


                                $(document).ready(() => {

                                    $("#notification_page").hide();

                                    $("#notification").click(() => {
                                        $("#notification_page").show();
                                    });
                                    $("#remove_notification").click(() => {
                                        $("#notification_page").hide();
                                    });
                                });


                                function Donation_page() {
                                    alert("Please  Login First");
                                }



        </script>


    </body>
</html>
