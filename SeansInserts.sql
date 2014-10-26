--Car Test Database Insert Statments


--Owner Inserts

INSERT INTO Owner (OwnerID, OwnerName, Address) VALUES (100, 'Mark Flanagan', '123 Fake Street');
INSERT INTO Owner (OwnerID, OwnerName, Address) VALUES (101, 'Sean Boomington', '108 Johnstown Avenue');
INSERT INTO Owner (OwnerID, OwnerName, Address) VALUES (102, 'Shane Fanning', '102 Lad Lane');
INSERT INTO Owner (OwnerID, OwnerName, Address) VALUES (103, 'Ron Swanson', '56 Unknown Road');
INSERT INTO Owner (OwnerID, OwnerName, Address) VALUES (104, 'Leslie Knope', '10 Birdwalk Park');
INSERT INTO Owner (OwnerID, OwnerName, Address) VALUES (105, 'Tom Dwan', '37 Cypress Hill');
INSERT INTO Owner (OwnerID, OwnerName, Address) VALUES (106, 'Antonio Esfandiari', '40 Green Street');

--Car inserts

INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('12-D-12345', 'BMW', TO_DATE('2012-10-11', 'YYYY-MM-DD'), 100);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('06-D-51234', 'Mercedes', TO_DATE('2006-08-12', 'YYYY-MM-DD'), 101);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('07-W-45123', 'BMW', TO_DATE('2007-09-12', 'YYYY-MM-DD'), 102);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('08-KE-34512', 'Mercedes', TO_DATE('2008-08-12', 'YYYY-MM-DD'), 103);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('90-D-23451', 'Porsche', TO_DATE('1990-03-10', 'YYYY-MM-DD'), 104);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('05-D-23456', 'BMW', TO_DATE('2005-04-11', 'YYYY-MM-DD'), 105);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('09-C-62345', 'Ferrari', TO_DATE('2009-10-05', 'YYYY-MM-DD'), 106);

--CarRecord Inserts

INSERT INTO CarRecord(Registration, DateLastTest, NumOfFails, IsDestroyed) VALUES('12-D-12345', TO_DATE('2013-03-01', 'YYYY-MM-DD'), 0, 0);
INSERT INTO CarRecord(Registration, DateLastTest, NumOfFails, IsDestroyed) VALUES('06-D-51234', TO_DATE('2009-06-09', 'YYYY-MM-DD'), 1, 0);
INSERT INTO CarRecord(Registration, DateLastTest, NumOfFails, IsDestroyed) VALUES('07-W-45123', TO_DATE('2008-02-05', 'YYYY-MM-DD'), 0, 0);
INSERT INTO CarRecord(Registration, DateLastTest, NumOfFails, IsDestroyed) VALUES('08-KE-34512', TO_DATE('2009-10-04', 'YYYY-MM-DD'), 0, 0);
INSERT INTO CarRecord(Registration, DateLastTest, NumOfFails, IsDestroyed) VALUES('90-D-23451', TO_DATE('2014-02-02', 'YYYY-MM-DD'), 2, 0);
INSERT INTO CarRecord(Registration, DateLastTest, NumOfFails, IsDestroyed) VALUES('05-D-23456', TO_DATE('2010-01-01', 'YYYY-MM-DD'), 1, 0);
INSERT INTO CarRecord(Registration, DateLastTest, NumOfFails, IsDestroyed) VALUES('09-C-62345', TO_DATE('2011-02-09', 'YYYY-MM-DD'), 3, 1);

--Supervisor inserts

INSERT INTO Supervisor(SupervisorName, SupervisorID) VALUES('Kurt Russell', 100);
INSERT INTO Supervisor(SupervisorName, SupervisorID) VALUES('Nigel Delaney', 101);

--Test Centre inserts

INSERT INTO TestCentre(CentreName, Region, SupervisorID) VALUES('Rathgar Centre', 'Dublin South', 100);
INSERT INTO TestCentre(CentreName, Region, SupervisorID) VALUES('Swords Centre', 'Dublin North', 101);

--Clerical officer

INSERT INTO ClericalOfficer(ClerkName, CentreName) VALUES('Brendan Powers', 'Rathgar Centre');
INSERT INTO ClericalOfficer(ClerkName, CentreName) VALUES('Jimmy Crocket', 'Rathgar Centre');
INSERT INTO ClericalOfficer(ClerkName, CentreName) VALUES('Pepe Hennesey', 'Swords Centre');
INSERT INTO ClericalOfficer(ClerkName, CentreName) VALUES('Mike Hunt', 'Swords Centre');

--Letter inserts

INSERT INTO Letters(Registration, DateSent, ClerkName, OwnerName, Address, OwnerID) VALUES('06-D-51234', TO_DATE('2009-05-09', 'YYYY-MM-DD'), 'Pepe Hennesey', 'Sean Boomington', '108 Johnstown Avenue',101);
INSERT INTO Letters(Registration, DateSent, ClerkName, OwnerName, Address, OwnerID) VALUES('12-D-12345', TO_DATE('2013-02-01', 'YYYY-MM-DD'), 'Jimmy Crocket', 'Mark Flanagan', '123 Fake Street', 100);
INSERT INTO Letters(Registration, DateSent, ClerkName, OwnerName, Address, OwnerID) VALUES('07-W-45123', TO_DATE('2008-01-05', 'YYYY-MM-DD'), 'Brendan Powers', 'Shane Fanning', '102 Lad Lane', 102);
INSERT INTO Letters(Registration, DateSent, ClerkName, OwnerName, Address, OwnerID) VALUES('08-KE-34512', TO_DATE('2009-09-04', 'YYYY-MM-DD'), 'Mike Hunt', 'Leslie Knope', '10 Birdwalk Park', 104);

