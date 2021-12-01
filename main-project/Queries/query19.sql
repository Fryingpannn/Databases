SELECT * FROM 
(select DISTINCT VaccinationFacility.name, VaccinationFacility.facilityID, 
VaccinationFacility.address, VaccinationFacility.typeOf,VaccinationFacility.phoneNumber, 
VaccinationFacility.capacity, count(*) as NumberOfHealthCareWorkersInFacility
from WorksAt, VaccinationFacility 
where WorksAt.facilityID = VaccinationFacility.facilityID and
VaccinationFacility.city = 'Montreal'
group by VaccinationFacility.facilityID) AS numOfWorkersTable
NATURAL JOIN
(select DISTINCT VaccinationFacility.name, VaccinationFacility.facilityID,
VaccinationFacility.address, VaccinationFacility.typeOf,VaccinationFacility.phoneNumber, 
VaccinationFacility.capacity, count(*) as NumberOfDosesAdministeredAtFacility
from VaccineRecord, VaccinationFacility
where VaccineRecord.location = VaccinationFacility.name
and VaccinationFacility.city = 'Montreal'
group by VaccinationFacility.facilityID
order by NumberOfDosesAdministeredAtFacility asc) AS numOfDosesTable
NATURAL JOIN
(select DISTINCT VaccinationFacility.name, 
VaccinationFacility.address, VaccinationFacility.typeOf,VaccinationFacility.phoneNumber, 
VaccinationFacility.capacity, count(*) as NumberOfAppointments
from BookingSlots, VaccinationFacility 
where BookingSlots.facilityID = VaccinationFacility.facilityID and
VaccinationFacility.city = 'Montreal'
group by VaccinationFacility.facilityID) AS numOfAppointmentsTable
ORDER BY NumberOfDosesAdministeredAtFacility;