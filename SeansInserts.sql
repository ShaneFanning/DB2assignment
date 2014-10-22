INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('12-D-12345', 'BMW', DATE(2012-10-11), 100);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('06-D-51234', 'Mercedes', DATE(2012-08-12), 101);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('07-W-45123', 'BMW', DATE(2012-09-12), 102);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('08-KE-34512', 'Mercedes', DATE(2008-08-12), 103);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('90-D-23451', 'Porsche', DATE(1990-03-10), 104);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('05-D-23456', 'BMW', DATE(2005-04-11), 105);
INSERT INTO Car(Registration, Make, Year_of_Manufacture, OwnerID) VALUES('09-C-62345', 'Ferrari', DATE(2009-10-05), 106);

INSERT INTO CarRecord(Registration, Date_of_Last_Test, No._of_Fails, Is_Destroyed) VALUES('12-D-12345', DATE(2013-03-01), 0, FALSE);
INSERT INTO CarRecord(Registration, Date_of_Last_Test, No._of_Fails, Is_Destroyed) VALUES('06-D-51234', DATE(2010-06-09), 1, FALSE);
INSERT INTO CarRecord(Registration, Date_of_Last_Test, No._of_Fails, Is_Destroyed) VALUES('07-W-45123', DATE(2008-02-05), 0, FALSE);
INSERT INTO CarRecord(Registration, Date_of_Last_Test, No._of_Fails, Is_Destroyed) VALUES('08-KE-34512', DATE(2009-10-04), 0, FALSE);
INSERT INTO CarRecord(Registration, Date_of_Last_Test, No._of_Fails, Is_Destroyed) VALUES('90-D-23451', DATE(2014-02-02), 2, FALSE);
INSERT INTO CarRecord(Registration, Date_of_Last_Test, No._of_Fails, Is_Destroyed) VALUES('05-D-23456', DATE(2010-01-01), 1, FALSE);
INSERT INTO CarRecord(Registration, Date_of_Last_Test, No._of_Fails, Is_Destroyed) VALUES('09-C-62345', DATE(2011-02-09), 3, TRUE);

INSERT INTO Letters(Registration, Test_No., TestPassed, Coment, TestDate, CentreName) VALUES( , 