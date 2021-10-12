SELECT 
Person.province,
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
	WHEN 
    (
		SELECT COUNT(InfectionHistory.pid) FROM InfectionHistory 
		WHERE Person.pid=InfectionHistory.pid
	) 
		THEN 'True' 
        ELSE 'False' 
        END AS 'Infected With COVID-19'
FROM Person
LEFT JOIN registeredPerson ON Person.pid=registeredPerson.pid
LEFT JOIN unregisteredPerson ON Person.pid=unregisteredPerson.pid
INNER JOIN VaccineRecord
ON Person.pid=VaccineRecord.pid
WHERE 
	TIMESTAMPDIFF(YEAR, Person.dateOfBirth, CURDATE())
	BETWEEN (SELECT minAge FROM AgeGroup WHERE groupNumber=10) AND (SELECT maxAge FROM AgeGroup WHERE groupNumber=2);