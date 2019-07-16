<%--
  Created by IntelliJ IDEA.
  User: james
  Date: 7/11/19
  Time: 6:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <link href="resources/mycss.css" type="text/css" rel="stylesheet">
    <title>Lab 10</title>
  </head>
  <body>
  <h1>Login</h1>
  <form action="login" method="post">
    Username: <input name="username" value="${cookie.username.value}"
                     type="text" pattern="^[a-zA-Z]{,20}"/> <br>
    Password: <input name="password" type="password" /> <br>
    Remember: <input name="remember" type="checkbox"
   <c:if test="${cookie.username != null}" >
     checked
   </c:if>
  /><br>
    <input type="submit" value="login">
  </form>
  <p>${param.get("error")}</p>
<%--  <p style="color:red;"><%= request.getParameter("error")%></p>--%>
  </body>
</html>
