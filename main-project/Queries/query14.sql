USE zmc353_2;
SELECT facility.name, facility.address, facility.phoneNumber, facility.capacity, OperatingHours.openingTime, OperatingHours.closingTime
FROM VaccinationFacility as facility, OperatingHours
WHERE facility.facilityID = OperatingHours.facilityID AND
	OperatingHours.dayOfTheWeek LIKE "%2%" AND 
	 NOT EXISTS (SELECT * 
				FROM Shifts, PublicHealthWorker 
                WHERE dayOfTheWeek LIKE "%2%" AND
					PublicHealthWorker.occupation = "Nurse" AND
					PublicHealthWorker.pid = Shifts.pid AND
                    Shifts.facilityID = facility.facilityID 
                );