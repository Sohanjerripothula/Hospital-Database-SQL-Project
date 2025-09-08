INSERT INTO Patient (PID, fname, mname, lname, DateOfBirth)
VALUES
(1, 'John', 'Alexander', 'Smith', '1985-02-14'),
(2, 'Emily', 'Grace', 'Johnson', '1990-08-22'),
(3, 'Michael', 'Andrew', 'Williams', '1982-11-10'),
(4, 'Sophia', 'Marie', 'Brown', '1995-07-30'),
(5, 'David', 'James', 'Jones', '1978-05-18'),
(6, 'Isabella', 'Rose', 'Garcia', '1992-01-25'),
(7, 'Daniel', 'John', 'Miller', '1988-09-12'),
(8, 'Olivia', 'Ann', 'Davis', '2000-06-05'),
(9, 'Christopher', 'Paul', 'Martinez', '1993-04-15'),
(10, 'Emma', 'Nicole', 'Hernandez', '1998-12-03'),
(11, 'Joshua', 'Ryan', 'Moore', '1987-03-19'),
(12, 'Ava', 'Elizabeth', 'Taylor', '1999-10-07');

INSERT INTO PhoneNumber (PhoneNumberID, PhoneNumber, PID)
VALUES
(1, '555-123-4567', 1),
(2, '555-234-5678', 2),
(3, '555-345-6789', 3),
(4, '555-456-7890', 4),
(5, '555-567-8901', 5),
(6, '555-678-9012', 6),
(7, '555-789-0123', 7),
(8, '555-890-1234', 8),
(9, '555-901-2345', 9),
(10, '555-012-3456', 10),
(11, '555-543-2109', 11),
(12, '555-432-1098', 12);

INSERT INTO PatientInsurance (PID, PolicyID, Provider, fname, mname, lname, GroupNumber)
VALUES
(1, 10101, 'BlueCross BlueShield', 'John', 'Alexander', 'Smith', 1234),
(2, 10102, 'UnitedHealthcare', 'Emily', 'Grace', 'Johnson', 5678),
(3, 10103, 'Aetna', 'Michael', 'Andrew', 'Williams', 9101),
(4, 10104, 'Cigna', 'Sophia', 'Marie', 'Brown', 1122),
(5, 10105, 'Kaiser Permanente', 'David', 'James', 'Jones', 1314),
(6, 10106, 'Humana', 'Isabella', 'Rose', 'Garcia', 1516),
(7, 10107, 'Anthem', 'Daniel', 'John', 'Miller', 1718),
(8, 10108, 'Centene', 'Olivia', 'Ann', 'Davis', 1920),
(9, 10109, 'Molina Healthcare', 'Christopher', 'Paul', 'Martinez', 2021),
(10, 10110, 'Oscar Health', 'Emma', 'Nicole', 'Hernandez', 2233),
(11, 10111, 'Bright Health', 'Joshua', 'Ryan', 'Moore', 2344),
(12, 10112, 'WellCare', 'Ava', 'Elizabeth', 'Taylor', 2455);

INSERT INTO Diagnosis (DiagnosisID, PID, ICD_code, DiagnosisDate)
VALUES
(1, 1, 'J10.1', '2023-06-17'),  
(2, 2, 'E11.9', '2023-09-26'),  
(3, 3, 'I10', '2023-11-18'),  
(4, 4, 'K35.80', '2024-12-04'),  
(5, 5, 'M54.5', '2024-03-23'),  
(6, 6, 'J45.909', '2024-10-30'),  
(7, 7, 'L50.9', '2023-10-28'),  
(8, 8, 'R53.1', '2024-06-07'),  
(9, 9, 'G40.909', '2023-05-27'), 
(10, 10, 'H52.4', '2023-01-03'),  
(11, 11, 'F41.1', '2024-02-14'),  
(12, 12, 'Z71.3', '2023-08-21');  

