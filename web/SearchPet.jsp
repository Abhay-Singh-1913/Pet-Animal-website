<%-- 
    Document   : SearchPet
    Created on : 1 Apr, 2023, 12:11:36 PM
    Author     : harish shaikh
--%>

<%@page import="Entity.Donate"%>
<%@page import="Entity.loginDetail"%>
<%@page import="Entity.loginDetail"%>
<%@page import="Entity.loginDetail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <% Donate D = (Donate) session.getAttribute("Ddata");%>
        <% loginDetail lD = (loginDetail) session.getAttribute("data");%>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="Animal.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SearchPet</title>
    </head>
    <body style="margin: 0rem; padding: 0rem; box-sizing: border-box;">
        <!--<Navbar>-->
        <div class="ShowPet-nav">
            <div class="ShowPet-nav2">
                <div class="ShowPet-log">
                    <span style="color:black;">Pet</span>
                    <span style="color: green ;">Care</span><br>

                </div>


                <div class="ShowPet-nav3">
                    <div class="ShowPet-list">
                        <li>Home</li>
                        <li>Shelter</li>
                        <li>Doctor</li>
                        <li>NGO</li>
                    </div>


                    <div class="Showpet-loginform">
                        <div class="Showpet-login">
                            <div class="con1" style="margin-top: 11rem;">
                                <div class="con3">
                                    <%if (lD != null) {%>
                                    <div class="logout-page">
                                        <div class="Sessions-email" id="logout-page">

                                            <img src="img/<%=lD.getImage()%>">
                                            <h3><%=lD.getEmailId()%></h3>
                                        </div>
                                        <div class="cart-message">
                                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                            <a href="#"><i class="far fa-comment-alt"></i>
                                                <div class="measssge-pet">
                                                    <div class="measssge-pet1"></div>

                                                </div>
                                            </a>
                                        </div>
                                        <a href="LogoutPage"> <li style="margin-top:-2rem;margin-left: 2rem;align-items: center;padding-left: 0.5rem;">Logout/Signup</li></a>

                                    </div>

                                    <%} else {%>
                                    <li><a href="LoginPet.jsp">Login/Signup</a> </li><%}%>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="ShowPet-nav4">
                    <h1>WelCome to PetCare</h1>
                </div>
            </div>
        </div>
        <!--<Navbar>-->

        <section>
            <div class="search-pet">
                <form method="post" action="searchPet">
                <div class="search-pet1">
                    <div class="search-petimg">
                        <img src="img/SearchPet.jpg">
                    </div>
                    <div class="search-contain">
                        <h1>Find your Lovely<br> Pets</h1>
                        <div class="search-field">
                            <input  type="text" name="state" placeholder="State" style="width: 15rem;">
                            <i style="margin-left: -4rem;font-size: 1.5rem;" class="fa fa-map-marker"></i>
                            <input type="text" name="city" placeholder="Enter Your City">
                            <i style="margin-left: -2rem; font-size: 1.5rem;"class="fa fa-search"></i>
                            <div class="petsearch-button">
                                <button type="submit">Search</button>
                            </div> 
                            
                        </div>
                        
                    </div>
                    <div class="Serach-detail"> 
                   <h2 style=" margin-top: -3rem;">Find Your Dream Pets In Your Location .</h2>
                            <ul>
                                <li>100,000 Verified Pets</li>
                                <li>3M+ pets avilabel</li>
                                <li>25M pets/year</li>
                            </ul>
                            </div>
                </div>
                </form>
            </div>

        </section>

    </body>
</html>
