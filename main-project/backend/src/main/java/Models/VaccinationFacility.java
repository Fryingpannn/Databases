package Models;

public class VaccinationFacility {
    // facilityID generated from DB
    private String facilityID;
    private String postalCode;
    private String name;
    private String typeOf;
    private String category;
    private String capacity;
    private String phoneNumber;
    private String phoneNUmber;
    private String address;
    private String webAddress;

    public VaccinationFacility() {}

    public VaccinationFacility(String postalCode, String name, String typeOf, String category, String capacity, String phoneNumber, String phoneNUmber, String address, String webAddress) {
        this.postalCode = postalCode;
        this.name = name;
        this.typeOf = typeOf;
        this.category = category;
        this.capacity = capacity;
        this.phoneNumber = phoneNumber;
        this.phoneNUmber = phoneNUmber;
        this.address = address;
        this.webAddress = webAddress;
    }

    public String getFacilityID() {
        return facilityID;
    }

    public void setFacilityID(String facilityID) {
        this.facilityID = facilityID;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTypeOf() {
        return typeOf;
    }

    public void setTypeOf(String typeOf) {
        this.typeOf = typeOf;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPhoneNUmber() {
        return phoneNUmber;
    }

    public void setPhoneNUmber(String phoneNUmber) {
        this.phoneNUmber = phoneNUmber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getWebAddress() {
        return webAddress;
    }

    public void setWebAddress(String webAddress) {
        this.webAddress = webAddress;
    }
}
