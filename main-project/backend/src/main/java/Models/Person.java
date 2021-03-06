package Models;

import java.io.Serializable;
import java.util.ArrayList;

/*
    Person class which is the parent of other user types.
 */
public class Person implements Serializable {
    private String pid;
    private String postalCode;

    private String firstName;
    private String middleInitial;
    private String lastName;
    private String dateOfBirth;
    private String phoneNumber;
    private String address;
    private String citizenship;
    private String email;

    private String city;
    private String province;

    private ArrayList<InfectionHistory> infectionHistory = new ArrayList<InfectionHistory>();

    public Person() {}

    public Person(String postalCode, String firstName, String middleInitial, String lastName, String dateOfBirth, String phoneNumber, String address, String citizenship) {
        this.postalCode = postalCode;
        this.firstName = firstName;
        this.middleInitial = middleInitial;
        this.lastName = lastName;
        this.dateOfBirth = dateOfBirth;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.citizenship = citizenship;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleInitial() {
        return middleInitial;
    }

    public void setMiddleInitial(String middleInitial) {
        this.middleInitial = middleInitial;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCitizenship() {
        return citizenship;
    }

    public void setCitizenship(String citizenship) {
        this.citizenship = citizenship;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public ArrayList<InfectionHistory> getInfectionHistory() {
        return infectionHistory;
    }

    public void setInfectionHistory(ArrayList<InfectionHistory> infectionHistory) {
        this.infectionHistory = infectionHistory;
    }
    @Override
    public String toString() {
        return "Person{" +
                "pid='" + pid + '\'' +
                ", postalCode='" + postalCode + '\'' +
                ", firstName='" + firstName + '\'' +
                ", middleInitial='" + middleInitial + '\'' +
                ", lastName='" + lastName + '\'' +
                ", dateOfBirth='" + dateOfBirth + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", address='" + address + '\'' +
                ", citizenship='" + citizenship + '\'' +
                ", email='" + email + '\'' +
                ", city='" + city + '\'' +
                ", province='" + province + '\'' +
                '}';
    }
}
