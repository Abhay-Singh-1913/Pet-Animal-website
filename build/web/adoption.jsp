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
        <% Donate D = (Donate) session.getAttribute("Ddata");%>
        <% loginDetail lD = (loginDetail) session.getAttribute("data");%>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="Animal.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adoption</title>
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
                            PreparedStatement ps = con.prepareStatement("select * from donate where animaltype=? and state=? and city=?");
                            ps.setString(1, "dog");
                            ps.setString(2, D.getState());
                            ps.setString(3, D.getCity());
                            ResultSet rs = ps.executeQuery();
                            while (rs.next()) {
                                String an = rs.getString("animalname");
                                String at = rs.getString("animaltype");
                                String ac = rs.getString("animalcolor");
                                String ah = rs.getString("animalhybrit");
                                String ai = rs.getString("animalimage");
                                String ap = rs.getString("animalprice");
                                String m = rs.getString("mobile");

                        %>
                        <div class="adop3" style="margin-left: 5rem;box-shadow: 10px 10px 15px rgba(0,0,0,0.3);">
                            <div class="#">
                                <div> <img style="width: 15rem;height: 10rem;" src="img/<%=ai%>"></div>

                                <div class="bookname"><span ><%=an%></span></div>
                                <div><span style="margin-left: 1rem;margin-top: 1rem;font-size: 2rem; font-weight: 1.5rem;">&#8377;<%=ap%></span></div>
                                <%if (lD != null) {%>
                                <div class="buy-button"><a href="ShowPet.jsp?Adata=<%=m%>">Adop</a></div>
                                <%} else {    %>
                                <div class="buy-button"><a onclick="Adoption_page()" href="#">Adop</a></div>

                                <%}%>
                                <div><span style="text-align: center;font-size: 1rem; font-weight: 1.5rem;"><%=ah%></span></div>
                                <div><span style="text-align: center;font-size: 1rem; font-weight: 1.5rem;"><%=ac%></span></div>

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
                            PreparedStatement ps2 = con.prepareStatement("select * from donate where animaltype=? and state=? and city=?");
                            ps2.setString(1, "cat");
                            ps2.setString(2, D.getState());
                            ps2.setString(3, D.getCity());
                            ResultSet rs2 = ps2.executeQuery();
                            while (rs2.next()) {
                                String an = rs2.getString("animalname");
                                String at = rs2.getString("animaltype");
                                String ac = rs2.getString("animalcolor");
                                String ah = rs2.getString("animalhybrit");
                                String ai = rs2.getString("animalimage");
                                String ap = rs2.getString("animalprice");
                                String m = rs2.getString("mobile");

                        %>

                        <div class="adop3" style="margin-left: 5rem;box-shadow: 10px 10px 15px rgba(0,0,0,0.3);">
                            <div class="#">
                                <div> <img style="width: 15rem;height: 10rem;" src="img/<%=ai%>"></div>

                                <div class="bookname"><span ><%=an%></span></div>
                                <div><span style="margin-left: 1rem;margin-top: 1rem;font-size: 2rem; font-weight: 1.5rem;">&#8377;<%=ap%></span></div>
                                <%if (lD != null) {%>
                                <div class="buy-button"><a href="ShowPet.jsp?Adata=<%=m%>">Adop</a></div>
                                <%} else {    %>
                                <div class="buy-button"><a onclick="Adoption_page()" href="#">Adop</a></div>

                                <%}%>
                                <div><span style="text-align: center;font-size: 1rem; font-weight: 1.5rem;"><%=ah%></span></div>
                                <div><span style="text-align: center;font-size: 1rem; font-weight: 1.5rem;"><%=ac%></span></div>

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
                    <h2>khfdv</h2>
                    <div class="adop-3">
                        <%
                            Connection con3 = ConnectionProvider.getConnection();
                           PreparedStatement ps3 = con.prepareStatement("select * from donate where animaltype=? and state=? and city=?");
                            ps3.setString(1, "other");
                            ps3.setString(2, D.getState());
                            ps3.setString(3, D.getCity());
                            ResultSet rs3 = ps3.executeQuery();
                            while (rs3.next()) {
                                String an = rs3.getString("animalname");
                                String at = rs3.getString("animaltype");
                                String ac = rs3.getString("animalcolor");
                                String ah = rs3.getString("animalhybrit");
                                String ai = rs3.getString("animalimage");
                                String ap = rs3.getString("animalprice");
                                String m = rs3.getString("mobile");


                        %>

                        <div class="adop3" style="margin-left: 5rem;box-shadow: 10px 10px 15px rgba(0,0,0,0.3);">
                            <div class="#">
                                <div> <img style="width: 15rem;height: 10rem;" src="img/<%=ai%>"></div>

                                <div class="bookname"><span ><%=an%></span></div>
                                <div><span style="margin-left: 1rem;margin-top: 1rem;font-size: 2rem; font-weight: 1.5rem;">&#8377;<%=ap%></span></div>
                                <%if (lD != null) {%>
                                <div class="buy-button"><a href="ShowPet.jsp?Adata=<%=m%>">Adop</a></div>
                                <%} else {    %>
                                <div class="buy-button"><a onclick="Adoption_page()" href="#">Adop</a></div>

                                <%}%>
                                <div><span style="text-align: center;font-size: 1rem; font-weight: 1.5rem;"><%=ah%></span></div>
                                <div><span style="text-align: center;font-size: 1rem; font-weight: 1.5rem;"><%=ac%></span></div>

                            </div>
                        </div>
                        <%}%>
                    </div>

                </div>
            </div>
            <!--<A-Other>--> 

        </section>
        <script>

            function Adoption_page() {
                alert("please login first");
            }

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
