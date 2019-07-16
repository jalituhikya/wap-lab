import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

@WebServlet("/support")
public class SupportServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        ServletContext sc = this.getServletContext();
        String supportEmail = sc.getInitParameter("support-email");
        String supportTicket  = getTicket();

        out.print("Thank you! "+name+
                " for contacting us. We should receive reply from " +
                "us with in 24 hrs in your email address "+ email
                +" . Let us know in our support email " + supportEmail+
                " if you don’t receive reply within 24 hrs. " +
                "Please be sure to attach your reference " + supportTicket+
                " in your email.");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.print("<html>\n" +
                "  <head>\n" +
                "    <title>$Title$</title>\n" +
                "  </head>\n" +
                "  <body>\n" +
                "  <a href=\"/support\">cstech support</a>\n" +
                "\n" +
                "  <form action=\"/support\" method=\"post\">\n" +
                "    Name:<input name=\"name\"><br>\n" +
                "    Email:<input name =\"email\"><br>\n" +
                "    Problem:<input name =\"problem\"><br>\n" +
                "    Problem Description: <textarea> </textarea>\n" +
                "    <input type=\"submit\" value=\"help\"/>\n" +
                "  </form>\n" +
                "  </body>\n" +
                "</html>");

    }

    private String getTicket() {
        String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 18) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        return saltStr;

    }
}