INSERT INTO Facilities (FacilityID, FacilityName, Location, Type, TimeOpen, TimeClose)
VALUES
(1, 'City Urgent Care', '123 Main St, Springfield', 'Clinic', '08:00', '22:00'),
(2, 'Downtown Health Center', '456 Elm St, Springfield', 'Hospital', '00:00', '24:00'),
(3, 'Suburban Medical Office', '789 Maple Rd, Greenfield', 'Clinic', '09:00', '17:00'),
(4, 'Eastside Wellness Center', '1010 Birch Rd, Lakeside', 'Outpatient Center', '07:30', '19:30'),
(5, 'Westside Specialty Hospital', '2020 Oak Dr, Rivertown', 'Specialty Hospital', '00:00', '24:00'),
(6, 'Northern Medical Center', '3030 Pine St, Hillview', 'General Hospital', '08:00', '20:00'),
(7, 'Southern Health Clinic', '4040 Cedar Ln, Valleyview', 'Clinic', '09:00', '21:00'),
(8, 'Central Diagnostic Center', '5050 Maple Ave, Centerpoint', 'Diagnostic Center', '06:00', '18:00'),
(9, 'Pediatrics Care Center', '6060 Cherry Blvd, Kidstown', 'Pediatric Clinic', '09:00', '17:30'),
(10, 'Heart & Lung Institute', '7070 Chestnut Pkwy, MediCity', 'Cardiology Center', '07:00', '19:00');

INSERT INTO Guardian (GuardianID, fname, mname, lname, Relationship, PhoneNumber)
VALUES
(1, 'Alice', 'Marie', 'Walker', 'Mother', '555-123-4567'),
(2, 'John', 'Michael', 'Doe', 'Father', '555-234-5678'),
(3, 'Emma', 'Sophia', 'Davis', 'Sister', '555-345-6789'),
(4, 'Robert', 'James', 'Johnson', 'Uncle', '555-456-7890'),
(5, 'Patricia', 'Ann', 'Williams', 'Grandmother', '555-567-8901'),
(6, 'James', 'Edward', 'Smith', 'Grandfather', '555-678-9012'),
(7, 'Olivia', 'Jane', 'Taylor', 'Aunt', '555-789-0123'),
(8, 'Daniel', 'Paul', 'Brown', 'Brother', '555-890-1234'),
(9, 'Sophia', 'Rose', 'Garcia', 'Cousin', '555-901-2345'),
(10, 'Isabella', 'Grace', 'Martinez', 'Sister-in-law', '555-012-3456');

INSERT INTO DigitalSignature (DigitalSignatureID, GuardianID, FormType)
VALUES
(1, 1, 'Digital copy'),
(2, 2, 'Hard copy'),
(3, 3, 'Digital copy'),
(4, 4, 'Hard copy'),
(5, 5, 'Digital copy'),
(6, 6, 'Hard copy'),
(7, 7, 'Digital copy'),
(8, 8, 'Hard copy'),
(9, 9, 'Digital copy'),
(10, 10, 'Hard copy');

INSERT INTO Treatment (ICD, DiagnosisID, CPT_code, TreatmentCost, ServiceProviderID, DigitalSignatureID, FacilityID, Approved)
VALUES
('J10.1', 1, '99213', 120.50, 1001, 1, 1, 'True'),  
('E11.9', 2, '99214', 150.75, 1002, 2, 2, 'True'),   
('I10', 3, '99215', 180.00, 1003, 3, 3, 'False'),   
('K35.80', 4, '47562', 2500.00, 1004, 4, 4, 'True'),   
('M54.5', 5, '97110', 80.00, 1005, 5, 5, 'True'),   
('J45.909', 6, '94010', 300.00, 1001, 6, 6, 'True'),   
('L50.9', 7, '95044', 200.00, 1002, 7, 7, 'N/A'),   
('R53.1', 8, '97810', 90.00, 1003, 8, 8, 'True'),   
('G40.909', 9, '95955', 350.00, 1004, 9, 9, 'True'),  
('H52.4', 10, '92015', 50.00, 1005, 10, 10, 'False');  

INSERT INTO DiagnosisTreatment (DiagnosisID, ICD)
VALUES
(1, 'J10.1'),   
(2, 'E11.9'),   
(3, 'I10'),     
(4, 'K35.80'),  
(5, 'M54.5'),   
(6, 'J45.909'), 
(7, 'L50.9'),   
(8, 'R53.1'),   
(9, 'G40.909'), 
(10, 'H52.4');  

