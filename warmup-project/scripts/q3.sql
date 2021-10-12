SELECT VaccinationFacility.facilityID, VaccinationFacility.name, VaccinationFacility.address,phoneNumber, 
VaccinationFacility.type, VaccinationFacility.capacity, 
VaccinationFacility.webAddress
FROM VaccinationFacility
WHERE VaccinationFacility.province = "Quebec"