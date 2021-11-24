package Models;

public class RegisteredPerson extends Person {
    private String medicareNumber;
    private String medicareDateOfIssue;
    private String medicareDateOfExpiry;

    public String getMedicareNumber() {
        return medicareNumber;
    }

    public void setMedicareNumber(String medicareNumber) {
        this.medicareNumber = medicareNumber;
    }

    public String getMedicareDateOfIssue() {
        return medicareDateOfIssue;
    }

    public void setMedicareDateOfIssue(String medicareDateOfIssue) {
        this.medicareDateOfIssue = medicareDateOfIssue;
    }

    public String getMedicareDateOfExpiry() {
        return medicareDateOfExpiry;
    }

    public void setMedicareDateOfExpiry(String medicareDateOfExpiry) {
        this.medicareDateOfExpiry = medicareDateOfExpiry;
    }

    @Override
    public String toString() {
        return super.toString() + "RegisteredPerson{" +
                "medicareNumber='" + medicareNumber + '\'' +
                ", medicareDateOfIssue='" + medicareDateOfIssue + '\'' +
                ", medicareDateOfExpiry='" + medicareDateOfExpiry + '\'' +
                '}';
    }
}
