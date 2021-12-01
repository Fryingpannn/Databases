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

|eID |firstName|lastName    |email                   |wage|
|----|---------|------------|------------------------|----|
|1002|Evita    |Juris       |ejurisb@delicious.com   |45.0|
|1003|Elysia   |Lidierth    |elidierthc@parallels.com|45.0|
|1007|August   |Mapplethorpe|amapplethorpe40@gov.uk  |45.2|
|1008|Roby     |Cortnay     |rcortnay44@multiply.com |45.2|
|1009|Talbot   |Bram        |tbram45@si.edu          |45.2|
