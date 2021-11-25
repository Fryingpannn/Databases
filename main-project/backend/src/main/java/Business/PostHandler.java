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
        Person person = mapper.readValue(req.getReader(), Person.class);
        resp.getWriter().println(person.toString());
    }

    public static void postHealthWorker(HttpServletRequest req, HttpServletResponse resp) {

    }

    public static void postHealthFacility(HttpServletRequest req, HttpServletResponse resp) {

    }

    public static void postVaccineType(HttpServletRequest req, HttpServletResponse resp) {

    }
}
