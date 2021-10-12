SELECT Person.province,
Person.firstName,
Person.lastName, 
Person.dateOfBirth,
registeredPerson.medicareNumber,
unregisteredPerson.PassportNumber,
Person.email,
Person.phoneNumber, 
Person.city,
VaccineRecord.vaccineDate,
VaccineRecord.vaccineType,
CASE
	WHEN COUNT(Person.pid) 
	THEN CASE 
		WHEN COUNT(InfectionHistory.pid) THEN 'True' ELSE 'False' END
END AS 'Infected With COVID-19'
FROM (Person, AgeGroup, registeredPerson, unregisteredPerson, InfectionHistory)
INNER JOIN VaccineRecord
ON Person.pid=VaccineRecord.pid
WHERE 
	TIMESTAMPDIFF(YEAR, Person.dateOfBirth, CURDATE())
	BETWEEN (SELECT minAge FROM AgeGroup WHERE groupNumber=10) AND (SELECT maxAge FROM AgeGroup WHERE groupNumber=2);