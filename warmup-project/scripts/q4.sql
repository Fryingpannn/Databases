SELECT VaccineRecord.location, Person.firstName, Person.lastName, Person.dateOfBirth,
Person.phoneNumber, Person.address, Person.city, Person.province,
Person.postalCode, Person.citizenship, Person.email
FROM Person, VaccinationFacility, unregisteredPerson, VaccineRecord
WHERE Person.pid = unregisteredPerson.pid AND
Person.pid = VaccineRecord.pid AND 
(VaccineRecord.location = "Twinder Gym" OR
VaccineRecord.location = "Geba Services" OR VaccineRecord.location = "Jabbercube Medical Center")
