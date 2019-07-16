package controller;

import dao.UserDAO;
import model.User;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private UserDAO userDAO;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       String username =  request.getParameter("username");
       String password = request.getParameter("password");
       String remember = request.getParameter("remember");
       User user = new User(username,password);
       if(userDAO.userExists(username) && userDAO.getUserByUserName(username).equals(user)){
           Cookie cookie = new Cookie("username",username);
           Cookie otherCookie = new Cookie("promo","$100");
           if(remember != null && remember.equals("on")){
               cookie.setMaxAge(60*60*24*30);
           }else{
               cookie.setMaxAge(0);
           }

           response.addCookie(cookie);
           response.addCookie(otherCookie);
           HttpSession session =request.getSession();
           session.setAttribute("user",user);
           response.sendRedirect("welcome");



       } else{
           response.sendRedirect("index.jsp?error=wrong password");


       }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.sendRedirect("index.jsp");
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        userDAO = new UserDAO();


    }
}
