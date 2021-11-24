package Models;

public class UnregisteredPerson extends Person {
    private String passportNumber;

    public String getPassportNumber() {
        return passportNumber;
    }

    public void setPassportNumber(String passportNumber) {
        this.passportNumber = passportNumber;
    }

    @Override
    public String toString() {
        return super.toString() + "UnregisteredPerson{" +
                "passportNumber='" + passportNumber + '\'' +
                '}';
    }
}
