<%--
  Created by IntelliJ IDEA.
  model.User: james
  Date: 7/11/19
  Time: 6:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<title>Shop</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/mycss.css">
<link rel="stylesheet" href="resources/css/modal.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<script type="text/javascript"
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/script.js"></script>

<style>
    body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
    .lab12-bar-block .lab12-bar-item {padding:20px}
</style>
<body>

<nav class="lab12-sidebar lab12-bar-block lab12-card lab12-top lab12-xlarge lab12-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidebar">
    <a href="javascript:void(0)" onclick="lab12_close()" class="lab12-bar-item lab12-button">Close Cart</a>
    <table id="tbl_products">
      <%--  <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
        </tr>
        </thead>--%>
        <tbody>
        <c:forEach items="${products}" var="product">
            <tr>
                <td><c:out value="${product.id}" /></td>
                <td><c:out value="${product.name}"/> </td>
                <td><c:out value="${product.price}"/> </td>
            </tr>
        </c:forEach>
        <br>
        </tbody>
    </table>
    <button id="checkout">Checkout</button>
</nav>

<!-- Top menu -->
<div class="lab12-top">
    <div class="lab12-white lab12-xlarge" style="max-width:1200px;margin:auto">
        <div class="lab12-button lab12-padding-16 lab12-left" onclick="lab12_open()">My Cart</div>
        <div class="lab12-right lab12-padding-16">Mail</div>
        <div class="lab12-center lab12-padding-16">Shop</div>
    </div>
</div>

<!-- !PAGE CONTENT! -->
<div class="lab12-main lab12-content lab12-padding" style="max-width:1200px;margin-top:100px">

    <!-- First Photo Grid-->
    <div class="lab12-row-padding lab12-padding-16 lab12-center" id="food">
        <div class="lab12-quarter">
            <img src="resources/images/sandwich.jpg" alt="Sandwich" style="width:100%">
            <h3>The Perfect Sandwich</h3>
            <button id="sandwich" class="add-to-cart">Add to Cart</button>
        </div>
        <div class="lab12-quarter">
            <img src="resources/images/steak.jpg" alt="Steak" style="width:100%">
            <h3>All you can eat Steak</h3>
            <button id="steak" class="add-to-cart">Add to Cart</button>
        </div>
        <div class="lab12-quarter">
            <img src="resources/images/cherries.jpg" alt="Cherries" style="width:100%">
            <h3>Cherries, interrupted</h3>
            <button id="cherries" class="add-to-cart">Add to Cart</button>
        </div>
        <div class="lab12-quarter">
            <img src="resources/images/wine.jpg" alt="Pasta and Wine" style="width:100%">
            <h3> Vegetable Pasta</h3>
            <button  id="pasta" class="add-to-cart">Add to Cart</button>
        </div>
    </div>

    <!-- Second Photo Grid-->
    <div class="lab12-row-padding lab12-padding-16 lab12-center">
        <div class="lab12-quarter">
            <img src="resources/images/popsicle.jpg" alt="Popsicle" style="width:100%">
            <h3>All I Need Is a Popsicle</h3>
            <button id="popsicle" class="add-to-cart">Add to Cart</button>
        </div>
        <div class="lab12-quarter">
            <img src="resources/images/salmon.jpg" alt="Salmon" style="width:100%">
            <h3>Salmon For Your Skin</h3>
            <button id="salmon" class="add-to-cart">Add to Cart</button>
        </div>
        <div class="lab12-quarter">
            <img src="resources/images/sandwich.jpg" alt="Sandwich" style="width:100%">
            <h3>The Perfect Sandwich</h3>
            <button id="classic" class="add-to-cart">Add to Cart</button>
        </div>
        <div class="lab12-quarter">
            <img src="resources/images/croissant.jpg" alt="Croissant" style="width:100%">
            <h3>Le French</h3>
            <button id="croissant" class="add-to-cart">Add to Cart</button>
        </div>
    </div>






    <!-- End page content -->
</div>

