USE zmc353_2;
SELECT WorksAt.eID, Person.firstName, Person.lastName, Person.email, WorksAt.wage
FROM PublicHealthWorker, Person, WorksAt, VaccinationFacility, Shifts
WHERE PublicHealthWorker.occupation = "Nurse" AND PublicHealthWorker.pid = Person.pid 
	AND Person.pid = WorksAt.pid AND WorksAt.facilityID = VaccinationFacility.facilityID 
    AND WorksAt.SINNumber = PublicHealthWorker.SINNumber AND PublicHealthWorker.pid = Shifts.pid 
    AND VaccinationFacility.facilityID = Shifts.facilityID AND PublicHealthWorker.SINNumber = Shifts.SINNumber
    AND WorksAt.pid = Shifts.pid AND Shifts.SINNumber = WorksAt.SINNumber
    AND dayOfTheWeek NOT LIKE "%2%" AND VaccinationFacility.facilityID = "1"
ORDER BY WorksAt.wage ASC;