INSERT INTO EmergencyContact (ContactID, PID, fname, mname, lname, PhoneNumber, Relationship)
VALUES
(1, 1, 'Alice', 'Marie', 'Smith', '555-321-4567', 'Mother'),
(2, 2, 'Robert', 'James', 'Johnson', '555-234-5678', 'Father'),
(3, 3, 'Emily', 'Anne', 'Williams', '555-345-6789', 'Sister'),
(4, 4, 'John', 'Michael', 'Brown', '555-456-7890', 'Uncle'),
(5, 5, 'Sophia', 'Rose', 'Jones', '555-567-8901', 'Aunt'),
(6, 6, 'David', 'Edward', 'Garcia', '555-678-9012', 'Father'),
(7, 7, 'Olivia', 'Jane', 'Miller', '555-789-0123', 'Mother'),
(8, 8, 'Daniel', 'Paul', 'Davis', '555-890-1234', 'Brother'),
(9, 9, 'Emma', 'Sophia', 'Martinez', '555-901-2345', 'Sister'),
(10, 10, 'Ava', 'Elizabeth', 'Hernandez', '555-012-3456', 'Cousin');

INSERT INTO MinorsGuardian (GuardianID, PID)
VALUES
(1, 8),   
(2, 9),  
(3, 10),  
(4, 7),   
(5, 6);   

INSERT INTO Department (DepartmentID, Name)
VALUES
(1, 'Emergency'),
(2, 'Pharmacy'),
(3, 'Radiology'),
(4, 'Pediatrics'),
(5, 'Cardiology'),
(6, 'Psychiatry'),
(7, 'Neurology'),
(8, 'Orthopedics'),
(9, 'General Medicine'),
(10, 'Gynecology');

INSERT INTO Employee (EmployeeID, fname, mname, lname, DepartmentID, Role, FacilityID, EmploymentType)
VALUES
(1, 'John', 'Alexander', 'Smith', 3, 'Intake Clerk', 1, 'Hourly'),
(2, 'Emily', 'Grace', 'Johnson', 3, 'Intake Clerk', 2, 'Hourly'),
(3, 'Daniel', 'Paul', 'Martinez', 3, 'Intake Clerk', 3, 'Hourly'),
(4, 'Sophia', 'Rose', 'Davis', 3, 'Intake Clerk', 4, 'Hourly'),
(5, 'Michael', 'Andrew', 'Williams', 1, 'Nurse', 1, 'Hourly'),
(6, 'Isabella', 'Marie', 'Garcia', 1, 'Nurse', 2, 'Hourly'),
(7, 'Olivia', 'Ann', 'Taylor', 1, 'Nurse', 3, 'Hourly'),
(8, 'Christopher', 'James', 'Brown', 1, 'Nurse', 4, 'Hourly'),
(9, 'Ava', 'Elizabeth', 'Jones', 1, 'Nurse', 5, 'Hourly'),
(10, 'Joshua', 'Ryan', 'White', 1, 'Nurse', 6, 'Hourly'),
(11, 'David', 'James', 'Hernandez', 9, 'Doctor', 1, 'Salary'),
(12, 'Emma', 'Nicole', 'Wilson', 5, 'Doctor', 2, 'Salary'),
(13, 'Lucas', 'Henry', 'Miller', 6, 'Doctor', 3, 'Salary'),
(14, 'Sophia', 'Marie', 'Lopez', 7, 'Doctor', 4, 'Salary'),
(15, 'Mason', 'John', 'Gonzalez', 8, 'Doctor', 5, 'Salary'),
(16, 'Liam', 'Alexander', 'Clark', 9, 'Physician Assistant', 1, 'Salary'),
(17, 'Aiden', 'Matthew', 'Ramirez', 4, 'Physician Assistant', 2, 'Salary'),
(18, 'Ella', 'Grace', 'Martinez', 7, 'Physician Assistant', 3, 'Salary'),
(19, 'Amelia', 'Rose', 'Evans', 8, 'Physician Assistant', 4, 'Salary'),
(20, 'Benjamin', 'Thomas', 'Roberts', 5, 'Physician Assistant', 5, 'Salary'),
(21, 'Harper', 'Lynn', 'Thompson', 6, 'Nurse Practitioner', 1, 'Salary'),
(22, 'Abigail', 'Marie', 'Taylor', 9, 'Nurse Practitioner', 2, 'Salary'),
(23, 'Evelyn', 'Claire', 'Parker', 7, 'Nurse Practitioner', 3, 'Salary'),
(24, 'Alexander', 'James', 'Collins', 8, 'Nurse Practitioner', 4, 'Salary'),
(25, 'Charlotte', 'Elizabeth', 'Edwards', 1, 'Nurse Practitioner', 5, 'Salary');

INSERT INTO IntakeClerk (EmployeeID, IntakeClerkID)
VALUES
(1, 101),  
(2, 102),  
(3, 103),  
(4, 104);  

