package Business;

import Data.Database;
import Models.Person;
import org.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class GetHandler {
    public static void getPerson(HttpServletRequest req, HttpServletResponse resp) throws ClassNotFoundException, SQLException, IOException {
        Person person = Database.getInstance().getPerson(req.getParameter("pid"));

        JSONObject toReturn = new JSONObject(person);
        // TODO: change this to return toReturn instead. This is just for test. Need database connection fixed.
        resp.getWriter().println(toReturn);
    }

    public static void getHealthWorker(HttpServletRequest req, HttpServletResponse resp) {

    }

    public static void getHealthFacility(HttpServletRequest req, HttpServletResponse resp) {

    }

    public static void getVaccineType(HttpServletRequest req, HttpServletResponse resp) {

    }
}
