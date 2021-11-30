select  DISTINCT Person.firstName, Person.lastName, Person.phoneNumber, count(*) as NumberOfVaccinesAdministered
from Person, VaccineRecord
WHERE Person.pid = VaccineRecord.nurseID
GROUP BY VaccineRecord.nurseID
HAVING COUNT(*) > 10
ORDER BY COUNT(*) DESC