INSERT INTO Nurse (EmployeeID, NurseID)
VALUES
(5, 201),  
(6, 202),   
(7, 203),  
(8, 204),   
(9, 205),   
(10, 206);  

INSERT INTO ServiceProvider (EmployeeID, ServiceProviderID, Specialization)
VALUES
(11, 1001, 'Doctor'),              
(12, 1002, 'Doctor'),               
(13, 1003, 'Doctor'),               
(14, 1004, 'Doctor'),               
(15, 1005, 'Doctor'),               
(16, 2001, 'Physician Assistant'),  
(17, 2002, 'Physician Assistant'), 
(18, 2003, 'Physician Assistant'),  
(19, 2004, 'Physician Assistant'),  
(20, 2005, 'Physician Assistant'),  
(21, 3001, 'Nurse Practitioner'),   
(22, 3002, 'Nurse Practitioner'),   
(23, 3003, 'Nurse Practitioner'),   
(24, 3004, 'Nurse Practitioner'),   
(25, 3005, 'Nurse Practitioner');   

INSERT INTO NurseAssistedServiceProvider (NurseID, ServiceProviderID)
VALUES
(201, 1001),
(202, 1002),
(203, 1003),
(204, 2001),
(205, 2002),
(206, 3001),
(201, 1002),
(202, 2001),
(203, 3002),
(204, 3003);

INSERT INTO InitialAssessment (AssessmentID, PID, NurseID, MedicalConditionDescription, Height, Weight, BloodPressure, Temperature)
VALUES
(1, 1, 201, 'Patient reports flu-like symptoms, mild cough, and fever.', '5\'10"', '180', '120/80', 98.6),
(2, 2, 202, 'Patient reports fatigue, and increased thirst.', '5\'5"', '150', '130/85', 99.1),
(3, 3, 203, 'Patient has a persistent headache and elevated blood pressure.', '6\'0"', '200', '145/90', 98.4),
(4, 4, 204, 'Patient complains of severe abdominal pain and nausea.', '5\'7"', '165', '110/70', 98.7),
(5, 5, 205, 'Patient reports lower back pain and stiffness.', '5\'11"', '190', '120/78', 98.3),
(6, 6, 206, 'Patient experiences wheezing and shortness of breath.', '5\'6"', '140', '118/76', 97.8),
(7, 7, 201, 'Patient has widespread hives and mild swelling.', '5\'8"', '175', '122/80', 98.2),
(8, 8, 202, 'Patient complains of weakness and mild dizziness.', '5\'4"', '130', '110/70', 97.9),
(9, 9, 203, 'Patient has occasional seizures and feels fatigued.', '5\'9"', '185', '130/85', 98.5),
(10, 10, 204, 'Patient reports difficulty reading and mild headaches.', '5\'3"', '125', '120/78', 98.1);

INSERT INTO ServiceProviderGaveDiagnosis (ServiceProviderID, DiagnosisID)
VALUES
(1001, 1),  
(1002, 2),  
(1003, 3),  
(1004, 4),  
(1005, 5),  
(2001, 6),  
(2002, 7),  
(3001, 8),  
(3002, 9),  
(3003, 10);  

INSERT INTO PatientSeenByServiceProvider (PID, ServiceProviderID)
VALUES
(1, 1001),  
(2, 1002), 
(3, 1003),  
(4, 1004),  
(5, 1005),  
(6, 2001),  
(7, 2002),  
(8, 3001),  
(9, 3002),  
(10, 3003);  

INSERT INTO VisitRecords (VisitID, VisitDateAndTime, DoctorsNotes, Copay, Services, PID, IntitalAssessmentID, ServiceProviderID, IntakeClerkID)
VALUES
(1, '2024-12-05 09:00:00', 'flu-like symptoms', 20.0, 'Consultation, Prescription', 1, 1, 1001, 101),
(34, '2024-12-05 11:00:00', 'flu symptoms.', 20.0, 'Consultation', 1, 1, 1001, 101),
(2, '2024-12-05 10:15:00', 'diabetes', 30.0, 'Consultation, Blood Test', 2, 2, 1002, 102),
(3, '2024-12-05 11:30:00', 'high blood pressure', 25.0, 'Consultation, BP Check', 3, 3, 1003, 103),
(4, '2024-12-05 13:00:00', 'Severe abdominal pain', 50.0, 'Consultation, Ultrasound', 4, 4, 1004, 104),
(5, '2024-12-06 09:30:00', 'Lower back pain', 15.0, 'Consultation, Physical Therapy', 5, 5, 1005, 101),
(6, '2024-12-06 10:45:00', 'Asthma', 20.0, 'Consultation, Breathing Test', 6, 6, 2001, 102),
(7, '2024-12-06 12:00:00', 'Hives and mild swelling', 15.0, 'Consultation, Allergy Test', 7, 7, 2002, 103),
(8, '2024-12-06 14:00:00', 'General weakness', 10.0, 'Consultation', 8, 8, 3001, 104),
(9, '2024-12-06 15:30:00', 'Seizure management', 30.0, 'Consultation, EEG', 9, 9, 3002, 101),
(10, '2024-12-07 10:00:00', 'Vision issues', 20.0, 'Consultation, Eye Test', 10, 10, 3003, 102);
 
