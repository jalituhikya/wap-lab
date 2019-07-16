import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private Map<String,User> users = new HashMap<>();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       String username =  request.getParameter("username");
       String password = request.getParameter("password");
       String remember = request.getParameter("remember");
       User user = new User(username,password);
       if(users.containsKey(username) && users.get(username).equals(user)){
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
           response.sendRedirect("welcome.jsp");



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
        users.put("james",new User("james","mypassword"));
        users.put("john",new User("john","letmein"));
        users.put("peter",new User("peter","123456"));





    }
}
