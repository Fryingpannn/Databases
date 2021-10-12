USE zmc353_2;
SELECT Person.pid, Person.firstName, Person.lastName, Person.dateOfBirth, 
	(SELECT MAX(VaccineRecord.doseNumber) FROM VaccineRecord WHERE VaccineRecord.pid = Person.pid) AS numOfDoses,
    (SELECT COUNT(InfectionHistory.pid) FROM InfectionHistory WHERE InfectionHistory.pid = Person.pid) AS numOfDiagnostics
FROM Person, VaccineRecord
WHERE (Person.pid NOT IN (SELECT VaccineRecord.pid FROM VaccineRecord)) OR
	(Person.pid = VaccineRecord.pid AND
		((SELECT MAX(VaccineRecord.doseNumber) FROM VaccineRecord WHERE VaccineRecord.pid = Person.pid)) = 1) OR
    (Person.pid = VaccineRecord.pid AND
		((SELECT MAX(VaccineRecord.doseNumber) FROM VaccineRecord WHERE VaccineRecord.pid = Person.pid)) = 2 AND
		((SELECT COUNT(InfectionHistory.pid) FROM InfectionHistory WHERE InfectionHistory.pid = Person.pid)) = 1)
GROUP BY Person.pid;		