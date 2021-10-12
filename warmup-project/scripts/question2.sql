SELECT 
Person.province,
Person.firstName,
Person.lastName, 
Person.dateOfBirth,
Person.email,
Person.phoneNumber,
Person.city,
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
INNER JOIN registeredPerson ON Person.pid=registeredPerson.pid
WHERE 
	TIMESTAMPDIFF(YEAR, Person.dateOfBirth, CURDATE()) >= (SELECT minAge FROM AgeGroup WHERE groupNumber=7) AND
    NOT EXISTS(
		SELECT 1
		FROM VaccineRecord
		WHERE VaccineRecord.pid = Person.pid
	);