<!-- The Modal -->
<div id="myModal" class="modal">

    <!-- Modal content -->
    <div class="modal-content">
        <div class="modal-header">
            <span class="close">&times;</span>
            <h2>Payment</h2>
        </div>
        <div class="modal-body">
            <form>
                <fieldset id="billingAddress">
                    <legend>Billing Address</legend>

                    <div class="element">
                        <label for="billing-address">Address:</label> <br>
                        <input type="text" id="billing-address" name="billing-address" placeholder="Address" required/>
                    </div>

                    <div class="element">
                        <label for="billing-city">City:</label> <br>
                        <input type="text" id="billing-city" name="billing-city" placeholder="city" required/>
                    </div>

                    <div class="element">
                        <label for="billing-country">Country</label> <br>
                        <select id="billing-country" name="billing-country"  size="8" required>
                            <option value="usa">USA</option>
                            <option value="uk">UK</option>
                            <option value="can">Canada</option>
                            <option value="ger">Germany</option>
                            <option value="swe">Sweden</option>
                            <option value="fr">France</option>
                            <option value="china">China</option>
                            <option value="india">India</option>
                        </select>
                    </div>
                    <div class="element">
                        <label for="billing-zip-code">Zip Code:</label> <br>
                        <input type="number" id="billing-zip-code" name="billing-zip-code"  placeholder="52259" required/>
                    </div>
                </fieldset>
                <fieldset id="deliveryAddress">
                    <legend>Delivery Address</legend>

                    <div class="element">
                        <label for="delivery-address">Address:</label> <br>
                        <input type="text" id="delivery-address" name="delivery-address" placeholder="Address" required/>
                    </div>

                    <div class="element">
                        <label for="delivery-city">City:</label> <br>
                        <input type="text" id="delivery-city" name="delivery-city" placeholder="city" required/>
                    </div>

                    <div class="element">
                        <label for="delivery-country">Country</label> <br>
                        <select id="delivery-country" name="delivery-country" size="8" required>
                            <option value="usa">USA</option>
                            <option value="uk">UK</option>
                            <option value="can">Canada</option>
                            <option value="ger">Germany</option>
                            <option value="swe">Sweden</option>
                            <option value="fr">France</option>
                            <option value="china">China</option>
                            <option value="india">India</option>
                        </select>
                    </div>
                    <div class="element">
                        <label for="delivery-zip-code">Zip Code:</label> <br>
                        <input type="text" id="delivery-zip-code" name="delivery-zip-code" placeholder="52259" required/>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Payment Info</legend>
                    <div class="element">
                        <label for="name-on-card">Name on Card:</label> <br>
                        <input name="name-on-card" id="name-on-card" type="text" placeholder="John Doe"   required/>
                    </div>
                    <div class="element">
                        <label for="card-number" >Card Number:</label> <br>
                        <input name="card-number"  id="card-number"  type="number" placeholder="1217 8812 9223" required/>
                    </div>
                    <div class="element">
                        <label>Expiration Date:</label> <br>
                        <select id="month" name="Month">
                            <option value="1">01</option>
                            <option value="2">02</option>
                            <option value="3">03</option>
                            <option value="4">04</option>
                            <option value="5">05</option>
                            <option value="6">06</option>
                            <option value="7">07</option>
                            <option value="8">08</option>
                            <option value="9">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        <select id="year" name="Year">
                            <option value="20">2020</option>
                            <option value="21">2021</option>
                            <option value="22">2022</option>
                            <option value="23">2023</option>
                            <option value="24">2024</option>
                            <option value="25">2025</option>
                            <option value="26">2026</option>
                            <option value="27">2027</option>

                        </select>
                    </div>
                </fieldset>
                <div id="terms" class="element">
                    <label>I agree to the <a href="">Terms and Agreement</a><input name="agreement" type="checkbox"/></label>
                </div>
                <input value="checkout" type="submit">

            </form>
        </div>
        <div class="modal-footer">
            <%--      <h3></h3>--%>
        </div>
    </div>

</div>
<script>
    // Script to open and close sidebar
    function lab12_open() {
        document.getElementById("mySidebar").style.display = "block";
    }

    function lab12_close() {
        document.getElementById("mySidebar").style.display = "none";
    }
    // Get the modal
    var modal = document.getElementById("myModal");

    // Get the button that opens the modal
    var btn = document.getElementById("checkout");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal
    btn.onclick = function() {
        lab12_close();
        modal.style.display = "block";

    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
</body>
</html>
