<%--
  Created by IntelliJ IDEA.
  model.User: james
  Date: 7/11/19
  Time: 6:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link href="resources/css/index.css" rel="stylesheet" />
    <title>Lab 10</title>
  </head>
  <body>
  <div class="s01">
    <p>${param.get("error")}</p>
    <form action="login" method="post">
      <fieldset>
        <legend>Login</legend>
      </fieldset>
      <div class="inner-form">
        <div class="input-field first-wrap">
          <input id="username"  name="username" type="text" placeholder="UserName"  value="${cookie.username.value}" pattern="^[a-zA-Z]{,20}"/>
        </div>
        <div class="input-field second-wrap">
          <input id="password" name="password" type="password" placeholder="Password" />
        </div>
        <div class="input-field third-wrap">
          <input type="submit" value="login">
        </div>
      </div>
      <input name="remember" type="checkbox"
              <c:if test="${cookie.username != null}" >
                checked
              </c:if>
      /><br>
    </form>
  </div>
  </body>
</html>
