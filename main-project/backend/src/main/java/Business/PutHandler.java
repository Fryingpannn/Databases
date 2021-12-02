package Business;

import Data.Database;
import Exceptions.IncorrectParameterException;
import Models.Person;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class PutHandler {
    private static ObjectMapper mapper = new ObjectMapper();

    public static void updatePerson(HttpServletRequest req, HttpServletResponse resp) throws ClassNotFoundException, SQLException, IOException, IncorrectParameterException {
        // map JSON body to a person object and create it in the DB

        Person person = mapper.readValue(req.getReader(), Person.class);
        Database.getInstance().updatePerson(person);
        System.out.println("Updated Person: " + person);

        // return the newly updated object
        resp.getWriter().println("<h1>Person updated successfully</h1>");
        resp.getWriter().println(new JSONObject(person));
        resp.setStatus(HttpServletResponse.SC_OK);
        addHeaders(resp);
    }

    public static void addHeaders(HttpServletResponse resp) {
        resp.addHeader("Access-Control-Allow-Origin", "*");
        resp.addHeader("Access-Control-Allow-Methods", "*");
        resp.addHeader("Access-Control-Allow-Headers", "*");
    }
}
