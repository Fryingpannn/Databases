

CREATE TABLE Person (
	pid INTEGER,
    firstName VARCHAR(30),
    middleInitial varchar(30),
    lastName VARCHAR(30),
    dateOfBirth DATE,
    phoneNumber CHAR(15),
    address VARCHAR(255),
    postalCode VARCHAR(15),
    city Varchar (100),
    provinceOrState VarChar(50),
    citizenship VARCHAR(20),
    email VARCHAR(255),
    primary key (pid)
);


CREATE TABLE unregisteredPerson (
	pid INTEGER PRIMARY KEY,
	PassportNumber INTEGER NOT NULL,
	FOREIGN KEY (pid) REFERENCES Person(pid)
);


CREATE TABLE registeredPerson(
	pid INTEGER PRIMARY KEY,
	medicareNumber INTEGER NOT NULL,
	medicareDateOfIssue DATE NOT NULL,
	medicareDAteOfExpiry DATE NOT NULL,
	FOREIGN KEY (pid) REFERENCES Person(pid)
);



CREATE TABLE InfectionHistory (
	pid INTEGER,
  	dateOfInfection DATE,
  	typeOfInfection VARCHAR(30),
  	primary key (pid, dateOfInfection),
	FOREIGN KEY (pid) REFERENCES Person(pid)
);


CREATE TABLE AgeGroup (
	groupNumber INTEGER PRIMARY KEY,
	minAge INTEGER,
	maxAge INTEGER
);


create table BelongToGroup(
	pid INTEGER,
	groupNumber INTEGER, 
	Foreign key (pid) references Person(pid),
	Foreign key (groupNumber) references AgeGroup (groupNumber),
	unique (pid, groupNumber)

);


Create Table ProvinceList(
	province Varchar(50),
	primary key (province)
);



Create Table Eligibility(
	groupNumber INTEGER,
	province Varchar(50),
	Foreign key (groupNumber) references AgeGroup (groupNumber),
	Foreign key (province) references VaccineGroup (province),
	unique (province, groupNumber)
);


CREATE TABLE VaccineRecord (
	nurseID INTEGER,
	pid INTEGER,
	location VARCHAR(30),
	country VARCHAR(30),
	vaccineDate DATE,
	doseNumber INTEGER,
	vaccineType VARCHAR(30),
	lotNumber INTEGER,
	PRIMARY KEY (pid, nurseID, VaccineType, vaccineDate),
	FOREIGN KEY (pid) REFERENCES Person(pid),
	FOREIGN KEY (nurseID) REFERENCES PublicHealthWorker(pid),
	Foreign key (VaccineType) References Vaccine (vaccineType)
);


CREATE TABLE Vaccine (
	vaccineType VARCHAR(30) PRIMARY KEY,
	status CHAR(9),
	dateOfApproval DATE,
	dateOfSuspension DATE
);

CREATE TABLE PublicHealthWorker (
	pid INTEGER,
	SINNumber INTEGER,
	occupation varchar(50),
	primary key (pid, SINNumber),
	FOREIGN KEY (pid) REFERENCES registeredPerson (pid)
);


Create table Manages (
	pid Integer, 
	SINNumber Integer,
	facilityID Integer,
	wage Float,
	managerID Integer,
	startDate Date, 
	endDate Date,
	Foreign key (facilityID) references VaccinationFacility (facilityID),
	Foreign key (pid, SINNumber) references PublicHealthWorker (pid, SINNumber),
	Unique (pid, SINNumber, facilityID)
);

Create table WorksAt (
	pid Integer, 
	SINNumber Integer,
	facilityID Integer,
	wage Float,
	eID Integer,
	startDate Date, 
	endDate Date,
	Foreign key (facilityID) references VaccinationFacility (facilityID),
	Foreign key (pid, SINNumber) references PublicHealthWorker (pid, SINNumber),
	Unique (pid, SINNumber, facilityID)
);


CREATE TABLE VaccinationFacility (
	facilityID INTEGER,
	name VARCHAR(80),
	typeOf VARCHAR(80),
	category Varchar(50),
	capacity INTEGER,
	postalCode VARCHAR(15),
	city Varchar(100),
	province VarChar(50),
	phoneNumber varchar(50),
	address VARCHAR(255),
	webAddress VARCHAR(80),
	primary key (facilityID)
);

Create table OperatingHours(
	facilityID Integer, 
	dayOfTheWeek Integer, 
	openingTime Integer, 
	closingTime Integer,
	primary key (facilityID),
	Foreign key (facilityID) references VaccinationFacility (facilityID)
);


Create table BookingSlots(
	pID Integer, 
	facilityID Integer, 
	typeOfAppointment Integer,
	DayOfAppointment Date,
	timeOfAppointment Time,
	DoseNumber Integer,
	primary key (pID, facilityID, DoseNumber),
	foreign key (facilityID) references VaccinationFacility (facilityID)
);

Create table Shifts(
	pid Integer, 
	facilityID Integer,
	SINNumber Integer,
	eID Integer,
	managerID Integer,
	dayOfTheWeek Integer,
	startHour Time,
	endHour Time,
	primary key (facilityID, pid, SINNumber, dayOfTheWeek),
	Foreign key (pid, SINNumber) references PublicHealthWorker (pid, SINNumber),
	Foreign key (facilityID) references VaccinationFacility (facilityID)
);