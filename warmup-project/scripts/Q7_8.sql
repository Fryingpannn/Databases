
-- Q7

SELECT  VaccineRecord.vaccineType , Vaccine.dateOfApproval, Vaccine.status, count(VaccineRecord.vaccineType)
FROM Vaccine, VaccineRecord, VaccinationFacility
where Vaccine.`type` = VaccineRecord.vaccineType AND
		VaccinationFacility.name = VaccineRecord.location AND
		VaccinationFacility.province = "Quebec"
group by VaccineRecord.vaccineType ;

-- Q8

Select Person.pid, Person.firstName , Person.lastName , Count(VaccineRecord.nurseID)
from Person, PublicHealthWorker, VaccineRecord, VaccinationFacility
where PublicHealthWorker.occupation = "Nurse" AND
		VaccinationFacility.name = "Twinder Gym" AND
		VaccineRecord.nurseID = Person.pid AND 
		VaccineRecord.location = VaccinationFacility.name AND
		PublicHealthWorker.pid = Person.pid 
GROUP BY VaccineRecord.nurseID ;

SELECT * FROM VaccineRecord vr ;
Select * from VaccinationFacility vf ;
