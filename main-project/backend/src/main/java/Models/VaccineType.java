package Models;

public class VaccineType {
    private String vaccineType;
    private String status;
    private String dateOfApproval;
    private String dateOfSuspension;

    public VaccineType() {}

    public VaccineType(String vaccineType) {
        this.vaccineType = vaccineType;
    }

    public VaccineType(String vaccineType, String status, String dateOfApproval, String dateOfSuspension) {
        this.vaccineType = vaccineType;
        this.status = status;
        this.dateOfApproval = dateOfApproval;
        this.dateOfSuspension = dateOfSuspension;
    }

    public String getVaccineType() {
        return vaccineType;
    }

    public void setVaccineType(String vaccineType) {
        this.vaccineType = vaccineType;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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
