-- Q2 Create/Delete/Edit/Display a Public Health Worker.

-- Create a Public Health Worker.

insert into Person (pid, firstName, middleInitial, lastName, dateOfBirth, phoneNumber, address, postalCode, city, provinceOrState, citizenship, email) values 
(138, 'Wallis', 'L', 'Ashman', '1968-02-08', '407-960-3796', '22 Magdeline Park', 'K2C', 'Pierreville', 'Qu�bec', 'Canada', 'washman3t@wix.com');

insert into registeredPerson (pid, medicareNumber, medicareDateOfIssue, medicareDAteOfExpiry) values 
(138, 9878, '2016-02-14', '2029-04-26');


insert into PublicHealthWorker (pid, SINNumber, occupation) values 
(138, 192069739, "Nurse");

-- Delete a Public Health Worker.

delete from table PublicHealthWorker 
where pid = 138 AND occupation = 'Nurse';

-- Edit a Public Health Worker.

UPDATE PublicHealthWorker 
set address = '22 Magdeline Park' WHERE pid = 138;

-- Display a Public Health Worker.

SELECT * FROM PublicHealthWorker phw 
WHERE pid = 138;

-- Q3 Create/Delete/Edit/Display a Public Health Facility

-- Create a Public Health Facility

insert into VaccinationFacility (facilityID, name, typeOf, category, capacity, postalCode, city, province, phoneNumber, address, webAddress) values 
(3, 'Stade Olympique/SAQ','Sports Center','walk-in and appointment',8000,'H1V','Montr�al','Qu�bec','(514) 252-4141', '4545 Avenue Pierre-De Coubertin','parcolympique.qc.ca'),

-- Delete a Public Health Facility

delete from table VaccinationFacility 
where facilityID = 3 AND name ='Stade Olympique/SAQ';


-- Edit a Public Health Facility

UPDATE VaccinationFacility 
set capacity = 7080 WHERE facilityID = 3;

-- Display a Public Health Facility

SELECT * FROM VaccinationFacility vf 
WHERE facilityID = 3;



-- Q4 Create/Delete/Edit/Display a Vaccination Type

-- Create a Vaccination Type

insert into Vaccine (vaccineType, status, dateOfApproval, dateOfSuspension) values
('AstraZeneca', 'SAFE', '2021-02-26', null);

-- Delete a Vaccination Type

delete FROM Vaccine 
WHERE vaccineType = 'AstraZeneca';

-- Edit a Vaccination Type

UPDATE Vaccine 
set dateOfApproval ='2021-02-15' WHERE vaccineType ='AstraZeneca';



-- Display a Vaccination Type

SELECT * FROM Vaccine v 
WHERE vaccineType ='AstraZeneca';


-- Q5 Create/Delete/Edit/Display a Covid-19 infection Variant type

-- Create a Covid-19 infection Variant type

insert into InfectionHistory (pid, dateOfInfection , typeOfInfection ) values 
(201, '2021-11-08', 'Zeta.420');


-- Delete a Covid-19 infection Variant type

delete from InfectionHistory 
WHERE typeOfInfection ='Zeta.420';


-- Edit a Covid-19 infection Variant type

UPDATE InfectionHistory 
set typeOfInfection ='Zeta.460' AND pid =3;


-- Display a Covid-19 infection Variant type

SELECT * FROM InfectionHistory ih 
WHERE typeOfInfection = 'Zeta.420';



