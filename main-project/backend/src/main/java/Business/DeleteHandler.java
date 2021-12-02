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
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;

public class DeleteHandler {
    public static void deletePerson(HttpServletRequest req, HttpServletResponse resp) throws ClassNotFoundException, SQLException, IOException, IncorrectParameterException {
        System.out.println("Got to delete Person");
        String pid = req.getParameter("pid");
        if (pid == null) {
            throw new IncorrectParameterException("Missing \"pid\" parameter.");
        }
        Database.getInstance().deletePerson(pid);

        resp.getWriter().println("<h1>Person deleted successfully</h1>");
        resp.setStatus(HttpServletResponse.SC_NO_CONTENT);
        addHeaders(resp);
    }

    public static void addHeaders(HttpServletResponse resp) {
        resp.addHeader("Access-Control-Allow-Origin", "*");
        resp.addHeader("Access-Control-Allow-Methods", "*");
        resp.addHeader("Access-Control-Allow-Headers", "*");
    }
}
