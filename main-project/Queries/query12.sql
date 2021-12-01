USE zmc353_2;
SELECT VaccinationFacility.name, BookingSlots.DayOfAppointment, BookingSlots.timeOfAppointment
FROM VaccinationFacility, BookingSlots
WHERE VaccinationFacility.facilityID = "1" AND BookingSlots.facilityID = VaccinationFacility.facilityID
	AND isnull(BookingSlots.pid) AND BookingSlots.DayOfAppointment >= "2021-01-12" LIMIT 1;
	
	|name                             |DayOfAppointment|timeOfAppointment|
|---------------------------------|----------------|-----------------|
|Centre sportif Dollard-St-Laurent|2021-03-15      |14:00:00         |
