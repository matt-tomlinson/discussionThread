import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String loggedIn = "";
                
                if (username.equals("Matt") && password.equals("secret")) {
                    request.getSession().setAttribute("username", username);
                    request.getSession().setAttribute("loggedIn", username + " is logged in.");
                    request.getRequestDispatcher("/newPost.jsp").forward(request, response);
                }
                else {
                    request.setAttribute("error", "Unknown user, please try again");
                    request.getRequestDispatcher("/login.jsp").forward(request, response);
                }
            }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}