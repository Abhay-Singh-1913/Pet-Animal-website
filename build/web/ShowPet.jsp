<%-- 
    Document   : ShowPet
    Created on : 26 Mar, 2023, 1:46:03 PM
    Author     : harish shaikh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
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
                    <div class="ShowPet-list">
                        <a href="index.jsp"><li>Home</li></a>
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
        <%
            Connection con = ConnectionProvider.getConnection();
            String h = request.getParameter("Adata");
            PreparedStatement ps = con.prepareStatement("select * from donate where mobile=?");
            ps.setString(1, h);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String an = rs.getString("animalname");
                String at = rs.getString("animaltype");
                String ac = rs.getString("animalcolor");
                String ah = rs.getString("animalhybrit");
                String ai = rs.getString("animalimage");
                String aw = rs.getString("animalweight");
                String ag = rs.getString("animalage");
                String ap = rs.getString("animalprice");
                String ab = rs.getString("animalabout");
                String n = rs.getString("name");
                String m = rs.getString("mobile");
                String a = rs.getString("address");


        %>
        <div class="ShowPet-section">
            <div class="ShowPet-section1">
                <div class="ShowPet-sectionleft">
                    <div class="pet-detail1">
                        <h1>Pet Detail</h1> 
                        <div class="pet-detail2">
                            <span> Name : <%=an%></span><br>
                            <span> Color :<%=ac%></span><br>
                            <span> Weight :<%=aw%></span><br>
                            <span> Age :<%=ag%></span><br>
                            <span> Hybrid :<%=ah%></span><br>
                            <span> Address :<%=a%></span><br>

                        </div>
                    </div>
                    <div class="pet-detail1">
                        <h1>About Pet</h1>
                        <div class="pet-detail2">
                            <span> <%=ab%></span>

                        </div>
                    </div>
                    <div class="Doner-detail">
                        <div class="Doner-detail1" id="Doner-detail1">
                            <h2>Doner Detail</h2>
                        </div>
                        <div class="Doner-detail2" id="Doner-detail2">
                            <span>Name:<%=n%></span><br>
                            <span>Mobile:<%=m%></span><br>
                            <span>Address:<%=a%></span><br>
                        </div> 
                    </div>    
                </div>
                <div class="ShowPet-sectionright">
                    <div class="pet_img">
                        <img src="img/<%=ai%>">
                    </div>
                    <div class="btn-adop">
                        <%if (lD != null) {%>
                        <a id="adop_detail" href="#"> Adopt Me</a>

                        <%} else {%>
                        <a onclick="Adoption_page()" href="#"> Adopt Me</a>
                        <%}%>

                        <a href="#"><div><span style="font-size: 2rem; font-weight: 1.5rem;">&#8377;<%=ap%></span></div></a>
                    </div>
                </div>
            </div>
        </div>





        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script>
                            $(document).ready(() => {
                                $("#Doner-detail2").hide();
                                $("#adop_detail").click(() => {
                                    $("#Doner-detail2").show();

                                });


                                $("#adop_detail").click(function () {

                                    let bi = new FormData();
                                    bi.append("animalname", "<%=an%>");
                                    bi.append("animaltype", "<%=at%>");
                                    bi.append("animalimage", "<%=ai%>");
                                    bi.append("animalprice", "<%=ap%>");
                                    bi.append("animalage", "<%=ag%>");
                                    bi.append("animalhybrit", "<%=ah%>"); 
                                    bi.append("Dname", "<%=n%>");
                                    bi.append("Dmobile","<%=m%>");
                                    bi.append("Daddress","<%=a%>")
                                    bi.append("Aname", "<%=lD.getFullName()%>");
                                    bi.append("Aemail", "<%=lD.getEmailId()%>");
                                    bi.append("Amobile", "<%=lD.getMobile()%>");
                                    bi.append("Aaddress", "<%=lD.getFullAddress()%>");
                                    bi.append("Aimage", "<%=lD.getImage()%>");
                                   

                                    $.ajax({
                                        url: 'Notificaton',
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
                            
                           function Adoption_page(){
                           alert("please login first")
                           }


        </script>
        <%}%>
    </body>
</html>