--Mechanic inserts

INSERT INTO Mechanic(MechanicName, Speciality, MechAvailability, CentreName) VALUES('Mark Wahlberg', 'Engines', 1, 'Swords Centre');
INSERT INTO Mechanic(MechanicName, Speciality, MechAvailability, CentreName) VALUES('Jackie Chan', 'Engines', 1, 'Rathgar Centre');
INSERT INTO Mechanic(MechanicName, Speciality, MechAvailability, CentreName) VALUES('Baby Goose', 'Brakes', 1, 'Rathgar Centre');
INSERT INTO Mechanic(MechanicName, Speciality, MechAvailability, CentreName) VALUES('Bertie Ahern', 'Brakes', 0, 'Swords Centre');
INSERT INTO Mechanic(MechanicName, Speciality, MechAvailability, CentreName) VALUES('Bruce Billson', 'Chasis', 1, 'Swords Centre');
INSERT INTO Mechanic(MechanicName, Speciality, MechAvailability, CentreName) VALUES('Ivan Ivanson', 'Chasis', 0, 'Rathgar Centre');
INSERT INTO Mechanic(MechanicName, Speciality, MechAvailability, CentreName) VALUES('Jiminy Cricket', 'Interior', 1, 'Swords Centre');

--Test inserts

INSERT INTO Test(Registration, TestNo, TestDate, CentreName) VALUES('07-W-45123', 001, TO_DATE('2012-05-09', 'YYYY-MM-DD'), 'Rathgar Centre');
INSERT INTO Test(Registration, TestNo, TestDate, CentreName) VALUES('08-KE-34512', 002, TO_DATE('2008-08-12', 'YYYY-MM-DD'), 'Swords Centre');
INSERT INTO Test(Registration, TestNo, TestDate, CentreName) VALUES('05-D-23456', 003, TO_DATE('2010-01-01', 'YYYY-MM-DD'), 'Rathgar Centre');
INSERT INTO Test(Registration, TestNo, TestDate, CentreName) VALUES('09-C-62345', 004, TO_DATE('2009-10-05', 'YYYY-MM-DD'), 'Swords Centre');
INSERT INTO Test(Registration, TestNo, TestDate, CentreName) VALUES('90-D-23451', 005, TO_DATE('1990-03-10', 'YYYY-MM-DD'), 'Swords Centre');
INSERT INTO Test(Registration, TestNo, TestDate, CentreName) VALUES('12-D-12345', 006, TO_DATE('2012-10-11', 'YYYY-MM-DD'), 'Rathgar Centre');
INSERT INTO Test(Registration, TestNo, TestDate, CentreName) VALUES('06-D-51234', 007, TO_DATE('2012-08-12', 'YYYY-MM-DD'), 'Swords Centre');

--Test Part
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Brakes', 1, 'Brakes were in perfect working order', 'Baby Goose', 001 );
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Engine', 1, 'Working perfectly!', 'Jackie Chan', 001);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Chasis', 1, 'Working perfectly!', 'Ivan Ivanson', 001);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Engine', 1, 'Working perfectly!', 'Jackie Chan', 002);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Chasis', 1, 'Working perfectly!', 'Ivan Ivanson', 002);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Brakes', 1, 'Working perfectly!', 'Baby Goose', 003);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Engine', 0, 'Engine consistently misfiring', 'Jackie Chan', 003);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Chasis', 0, 'Left side of Chasis is bent!', 'Ivan Ivanson', 003);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Brakes', 1, 'Working perfectly!', 'Bertie Ahern', 004);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Engine', 1, 'Working perfectly!', 'Mark Wahlberg', 004);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Chasis', 1, 'Working perfectly!', 'Bruce Billson', 004);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Interior', 0, 'Seats need of replacement!', 'Jiminy Cricket', 004);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Brakes', 0, 'Brake pads slightly worn', 'Bertie Ahern', 005);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Engine', 1, 'Working perfectly!', 'Mark Wahlberg', 005);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Chasis', 1, 'Working perfectly!', 'Bruce Billson', 005);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanicName, TestNo) VALUES('Interior', 1, 'Lovely Interior!', 'Jiminy Cricket', 005);


--Criticality
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Brakes', 001);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Engine', 001);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('Medium', 'Chasis', 001);

INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Engine', 002);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('Medium', 'Chasis', 002);

INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Brakes', 003);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Engine', 003);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('Medium', 'Chasis', 003);

INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Brakes', 004);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Engine', 004);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('Medium', 'Chasis', 004);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('Low', 'Interior', 004);

INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Brakes', 005);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('High', 'Engine', 005);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('Medium', 'Chasis', 005);
INSERT INTO Criticality(CriticalityLevel, PartName, TestNo) VALUES ('Low', 'Interior', 005);