INSERT INTO VisitDiagnosis (DiagnosisID, VisitID, VisitDateAndTime)
VALUES
(1, 34, '2024-12-05 11:00:00');  


INSERT INTO Doctor (EmployeeID, ServiceProviderID)
VALUES
(11, 1001), 
(12, 1002),  
(13, 1003),  
(14, 1004),  
(15, 1005);  

INSERT INTO PhysicianAssistant (EmployeeID, ServiceProviderID)
VALUES
(16, 2001),  
(17, 2002), 
(18, 2003),  
(19, 2004),  
(20, 2005);  

INSERT INTO NursePractitioner (EmployeeID, ServiceProviderID)
VALUES
(21, 3001),  
(22, 3002),  
(23, 3003),  
(24, 3004),  
(25, 3005);  

INSERT INTO DegreeInfo (EmployeeID, Date, City, State, Country, University, DegreeEarned, DegreeType)
VALUES
(11, '2010-05-15', 'New York', 'NY', 'USA', 'Columbia University', 'Doctor of Medicine', 'Professional'),
(12, '2012-06-10', 'Boston', 'MA', 'USA', 'Harvard Medical School', 'Doctor of Medicine', 'Professional'),
(13, '2009-07-22', 'Chicago', 'IL', 'USA', 'University of Chicago', 'Doctor of Medicine', 'Professional'),
(14, '2011-08-15', 'San Francisco', 'CA', 'USA', 'Stanford University', 'Doctor of Medicine', 'Professional'),
(15, '2008-05-20', 'Los Angeles', 'CA', 'USA', 'University of California, Los Angeles', 'Doctor of Medicine', 'Professional'),
(16, '2015-05-18', 'Houston', 'TX', 'USA', 'Baylor College of Medicine', 'Master of Physician Assistant Studies', 'Graduate'),
(17, '2016-06-12', 'Philadelphia', 'PA', 'USA', 'University of Pennsylvania', 'Master of Physician Assistant Studies', 'Graduate'),
(18, '2014-05-25', 'Dallas', 'TX', 'USA', 'University of Texas Southwestern', 'Master of Physician Assistant Studies', 'Graduate'),
(19, '2017-07-30', 'Phoenix', 'AZ', 'USA', 'Arizona State University', 'Master of Physician Assistant Studies', 'Graduate'),
(20, '2018-08-05', 'Atlanta', 'GA', 'USA', 'Emory University', 'Master of Physician Assistant Studies', 'Graduate'),
(21, '2013-05-22', 'Seattle', 'WA', 'USA', 'University of Washington', 'Doctor of Nursing Practice', 'Graduate'),
(22, '2014-06-15', 'Portland', 'OR', 'USA', 'Oregon Health & Science University', 'Doctor of Nursing Practice', 'Graduate'),
(23, '2012-07-10', 'Denver', 'CO', 'USA', 'University of Colorado', 'Doctor of Nursing Practice', 'Graduate'),
(24, '2011-05-18', 'Minneapolis', 'MN', 'USA', 'University of Minnesota', 'Doctor of Nursing Practice', 'Graduate'),
(25, '2016-08-25', 'Detroit', 'MI', 'USA', 'Wayne State University', 'Doctor of Nursing Practice', 'Graduate');

