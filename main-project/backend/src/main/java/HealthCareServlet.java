import Data.Database;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(
        urlPatterns = {
                "/"     // get
        }
)
public class HealthCareServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
        try(PrintWriter out = resp.getWriter()) {

            out.println("<h1>LET'S FCKING GOOOOOOOO</h1>");
        }
        catch (IOException e) {

        }

        try {
            Database test = Database.getInstance();
            if (test.isValid()) {
                System.out.println("CONNECTED WITH DB========================================================================");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

}
