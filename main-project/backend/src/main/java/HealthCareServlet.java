import Business.DeleteHandler;
import Business.GetHandler;
import Business.PostHandler;
import Business.PutHandler;
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
                "/",     // home test
                "/dbtest", // get (test database connectivity)
                "/person", // get, create, update, delete
                "/healthworker", // get, create, update, delete
                "/healthfacility", // get, create, update, delete
                "/vaccinetype", // get, create, update, delete
                "/agegroup", // get, create, update, delete
                "/bookingslot", // get, create, update, delete
        }
)
public class HealthCareServlet extends HttpServlet {

    public String getRequestType(HttpServletRequest req) {
        return req.getServletPath().replace("/", "").strip().trim().toLowerCase();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type = getRequestType(req);
        doOptions(req, resp);
        try {
            switch (type) {
                case "/":
                    defaultHome(resp, false);
                case "person":
                    GetHandler.getPerson(req, resp);
                    break;
                case "healthworker":
                    GetHandler.getHealthWorker(req, resp);
                    break;
                case "healthfacility":
                    GetHandler.getHealthFacility(req, resp);
                    break;
                case "vaccinetype":
                    GetHandler.getVaccineType(req, resp);
                    break;
                case "agegroup":
                    GetHandler.getAgeGroup(req, resp);
                    break;
                case "bookingslot":
                    GetHandler.getBookingSlot(req, resp);
                    break;
                case "dbtest":
                    validateDB(resp);
                    break;
                default:
                    defaultHome(resp, true);
            }
        }
        catch (Exception e) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, e.getMessage());
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type = getRequestType(req);
        doOptions(req, resp);
        try {
            switch (type) {
                case "/":
                    defaultHome(resp, false);
                case "person":
                    PostHandler.postPerson(req, resp);
                    break;
                case "healthworker":
                    PostHandler.postHealthWorker(req, resp);
                    break;
                case "healthfacility":
                    PostHandler.postHealthFacility(req, resp);
                    break;
                case "vaccinetype":
                    PostHandler.postVaccineType(req, resp);
                    break;
                default:
                    defaultHome(resp, true);
            }
        }
        catch (Exception e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, e.getMessage());
            e.printStackTrace();
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type = getRequestType(req);
        doOptions(req, resp);
        try {
            switch (type) {
                case "person":
                    PutHandler.updatePerson(req, resp);
                default:
                    defaultHome(resp, true);
            }
        }
        catch (Exception e) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, e.getMessage());
            e.printStackTrace();
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type = getRequestType(req);
        doOptions(req, resp);
        try {
            switch (type) {
                case "person":
                    DeleteHandler.deletePerson(req, resp);
                default:
                    defaultHome(resp, true);
            }
        }
        catch (Exception e) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, e.getMessage());
            e.printStackTrace();
        }
    }

    @Override
    protected void doOptions(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        response.addHeader("Access-Control-Allow-Origin", "*");
        response.addHeader("Access-Control-Allow-Methods", "*");
        response.addHeader("Access-Control-Allow-Headers", "*");
    }

    private void defaultHome(HttpServletResponse resp, Boolean defaultPage) {
        try(PrintWriter out = resp.getWriter()) {
            if (defaultPage) {
                System.out.println("================== Backend connected ==================");
                out.println("<h1>LET'S GOOOOOO!!!!!!</h1>");
            }
            else {
                out.println("<h1>Wrong endpoint.</h1>");
            }
        }
        catch (IOException e) {
            resp.setStatus(500);
        }
    }

    private void validateDB(HttpServletResponse resp) throws IOException {
        try {
            Database test = Database.getInstance();
            if (test.isValid()) {
                System.out.println("CONNECTED WITH DB========================================");
                resp.getWriter().println("<h1>Database connected</h1>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            System.out.println("ERROR CONNECTING TO DATABASE ===============================");
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
            resp.sendError(500, e.getMessage());
        }
    }

}
