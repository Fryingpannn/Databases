SELECT Person.province,
Person.firstName,
Person.lastName, 
Person.dateOfBirth,
Person.email,
Person.phoneNumber,
Person.city,
CASE 
	WHEN COUNT(Person.pid) 
	THEN CASE 
		WHEN COUNT(InfectionHistory.pid) THEN 'True' ELSE 'False' END
END AS 'Infected With COVID-19'
FROM (Person, InfectionHistory, VaccineRecord)
INNER JOIN registeredPerson ON Person.pid=registeredPerson.pid
WHERE 
	TIMESTAMPDIFF(YEAR, Person.dateOfBirth, CURDATE()) >= (SELECT minAge FROM AgeGroup WHERE groupNumber=7) AND
    VaccineRecord.pid=NULL;