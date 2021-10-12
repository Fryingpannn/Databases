USE zmc353_2;
SELECT Person.firstName, Person.lastName
FROM Person, PublicHealthWorker
WHERE Person.pid = PublicHealthWorker.pid AND
	PublicHealthWorker.occupation = "Nurse" AND
    Person.pid NOT IN (SELECT DISTINCT VaccineRecord.pid FROM VaccineRecord);