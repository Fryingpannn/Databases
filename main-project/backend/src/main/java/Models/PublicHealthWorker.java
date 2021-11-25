package Models;

public class PublicHealthWorker extends Person {
    private String nurseID;
    private VaccineType vaccineType;
    private String occupation;

    public PublicHealthWorker() {}

    public PublicHealthWorker(String nurseID, VaccineType vaccineType, String occupation) {
        this.nurseID = nurseID;
        this.vaccineType = vaccineType;
        this.occupation = occupation;
    }

    public PublicHealthWorker(String postalCode, String firstName, String middleInitial, String lastName, String dateOfBirth, String phoneNumber, String address, String citizenship, String nurseID, VaccineType vaccineType, String occupation) {
        super(postalCode, firstName, middleInitial, lastName, dateOfBirth, phoneNumber, address, citizenship);
        this.nurseID = nurseID;
        this.vaccineType = vaccineType;
        this.occupation = occupation;
    }

    public PublicHealthWorker(Person person){
        setPid(person.getPid());
        setFirstName(person.getFirstName());
        setMiddleInitial(person.getMiddleInitial());
        setLastName(person.getLastName());
        setDateOfBirth(person.getDateOfBirth());
        setPhoneNumber(person.getPhoneNumber());
        setAddress(person.getAddress());
        setPostalCode(person.getPostalCode());
        setCity(person.getCity());
        setProvince(person.getProvince());
        setCitizenship(person.getCitizenship());
        setEmail(person.getEmail());
    }

    public String getNurseID() {
        return nurseID;
    }

    public void setNurseID(String nurseID) {
        this.nurseID = nurseID;
    }

    public VaccineType getVaccineType() {
        return vaccineType;
    }

    public void setVaccineType(VaccineType vaccineType) {
        this.vaccineType = vaccineType;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }
}
