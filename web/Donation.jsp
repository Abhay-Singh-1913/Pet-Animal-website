<%-- 
    Document   : rescu-form
    Created on : 30 Jun, 2022, 9:14:04 PM
    Author     : harish shaikh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="Animal.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add-Animals</title>
    </head>
    <body style="background-color: rgba(0,0,0,0.1)">
        <div class="Donate-pet">
            <div class="donate-pet1">
                <form method="post" action="DonatePet" enctype="multipart/form-data">
                    <div class="Donate-pet2">
                        <div class="Donate-pet3">
                            <h1 style="color: white ;margin-left: 2rem;"> Donate Pet</h1>
                            <div class="animal-detail1">
                                <div class="animals">
                                    <span>Name</span>
                                    <input type="text" placeholder="Enter your Name" name="name"><br><br>


                                </div>
                                <div class="animals">
                                    <span>Address</span>
                                    <input type="text" placeholder="Enter your address" name="address"><br><br>


                                </div>
                                <div class="animals">
                                    <span>Mobile</span>
                                    <input type="text" placeholder="Enter your mobile" name="mobile">

                                </div>
                                <div class="animals">
                                    <span>State</span>
                                    <input type="text" placeholder="Enter your Name" name="state"><br><br>


                                </div>
                                <div class="animals">
                                    <span>City</span>
                                    <input type="text" placeholder="Enter your address" name="city"><br><br>


                                </div>
                            </div>
                            <div  class="Animal-Type">

                                <span style="text-align: center;"> Animal Type</span><br><br>
                                <select name="animaltype">
                                    <option value="Cat">Cat</option>
                                    <option value="Dog">Dog</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                            <div class="animal-detail">
                                <div class="animals">
                                    <span>Animal name</span>
                                    <input type="text" placeholder="Enter your Animal name" name="animalname"><br><br>
                                    <span>Animal colour</span>
                                    <input type="text" placeholder="Enter your Animal color" name="animalcolor"><br><br>
                                    <span>Animal Price</span>
                                    <input type="text" placeholder="Enter your Animal Price" name="animalprice"><br><br>


                                </div>
                                <div class="animals">
                                    <span>Animal Weight</span>
                                    <input type="text" placeholder="Enter your Animal age" name="animalweight"><br><br>
                                    <span>Animal Age</span>
                                    <input type="text" placeholder="Enter your Animal age" name="animalage"><br><br>
                                    <span>Animal-Image</span>
                                    <input type="file" name="animalimage"><br><br>


                                </div>
                                <div class="animals">
                                    <span>Animal Hybrit</span>
                                    <input type="text" placeholder="Enter your Animal Hibrit" name="animalhybrit"><br><br>

                                    <span>About Animal</span>
                                    <textarea type="text" name="animalabout"></textarea>
                                </div>

                            </div>
                            <div class="do-buton">
                                <button type="submit">Submit</button>

                            </div>
                        </div>




                    </div>






                </form>
            </div>
        </div>
    </body>
</html>
