package Business;

import Data.Database;
import Exceptions.IncorrectParameterException;
import Models.Person;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class PostHandler {
    private static final ObjectMapper mapper = new ObjectMapper();

    public static void postPerson(HttpServletRequest req, HttpServletResponse resp) throws ClassNotFoundException, SQLException, IOException, IncorrectParameterException {
        // map JSON body to a person object and create it in the DB
        Person person = mapper.readValue(req.getReader(), Person.class);
        Database.getInstance().createPerson(person);
        System.out.println("Created Person: " + person);

        // return the newly created object
        resp.getWriter().println(new JSONObject(person));
        resp.setStatus(HttpServletResponse.SC_CREATED);
        addHeaders(resp);
    }

    public static void postHealthWorker(HttpServletRequest req, HttpServletResponse resp) {

    }

    public static void postHealthFacility(HttpServletRequest req, HttpServletResponse resp) {

    }

    public static void postVaccineType(HttpServletRequest req, HttpServletResponse resp) {

    }

    public static void addHeaders(HttpServletResponse resp) {
        resp.addHeader("Access-Control-Allow-Origin", "*");
        resp.addHeader("Access-Control-Allow-Methods", "*");
        resp.addHeader("Access-Control-Allow-Headers", "*");
    }
}
