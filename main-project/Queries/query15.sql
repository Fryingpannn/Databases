USE zmc353_2;
SELECT Person.firstName, Person.lastName, PublicHealthWorker.occupation, Shifts.dayOfTheWeek, Shifts.startHour, Shifts.endHour,
CASE WHEN 1=1 THEN "N/A" END AS dayOfAppointment,
CASE WHEN 1=1 THEN "N/A" END AS timeOfAppointment
FROM Person, PublicHealthWorker, Shifts, BookingSlots
WHERE Person.pid = PublicHealthWorker.pid AND Shifts.pid = PublicHealthWorker.pid AND Shifts.facilityID = 1
UNION 
SELECT p.firstName, p.lastName,
CASE WHEN bslots.pid = p.pid THEN "N/A" END AS occupation,
CASE WHEN bslots.pid = p.pid THEN "N/A" END AS dayOfTheWeek,
CASE WHEN bslots.pid = p.pid THEN "N/A" END AS startHour,
CASE WHEN bslots.pid = p.pid THEN "N/A" END AS endHour,
dayOfAppointment,
timeOfAppointment
FROM Person as p, PublicHealthWorker AS w, Shifts AS s, BookingSlots AS bslots
WHERE p.pid = w.pid AND s.pid = w.pid AND s.facilityID = 1 AND bslots.pid = p.pid