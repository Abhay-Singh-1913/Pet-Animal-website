<%-- 
    Document   : adoption
    Created on : 16 Sep, 2022, 8:37:36 PM
    Author     : harish shaikh
--%>

<%@page import="Entity.Donate"%>
<%@page import="Entity.loginDetail"%>
<%@page import="Entity.loginDetail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <% loginDetail lD = (loginDetail) session.getAttribute("data");%>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="Animal.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adoption</title>
        <style>

            .adop-3{
                position: absolute;
                margin-left: 2rem;
                width: 90rem;
                background: whitesmoke;
                display:grid;
                grid-template-columns: auto auto auto;
                box-shadow: 10px 10px 15px rgba(0,0,0,0.3);
                margin-top: 2rem;
            }
            .adop3{
                height: 30rem;
                width: 20rem;
            }  


        </style>
    </head>
    <body>

        <header>
            <div>
                <div class="Dnav" style="margin-left: -1rem; margin-top: 2rem;">
                    <h2 style="margin-left: 4rem;">
                        <div class="D-logo">
                            <span>Pet</span>
                            <span style="color:green ">Care</span><br>
                        </div>
                    </h2>
                    <div class="dnav-list">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li id="Dog"><a href="#" >Dogs</a></li>
                            <li id="Cat"><a href="#" >Cats</a></li>
                            <li id="Others"><a href="#" >Others</a></li>
                        </ul> 
                        <span></span>

                    </div>
                    <div class="con1" style="margin-top: 6rem;">
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
        </header>
        <section>
            <!--<A-Dogs>--> 
            <div  class="adop-1" id="A-Dogs">
                <div class="adop-2">
                    <div class="adop-3">
                        <%
                            Connection con = ConnectionProvider.getConnection();
                            PreparedStatement ps = con.prepareStatement("select * from food where Type=?");
                            ps.setString(1, "dog");

                            ResultSet rs = ps.executeQuery();
                            while (rs.next()) {
                                String pn = rs.getString("PtdName");
                                String pt = rs.getString("PtdType");
                                String pf = rs.getString("PtdFlavour");
                                String ft = rs.getString("FoodType");
                                String s = rs.getString("Suitable");
                                String p = rs.getString("Packet");
                                String q = rs.getString("Quantity");
                                String pr = rs.getString("Price");
                                String m = rs.getString("Month");
                                String pi = rs.getString("PtdImage");
                                String t = rs.getString("Type");


                        %>
                        <div class="adop3" style="margin-left: 5rem;box-shadow: 10px 10px 15px rgba(0,0,0,0.3);">
                            <div class="#">
                                <div> <img style="width: 20rem;height: 15rem;" src="<%=pi%>"></div>

                                <div class="bookname"><span ><%=pn%></span></div>
                                <div class="discription">PtdType:<%=pt%></div>
                                <div class="discription">PtdFlavour:<%=pf%></div>
                                <div class="discription">FoodType:<%=ft%></div>
                                <div class="discription">Suitable:<%=s%></div>
                                <div class="discription">Type:<%=t%></div>
                                <div class="Read-button">
                                    <button><a href="#">Read</a></button>

                                </div>


                            </div>
                        </div>
                        <%}%>
                    </div>

                </div>
            </div>
            <!--<A-Dogs>-->

            <!--<A-Cats>--> 
            <div  class="adop-1" id="A-Cats">
                <div class="adop-2">
                    <div class="adop-3">
                        <%
                            Connection con2 = ConnectionProvider.getConnection();
                            PreparedStatement ps2 = con.prepareStatement("select * from food where Type=?");
                            ps.setString(1, "cat");

                            ResultSet rs2 = ps.executeQuery();
                            while (rs2.next()) {
                                String pn = rs.getString("PtdName");
                                String pt = rs.getString("PtdType");
                                String pf = rs.getString("PtdFlavour");
                                String ft = rs.getString("FoodType");
                                String s = rs.getString("Suitable");
                                String p = rs.getString("Packet");
                                String q = rs.getString("Quantity");
                                String pr = rs.getString("Price");
                                String m = rs.getString("Month");
                                String pi = rs.getString("PtdImage");
                                String t = rs.getString("Type");


                        %>

                        <div class="adop3" style="margin-left: 5rem;box-shadow: 10px 10px 15px rgba(0,0,0,0.3);">
                            <div class="#">
                                <div> <img style="width: 20rem;height: 15rem;" src="<%=pi%>"></div>

                                <div class="bookname"><span ><%=pn%></span></div>
                                <div class="discription">PtdType:<%=pt%></div>
                                <div class="discription">PtdFlavour:<%=pf%></div>
                                <div class="discription">FoodType:<%=ft%></div>
                                <div class="discription">Suitable:<%=s%></div>
                                <div class="discription">Type:<%=t%></div>
                                <div class="Read-button">
                                    <button><a href="#">Read</a></button>

                                </div>


                            </div>
                        </div>
                        <%}%>
                    </div>

                </div>
            </div>
            <!--<A-Cats>-->  

            <!--<A-Other>--> 
            <div  class="adop-1" id="A-Other">
                <div class="adop-2">

                    <div class="adop-3">
                        <%
                            Connection con3 = ConnectionProvider.getConnection();
                            PreparedStatement ps3 = con.prepareStatement("select * from food where Type=?");
                            ps.setString(1, "other");

                            ResultSet rs3 = ps.executeQuery();
                            while (rs3.next()) {
                                String pn = rs.getString("PtdName");
                                String pt = rs.getString("PtdType");
                                String pf = rs.getString("PtdFlavour");
                                String ft = rs.getString("FoodType");
                                String s = rs.getString("Suitable");
                                String p = rs.getString("Packet");
                                String q = rs.getString("Quantity");
                                String pr = rs.getString("Price");
                                String m = rs.getString("Month");
                                String pi = rs.getString("PtdImage");
                                String t = rs.getString("Type");


                        %>

                        <div class="adop3" style="margin-left: 5rem;box-shadow: 10px 10px 15px rgba(0,0,0,0.3);">
                            <div class="#">
                                <div> <img style="width: 20rem;height: 15rem;" src="<%=pi%>"></div>

                                <div class="bookname"><span ><%=pn%></span></div>
                                <div class="discription">PtdType:<%=pt%></div>
                                <div class="discription">PtdFlavour:<%=pf%></div>
                                <div class="discription">FoodType:<%=ft%></div>
                                <div class="discription">Suitable:<%=s%></div>
                                <div class="discription">Type:<%=t%></div>
                                <div class="Read-button">
                                    <button><a href="#">Read</a></button>

                                </div>


                            </div>
                        </div>
                        <%}%>
                    </div>

                </div>
            </div>
            <!--<A-Other>--> 

        </section>



        <script>



            document.getElementById("A-Dogs").style.display = "flex";
            document.getElementById("A-Cats").style.display = "none";
            document.getElementById("A-Other").style.display = "none";
            document.getElementById("Dog").addEventListener("click", function () {
                document.getElementById("A-Dogs").style.display = "flex";
                document.getElementById("A-Cats").style.display = "none";
                document.getElementById("A-Other").style.display = "none";
            });
            document.getElementById("Cat").addEventListener("click", function () {
                document.getElementById("A-Dogs").style.display = "none";
                document.getElementById("A-Other").style.display = "none";
                document.getElementById("A-Cats").style.display = "block";
            });
            document.getElementById("Others").addEventListener("click", function () {
                document.getElementById("A-Dogs").style.display = "none";
                document.getElementById("A-Cats").style.display = "none";
                document.getElementById("A-Other").style.display = "block";
            });
        </script>

    </body>
</html>
