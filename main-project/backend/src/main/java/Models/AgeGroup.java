package Models;

public class AgeGroup {
    private String groupNumber;
    private String minAge;
    private String maxAge;

    public AgeGroup() {}

    public AgeGroup(String groupNumber, String minAge, String maxAge){
        this.groupNumber = groupNumber;
        this.minAge = minAge;
        this.maxAge = maxAge;
    }

    public String getGroupNumber() { return groupNumber; }

    public void setGroupNumber(String groupNumber) { this.groupNumber = groupNumber; }

    public String getMinAge() { return minAge; }

    public void setMinAge(String minAge) { this.minAge = minAge; }

    public String getMaxAge() { return maxAge; }

    public void setMaxAge(String maxAge) { this.maxAge = maxAge; }
}
