<%--
  Created by IntelliJ IDEA.
  model.User: james
  Date: 7/11/19
  Time: 10:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Welcome</title>
    <script type="text/javascript"
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="resources/js/script.js"></script>
</head>
<body>
<h1>Add Product</h1>
<table id="tbl_products">
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${products}" var="product">
            <tr>
                <td><c:out value="${product.id}" /></td>
                <td><c:out value="${product.name}"/> </td>
                <td><c:out value="${product.price}"/> </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<fieldset>
    <div>
        <label for="product_name">Name</label> <input type="text" id="product_name"
                                              placeholder="Name" />
    </div>
    <div>
        <label for="product_price">Price</label> <input type="text" id="product_price"
                                                placeholder="Price" />
    </div>

    <div>
        <input id="btn_add" type="submit" value="Submit" />
    </div>
</fieldset>


<a href="logout">logout</a>

</body>
</html>
