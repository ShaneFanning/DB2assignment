
DROP TABLE CarRecord CASCADE CONSTRAINTS PURGE;

DROP TABLE Letters CASCADE CONSTRAINTS PURGE;

DROP TABLE ClericalOfficer CASCADE CONSTRAINTS PURGE;

DROP TABLE Criticality CASCADE CONSTRAINTS PURGE;

DROP TABLE TestPart CASCADE CONSTRAINTS PURGE;

DROP TABLE Mechanic CASCADE CONSTRAINTS PURGE;

DROP TABLE Test CASCADE CONSTRAINTS PURGE;

DROP TABLE TestCentre CASCADE CONSTRAINTS PURGE;

DROP TABLE Supervisor CASCADE CONSTRAINTS PURGE;

DROP TABLE Car CASCADE CONSTRAINTS PURGE;

DROP TABLE Owner CASCADE CONSTRAINTS PURGE;

CREATE TABLE Car
(
	Registration         VARCHAR2(20) NOT NULL ,
	Make                 VARCHAR2(20) NULL ,
	Year_of_Manufacture  DATE NULL ,
	OwnerID              VARCHAR2(20) NOT NULL 
);

ALTER TABLE Car
	ADD CONSTRAINT  XPKCar PRIMARY KEY (Registration);

CREATE TABLE CarRecord
(
	Registration         VARCHAR2(20) NOT NULL ,
	Date_of_Last_Test    DATE NULL ,
	No._of_Fails         INTEGER NULL ,
	Is_Destroyed         SMALLINT NULL 
);

ALTER TABLE CarRecord
	ADD CONSTRAINT  XPKCarRecord PRIMARY KEY (Registration);

CREATE TABLE ClericalOfficer
(
	ClerkName            VARCHAR2(20) NOT NULL ,
	CentreName           VARCHAR2(20) NOT NULL 
);

ALTER TABLE ClericalOfficer
	ADD CONSTRAINT  XPKClericalOfficer PRIMARY KEY (ClerkName);

CREATE TABLE Mechanic
(
	MechanicName         VARCHAR2(20) NOT NULL ,
	Speciality           VARCHAR2(20) NULL ,
	Availability         SMALLINT NULL ,
	CentreName           VARCHAR2(20) NOT NULL 
);

ALTER TABLE Mechanic
	ADD CONSTRAINT  XPKMechanic PRIMARY KEY (MechanicName);

CREATE TABLE Owner
(
	Name                 VARCHAR2(20) NULL ,
	Address              VARCHAR2(40) NULL ,
	OwnerID              VARCHAR2(20) NOT NULL 
);

ALTER TABLE Owner
	ADD CONSTRAINT  XPKOwner PRIMARY KEY (OwnerID);

CREATE TABLE Letters
(
	Registration         VARCHAR2(20) NOT NULL ,
	Date                 DATE NOT NULL ,
	ClerkName            VARCHAR2(20) NOT NULL ,
	Name                 VARCHAR2(20) NULL ,
	Address              VARCHAR2(40) NULL ,
	OwnerID              VARCHAR2(20) NOT NULL 
);

ALTER TABLE Letters
	ADD CONSTRAINT  XPKLetters PRIMARY KEY (Registration,Date);

CREATE TABLE Supervisor
(
	SuperVisorName       CHAR(18) NOT NULL ,
	SuperVisorID         INTEGER NOT NULL 
);

ALTER TABLE Supervisor
	ADD CONSTRAINT  XPKSupervisor PRIMARY KEY (SuperVisorID);

CREATE TABLE Test
(
	Registration         VARCHAR2(20) NOT NULL ,
	Test_No.             INTEGER NOT NULL ,
	TestPassed           SMALLINT NULL ,
	Coment               VARCHAR2(150) NULL ,
	TestDate             DATE NULL ,
	CentreName           VARCHAR2(20) NOT NULL 
);

ALTER TABLE Test
	ADD CONSTRAINT  XPKTest PRIMARY KEY (Test_No.);

CREATE TABLE TestCentre
(
	CentreName           VARCHAR2(20) NOT NULL ,
	Region               VARCHAR2(20) NULL ,
	SuperVisorID         INTEGER NOT NULL 
);

ALTER TABLE TestCentre
	ADD CONSTRAINT  XPKTestCentre PRIMARY KEY (CentreName);

CREATE TABLE TestPart
(
	PartName             VARCHAR2(20) NOT NULL ,
	TestPartPassed       SMALLINT NULL ,
	PartComent           CHAR(18) NULL ,
	MechanicName         VARCHAR2(20) NULL ,
	Test_No.             INTEGER NOT NULL 
);

ALTER TABLE TestPart
	ADD CONSTRAINT  XPKTestPart PRIMARY KEY (Test_No.,PartName);

CREATE TABLE Criticality
(
	CriticalityLevel     CHAR(10) NOT NULL ,
	PartName             VARCHAR2(20) NOT NULL ,
	Test_No.             INTEGER NOT NULL 
);

ALTER TABLE Criticality
	ADD CONSTRAINT  XPKCriticality PRIMARY KEY (PartName,Test_No.);

ALTER TABLE Car
	ADD (CONSTRAINT R_7 FOREIGN KEY (OwnerID) REFERENCES Owner (OwnerID));

ALTER TABLE CarRecord
	ADD (CONSTRAINT R_1 FOREIGN KEY (Registration) REFERENCES Car (Registration));

ALTER TABLE ClericalOfficer
	ADD (CONSTRAINT R_15 FOREIGN KEY (CentreName) REFERENCES TestCentre (CentreName));

ALTER TABLE Mechanic
	ADD (CONSTRAINT R_13 FOREIGN KEY (CentreName) REFERENCES TestCentre (CentreName));

ALTER TABLE Letters
	ADD (CONSTRAINT R_11 FOREIGN KEY (OwnerID) REFERENCES Owner (OwnerID));

ALTER TABLE Letters
	ADD (CONSTRAINT R_14 FOREIGN KEY (ClerkName) REFERENCES ClericalOfficer (ClerkName));

ALTER TABLE Test
	ADD (CONSTRAINT R_2 FOREIGN KEY (Registration) REFERENCES Car (Registration));

ALTER TABLE Test
	ADD (CONSTRAINT R_12 FOREIGN KEY (CentreName) REFERENCES TestCentre (CentreName));

ALTER TABLE TestCentre
	ADD (CONSTRAINT R_19 FOREIGN KEY (SuperVisorID) REFERENCES Supervisor (SuperVisorID));

ALTER TABLE TestPart
	ADD (CONSTRAINT R_3 FOREIGN KEY (Test_No.) REFERENCES Test (Test_No.));

ALTER TABLE TestPart
	ADD (CONSTRAINT R_4 FOREIGN KEY (MechanicName) REFERENCES Mechanic (MechanicName));

ALTER TABLE Criticality
	ADD (CONSTRAINT R_22 FOREIGN KEY (Test_No., PartName) REFERENCES TestPart (Test_No., PartName));