INSERT INTO FacilityDaysOpen (FacilityID, DaysOfWeek)
VALUES
(1, 'Monday'),
(1, 'Tuesday'),
(1, 'Wednesday'),
(1, 'Thursday'),
(1, 'Friday'),
(2, 'Monday'),
(2, 'Tuesday'),
(2, 'Wednesday'),
(2, 'Thursday'),
(2, 'Friday'),
(2, 'Saturday'),
(2, 'Sunday'),
(3, 'Monday'),
(3, 'Tuesday'),
(3, 'Wednesday'),
(3, 'Thursday'),
(3, 'Friday'),
(4, 'Monday'),
(4, 'Tuesday'),
(4, 'Wednesday'),
(4, 'Thursday'),
(4, 'Friday'),
(4, 'Saturday'),
(5, 'Monday'),
(5, 'Tuesday'),
(5, 'Wednesday'),
(5, 'Thursday'),
(5, 'Friday'),
(5, 'Saturday'),
(5, 'Sunday'),
(6, 'Monday'),
(6, 'Tuesday'),
(6, 'Wednesday'),
(6, 'Thursday'),
(6, 'Friday'),
(6, 'Saturday'),
(7, 'Tuesday'),
(7, 'Wednesday'),
(7, 'Thursday'),
(7, 'Friday'),
(7, 'Saturday'),
(8, 'Monday'),
(8, 'Tuesday'),
(8, 'Wednesday'),
(8, 'Thursday'),
(8, 'Friday'),
(9, 'Monday'),
(9, 'Tuesday'),
(9, 'Wednesday'),
(9, 'Thursday'),
(9, 'Friday'),
(10, 'Monday'),
(10, 'Tuesday'),
(10, 'Wednesday'),
(10, 'Thursday'),
(10, 'Friday');

INSERT INTO AdditionalTests (ICD_code, Xray, Approved, DigitalSignatureID, Cost, TestCode, NameOfTest)
VALUES
('J10.1', 'False', 'True', 1, 150.00, 101, 'Flu Virus Panel'),
('E11.9', 'False', 'True', 2, 200.00, 102, 'HbA1c Blood Test'),
('I10', 'True', 'True', 3, 250.00, 103, 'Chest X-ray'),
('K35.80', 'True', 'True', 4, 500.00, 104, 'Abdominal Ultrasound'),
('M54.5', 'False', 'N/A', 5, 100.00, 105, 'Physical Therapy Assessment'),
('J45.909', 'True', 'True', 6, 300.00, 106, 'Function Test'),
('L50.9', 'False', 'True', 7, 180.00, 107, 'Allergy Skin Test'),
('R53.1', 'False', 'True', 8, 120.00, 108, 'Electrolyte Panel'),
('G40.909', 'True', 'True', 9, 400.00, 109, 'EEG Monitoring'),
('H52.4', 'False', 'False', 10, 50.00, 110, 'Vision Acuity Test');

INSERT INTO FacilitiesAdditionalTests (FacilityID, ICD_code)
VALUES 
(1, 'J10.1'),
(1, 'M54.5'),
(2, 'E11.9'),
(2, 'I10'),
(3, 'L50.9'),
(3, 'H52.4'),
(4, 'J45.909'),
(4, 'K35.80'),
(5, 'G40.909'),
(5, 'R53.1'),
(6, 'I10'),
(6, 'J45.909'),
(7, 'H52.4'),
(7, 'L50.9'),
(8, 'J10.1'),
(8, 'R53.1'),
(9, 'E11.9'),
(9, 'M54.5'),
(10, 'K35.80'),
(10, 'G40.909');

INSERT INTO PatientGoesToFacility (FacilityID, PID)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 6),
(3, 7),
(4, 8),
(4, 9),
(5, 10),
(6, 1),
(6, 4),
(7, 2),
(7, 6),
(8, 3),
(8, 8),
(9, 5),
(9, 7),
(10, 9),
(10, 10);

INSERT INTO Orders (ICD, VisitID, VisitDateAndTime, ServiceProviderID)
VALUES
('J10.1', 1, '2024-12-05 09:00:00', 1001),
('E11.9', 2, '2024-12-05 10:15:00', 1002),
('I10', 3, '2024-12-05 11:30:00', 1003),
('K35.80', 4, '2024-12-05 13:00:00', 1004),
('M54.5', 5, '2024-12-06 09:30:00', 1005),
('J45.909', 6, '2024-12-06 10:45:00', 2001),
('L50.9', 7, '2024-12-06 12:00:00', 2002),
('R53.1', 8, '2024-12-06 14:00:00', 3001),
('G40.909', 9, '2024-12-06 15:30:00', 3002),
('H52.4', 10, '2024-12-07 10:00:00', 3003);

 




 






 













