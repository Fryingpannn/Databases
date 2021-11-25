package Models;

public class BookingSlot {
    private String pid;
    private String facilityID;
    private String typeOfAppointment;
    private String dayOfAppointment;
    private String timeOfAppointment;
    private String doseNumber;

    public BookingSlot() {}

    public BookingSlot(String pid, String facilityID, String typeOfAppointment, String dayOfAppointment, String doseNumber, String timeOfAppointment){
        this.pid = pid;
        this.facilityID = facilityID;
        this.typeOfAppointment = typeOfAppointment;
        this.dayOfAppointment = dayOfAppointment;
        this.timeOfAppointment = timeOfAppointment;
        this.doseNumber = doseNumber;
    }

    public String getPid() { return pid; }

    public void setPid(String pid) { this.pid = pid; }

    public String getFacilityID() { return facilityID; }

    public void setFacilityID(String facilityID) { this.facilityID = facilityID; }

    public String getTypeOfAppointment() { return typeOfAppointment; }

    public void setTypeOfAppointment(String typeOfAppointment) { this.typeOfAppointment = typeOfAppointment; }

    public String getDayOfAppointment() { return dayOfAppointment; }

    public void setDayOfAppointment(String dayOfAppointment) { this.dayOfAppointment = dayOfAppointment; }

    public String getTimeOfAppointment() { return timeOfAppointment; }

    public void setTimeOfAppointment(String timeOfAppointment) { this.timeOfAppointment = timeOfAppointment; }

    public String getDoseNumber() { return doseNumber; }

    public void setDoseNumber(String doseNumber) { this.doseNumber = doseNumber; }
}
