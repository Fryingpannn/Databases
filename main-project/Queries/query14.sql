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

|name                                                |address                    |phoneNumber   |capacity|openingTime|closingTime|
|----------------------------------------------------|---------------------------|--------------|--------|-----------|-----------|
|Centre sportif Dollard-St-Laurent                   |707 75e Avenue, LaSalle    |(514) 367-6361|2000    |08:00:00   |21:00:00   |
|MUHC-Montreal General Hospital                      |1650 Cedar Ave             |(514) 934-1934|800     |08:00:00   |21:00:00   |
|Clinique de vaccination Pointe-Saint-Charles        |2115 rue Centre            |514 937-9251  |70      |08:00:00   |21:00:00   |
|Costco MARCHÉ-CENTRAL - Pharmacie Grégoire Arakelian|1015, RUE DU MARCHÉ CENTRAL|(514) 381-1251|100     |08:00:00   |21:00:00   |
|Costco ANJOU - Pharmacie Grégoire Arakelian         |9401 Bd des Sciences       |(514) 493-4814|200     |08:00:00   |21:00:00   |
