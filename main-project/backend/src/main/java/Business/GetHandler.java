package Business;

import Data.Database;
import Exceptions.IncorrectParameterException;
import Models.Person;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class GetHandler {
    public static void getPerson(HttpServletRequest req, HttpServletResponse resp) throws ClassNotFoundException, SQLException, IOException, IncorrectParameterException {
        // retrieving all people in db (might be a lot)
        if (req.getParameterMap().isEmpty()) {
            ArrayList<Person> people = Database.getInstance().getAllPeople();

            // return people array as JSON
            JSONArray peopleJSON = new JSONArray();
            for (Person person : people) {
                peopleJSON.put(new JSONObject(person));
            }
            resp.getWriter().println(peopleJSON);
            resp.setStatus(HttpServletResponse.SC_OK);
        }
        // filtering a specific pid
        else {
            String pid = req.getParameter("pid");
            if (pid == null) {
                throw new IncorrectParameterException("Missing \"pid\" parameter.");
            }
            Person person = Database.getInstance().getPerson(pid);

            resp.getWriter().println(new JSONObject(person));
            resp.setStatus(HttpServletResponse.SC_OK);
        }
    }

    public static void getHealthWorker(HttpServletRequest req, HttpServletResponse resp) {

    }

    public static void getHealthFacility(HttpServletRequest req, HttpServletResponse resp) {

    }

    public static void getVaccineType(HttpServletRequest req, HttpServletResponse resp) {

    }
}
