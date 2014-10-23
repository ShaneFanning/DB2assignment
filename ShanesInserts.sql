--Criticality
INSERT INTO Criticality(CriticalityLevel, PartName, Test_No.) VALUES ("High", "Brakes", 002);
INSERT INTO Criticality(CriticalityLevel, PartName, Test_No.) VALUES ("Medium", "Engine", 003);
INSERT INTO Criticality(CriticalityLevel, PartName, Test_No.) VALUES ("High", "Chasis", 003);
INSERT INTO Criticality(CriticalityLevel, PartName, Test_No.) VALUES ("Low", "Interior", 004);
INSERT INTO Criticality(CriticalityLevel, PartName, Test_No.) VALUES ("Medium", "Brakes", 005);

--Test Part
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Brakes', 1, 'Working perfectly!', 'Baby Goose', 001);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Engine', 1, 'Working perfectly!', 'Jackie Chan', 001);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Chasis', 1, 'Working perfectly!', 'Ivan Ivanson', 001);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Brakes', 0, 'Rear Brakes are faulty and need replacement', 'Baby Goose', 002);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Engine', 1, 'Working perfectly!', 'Jackie Chan', 002);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Chasis', 1, 'Working perfectly!', 'Ivan Ivanson', 002);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Brakes', 1, 'Working perfectly!', 'Baby Goose', 003);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Engine', 0, 'Engine consistently misfiring', 'Jackie Chan', 003);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Chasis', 0, 'Left side of Chasis is bent!', 'Ivan Ivanson', 003);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Brakes', 1, 'Working perfectly!', 'Bertie Ahern', 004);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Engine', 1, 'Working perfectly!', 'Mark Wahlberg', 004);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Chasis', 1, 'Working perfectly!', 'Bruce Billson', 004);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Interior', 0, 'Seats need of replacement!', 'Jimmy Cricket', 004);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Brakes', 0, 'Brake pads slightly worn', 'Bertie Ahern', 005);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Engine', 1, 'Working perfectly!', 'Mark Wahlberg', 005);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Chasis', 1, 'Working perfectly!', 'Bruce Billson', 005);
INSERT INTO TestPart(PartName, TestPartPassed, PartComment, MechanincName, TestNo) VALUES('Interior', 1, 'Lovely Interior!', 'Jimmy Cricket', 005);