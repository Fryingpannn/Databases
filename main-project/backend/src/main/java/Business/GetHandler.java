package Business;

import Data.Database;
import Exceptions.IncorrectParameterException;
import Models.*;
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
            addHeaders(resp);
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
            addHeaders(resp);
        }
    }

    public static void getHealthWorker(HttpServletRequest req, HttpServletResponse resp) throws IncorrectParameterException, SQLException, ClassNotFoundException, IOException {
        String pid = req.getParameter("pid");
        if (pid == null) {
            throw new IncorrectParameterException("Missing \"pid\" parameter.");
        }
        PublicHealthWorker publicHealthWorker = Database.getInstance().getPublicHealthWorker(pid);

        resp.getWriter().println(new JSONObject(publicHealthWorker));
        resp.setStatus(HttpServletResponse.SC_OK);
        addHeaders(resp);
    }

    public static void getHealthFacility(HttpServletRequest req, HttpServletResponse resp) throws IncorrectParameterException, SQLException, ClassNotFoundException, IOException {
        String facilityID = req.getParameter("facilityID");
        if (facilityID == null) {
            throw new IncorrectParameterException("Missing \"facilityID\" parameter.");
        }
        VaccinationFacility vaccinationFacility = Database.getInstance().getVaccinationFacility(facilityID);

        resp.getWriter().println(new JSONObject(vaccinationFacility));
        resp.setStatus(HttpServletResponse.SC_OK);
        addHeaders(resp);
    }

    public static void getVaccineType(HttpServletRequest req, HttpServletResponse resp) throws IncorrectParameterException, SQLException, ClassNotFoundException, IOException {
        String vaccineType = req.getParameter("vaccineType");
        if (vaccineType == null) {
            throw new IncorrectParameterException("Missing \"vaccineType\" parameter.");
        }
        VaccineType vaccine = Database.getInstance().getVaccineType(vaccineType);

        resp.getWriter().println(new JSONObject(vaccine));
        resp.setStatus(HttpServletResponse.SC_OK);
        addHeaders(resp);
    }

    public static void getAgeGroup(HttpServletRequest req, HttpServletResponse resp) throws IncorrectParameterException, SQLException, ClassNotFoundException, IOException {
        String groupNumber = req.getParameter("groupNumber");
        if (groupNumber == null) {
            throw new IncorrectParameterException("Missing \"groupNumber\" parameter.");
        }
        AgeGroup ageGroup = Database.getInstance().getAgeGroup(groupNumber);

        resp.getWriter().println(new JSONObject(ageGroup));
        resp.setStatus(HttpServletResponse.SC_OK);
        addHeaders(resp);
    }

    public static void getBookingSlot(HttpServletRequest req, HttpServletResponse resp) throws IncorrectParameterException, SQLException, ClassNotFoundException, IOException {
        String pid = req.getParameter("pid");
        String doseNumber = req.getParameter("doseNumber");
        if (pid == null) {
            throw new IncorrectParameterException("Missing \"pid\" parameter.");
        } else if(doseNumber == null){
            throw new IncorrectParameterException("Missing \"doseNumber\" parameter.");
        }
        BookingSlot bookingSlot = Database.getInstance().getBookingSlot(pid, doseNumber);

        resp.getWriter().println(new JSONObject(bookingSlot));
        resp.setStatus(HttpServletResponse.SC_OK);
        addHeaders(resp);
    }

    public static void addHeaders(HttpServletResponse resp) {
        resp.addHeader("Access-Control-Allow-Origin", "*");
        resp.addHeader("Access-Control-Allow-Methods", "*");
        resp.addHeader("Access-Control-Allow-Headers", "*");
    }
}
