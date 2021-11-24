package Models;

public class VaccineType {
    private String value;
    private String dateOfApproval;
    private String dateOfSuspension;

    public VaccineType(String value) {
        this.value = value;
    }

    public VaccineType(String value, String dateOfApproval, String dateOfSuspension) {
        this.value = value;
        this.dateOfApproval = dateOfApproval;
        this.dateOfSuspension = dateOfSuspension;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getDateOfApproval() {
        return dateOfApproval;
    }

    public void setDateOfApproval(String dateOfApproval) {
        this.dateOfApproval = dateOfApproval;
    }

    public String getDateOfSuspension() {
        return dateOfSuspension;
    }

    public void setDateOfSuspension(String dateOfSuspension) {
        this.dateOfSuspension = dateOfSuspension;
    }
}
