INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('12-D-12345', 'BMW', TO_DATE('2012-10-11', 'YYYY-MM-DD'), 100);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('06-D-51234', 'Mercedes', TO_DATE('2012-08-12', 'YYYY-MM-DD'), 101);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('07-W-45123', 'BMW', TO_DATE('2012-09-12', 'YYYY-MM-DD'), 102);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('08-KE-34512', 'Mercedes', TO_DATE('2008-08-12', 'YYYY-MM-DD'), 103);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('90-D-23451', 'Porsche', TO_DATE('1990-03-10', 'YYYY-MM-DD'), 104);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('05-D-23456', 'BMW', TO_DATE('2005-04-11', 'YYYY-MM-DD'), 105);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('09-C-62345', 'Ferrari', TO_DATE('2009-10-05', 'YYYY-MM-DD'), 106);

INSERT INTO CarRecord(Registration, Date_of_Last_Test, No._of_Fails, Is_Destroyed) VALUES('12-D-12345', TO_DATE('2013-03-01', 'YYYY-MM-DD'), 0, FALSE);
INSERT INTO CarRecord(Registration, Date_of_Last_Test, No._of_Fails, Is_Destroyed) VALUES('06-D-51234', TO_DATE('2010-06-09', 'YYYY-MM-DD'), 1, FALSE);
INSERT INTO CarRecord(Registration, Date_of_Last_Test, No._of_Fails, Is_Destroyed) VALUES('07-W-45123', TO_DATE('2008-02-05', 'YYYY-MM-DD'), 0, FALSE);
INSERT INTO CarRecord(Registration, Date_of_Last_Test, No._of_Fails, Is_Destroyed) VALUES('08-KE-34512', TO_DATE('2009-10-04', 'YYYY-MM-DD'), 0, FALSE);
INSERT INTO CarRecord(Registration, Date_of_Last_Test, No._of_Fails, Is_Destroyed) VALUES('90-D-23451', TO_DATE('2014-02-02', 'YYYY-MM-DD'), 2, FALSE);
INSERT INTO CarRecord(Registration, Date_of_Last_Test, No._of_Fails, Is_Destroyed) VALUES('05-D-23456', TO_DATE('2010-01-01', 'YYYY-MM-DD'), 1, FALSE);
INSERT INTO CarRecord(Registration, Date_of_Last_Test, No._of_Fails, Is_Destroyed) VALUES('09-C-62345', TO_DATE('2011-02-09', 'YYYY-MM-DD'), 3, TRUE);

INSERT INTO Supervisor(SupervisorName, SupervisorID) VALUES('Kurt Russell', 100);
INSERT INTO Supervisor(SupervisorName, SupervisorID) VALUES('Nigel Delaney', 101);

INSERT INTO TestCentre(CentreName, Reigion, SupervisorID) VALUES('Rathgar Centre', 'Dublin South', 100);
INSERT INTO TestCentre(CentreName, Reigion, SupervisorID) VALUES('Swords Centre', 'Dublin North', 101);

INSERT INTO ClericalOfficer(ClerkName, CentreName) VALUES('Brendan Powers', 'Rathgar Centre');
INSERT INTO ClericalOfficer(ClerkName, CentreName) VALUES('Jimmy Crocket', 'Rathgar Centre');
INSERT INTO ClericalOfficer(ClerkName, CentreName) VALUES('Pepe Hennesey', 'Swords Centre');
INSERT INTO ClericalOfficer(ClerkName, CentreName) VALUES('Mike Hunt', 'Swords Centre');

INSERT INTO Letters(Registration, Date, ClerkName, Name, Address, OwnerID) VALUES('06-D-51234', TO_DATE('2010-05-09', 'YYYY-MM-DD'), , , ,)
INSERT INTO Letters(Registration, Date, ClerkName, Name, Address, OwnerID) VALUES(, TO_DATE('2010-05-09', 'YYYY-MM-DD'), , , ,)
INSERT INTO Letters(Registration, Date, ClerkName, Name, Address, OwnerID) VALUES(, TO_DATE('2010-05-09', 'YYYY-MM-DD'), , , ,)
INSERT INTO Letters(Registration, Date, ClerkName, Name, Address, OwnerID) VALUES(, TO_DATE('2010-05-09', 'YYYY-MM-DD'), , , ,)