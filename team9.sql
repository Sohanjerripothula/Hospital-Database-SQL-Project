CREATE TABLE Patient(
	PID INT PRIMARY KEY,
    fname VARCHAR(20),
	mname VARCHAR(20),
    lname VARCHAR(20),
    DateOfBirth DATE 
);
    
CREATE TABLE PhoneNumber(
PhoneNumberID INT PRIMARY KEY,
PhoneNumber VARCHAR(15),
PID INT,
FOREIGN KEY (PID) REFERENCES Patient(PID)
);


CREATE TABLE PatientInsurance (
    PID INT,
    PolicyID INT,
	Provider VARCHAR(255),
    fname VARCHAR(20),
mname VARCHAR(20),
    lname VARCHAR(20),
    GroupNumber INT,
    PRIMARY KEY (Provider),
    FOREIGN KEY (PID) REFERENCES Patient(PID)
);


CREATE TABLE Diagnosis(
DiagnosisID INT PRIMARY KEY,
PID INT,
ICD_code VARCHAR(10),
DiagnosisDate DATE,
FOREIGN KEY (PID) REFERENCES Patient(PID)
);


CREATE TABLE Facilities(
	FacilityID INT PRIMARY KEY,
    FacilityName VARCHAR(255),
    Location VARCHAR(255),
    Type VARCHAR(255),
    TimeOpen VARCHAR(8),
    TimeClose VARCHAR(8)
);


CREATE TABLE Guardian(
    GuardianID INT PRIMARY KEY,
    fname VARCHAR(20),
    mname VARCHAR(20),
    lname VARCHAR(20),
    Relationship VARCHAR(50),
    PhoneNumber VARCHAR(15)
);


CREATE TABLE DigitalSignature(
    DigitalSignatureID INT PRIMARY KEY,
    GuardianID INT,
    FormType ENUM('Hard copy', 'Digital copy'),
    FOREIGN KEY (GuardianID) REFERENCES Guardian(GuardianID)
);

CREATE TABLE Treatment(
    ICD VARCHAR(10) PRIMARY KEY,
    DiagnosisID INT,
    CPT_code VARCHAR(10),
    TreatmentCost DECIMAL(10, 2),
    ServiceProviderID INT,
    DigitalSignatureID INT,
    FacilityID INT,
    Approved ENUM ('True', 'False','N/A'),
    FOREIGN KEY (FacilityID) REFERENCES Facilities(FacilityID),
    FOREIGN KEY (DiagnosisID) REFERENCES Diagnosis(DiagnosisID),
    FOREIGN KEY (DigitalSignatureID) REFERENCES DigitalSignature(DigitalSignatureID)
);

-- ISNEEDED in schema
CREATE TABLE DiagnosisTreatment(
DiagnosisID INT,
ICD VARCHAR(10),
PRIMARY KEY (DiagnosisID, ICD),
FOREIGN KEY (ICD) REFERENCES Treatment(ICD),
FOREIGN KEY (DiagnosisID) REFERENCES Diagnosis(DiagnosisID)
);

CREATE TABLE EmergencyContact(
    ContactID INT PRIMARY KEY,
    PID INT,
    fname VARCHAR(20),
    mname VARCHAR(20),
    lname VARCHAR(20),
    PhoneNumber VARCHAR(15), 
    Relationship VARCHAR (20),
    FOREIGN KEY (PID) REFERENCES Patient(PID)
);

-- ISUNDER18 on schema
CREATE TABLE MinorsGuardian (
GuardianID INT,
PID INT,
FOREIGN KEY (PID) REFERENCES Patient(PID) ON DELETE CASCADE,
FOREIGN KEY (GuardianID) REFERENCES Guardian(GuardianID) ON DELETE CASCADE,
PRIMARY KEY (PID, GuardianID)
);


CREATE TABLE Department(
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR(50)
);


CREATE TABLE Employee(
	EmployeeID INT PRIMARY KEY,
	fname VARCHAR(20),
	mname VARCHAR(20),
	lname VARCHAR(20),
	DepartmentID INT,
	Role VARCHAR(50),
    FacilityID INT,
	EmploymentType ENUM('Salary', 'Hourly'),
    FOREIGN KEY (FacilityID) REFERENCES Facilities(FacilityID),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);


CREATE TABLE IntakeClerk (
    EmployeeID INT PRIMARY KEY,
    IntakeClerkID INT UNIQUE NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
    
);

CREATE TABLE Nurse (
    EmployeeID INT PRIMARY KEY,
    NurseID INT UNIQUE NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE ServiceProvider (
    EmployeeID INT PRIMARY KEY,
    ServiceProviderID INT UNIQUE NOT NULL,
    Specialization VARCHAR(18) NOT NULL CHECK (Specialization IN ('Doctor','Physician Assistant', 'Nurse Practitioner')),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE NurseAssistedServiceProvider(
	NurseID INT,
    ServiceProviderID INT,
    FOREIGN KEY (NurseID) REFERENCES Nurse(NurseID),
	FOREIGN KEY (ServiceProviderID) REFERENCES ServiceProvider(ServiceProviderID),
    PRIMARY KEY(NurseID, ServiceProviderID)
);

CREATE TABLE InitialAssessment(
	AssessmentID INT PRIMARY KEY,
	PID INT,
	NurseID INT,
	MedicalConditionDescription VARCHAR(510),
	Height VARCHAR(6),
	Weight VARCHAR(5),
	BloodPressure VARCHAR(7),
	Temperature DECIMAL(5, 2),
	FOREIGN KEY (PID) REFERENCES Patient(PID),
	FOREIGN KEY (NurseID) REFERENCES Nurse(NurseID)
);

-- CAN GIVE on schema
CREATE TABLE ServiceProviderGaveDiagnosis(
    ServiceProviderID INT,
    DiagnosisID INT,
    FOREIGN KEY (ServiceProviderID) REFERENCES ServiceProvider(ServiceProviderID),
    FOREIGN KEY (DiagnosisID) REFERENCES Diagnosis(DiagnosisID),
    PRIMARY KEY (ServiceProviderID, DiagnosisID)
);

-- SEEN BY on schema
CREATE TABLE PatientSeenByServiceProvider(
    PID INT,
    ServiceProviderID INT,
    FOREIGN KEY (ServiceProviderID) REFERENCES ServiceProvider(ServiceProviderID),
    FOREIGN KEY (PID) REFERENCES Patient(PID),
    PRIMARY KEY (PID, ServiceProviderID)
);

CREATE TABLE VisitRecords(
	VisitID INT UNIQUE,
    VisitDateAndTime DATETIME,
	DoctorsNotes TEXT,
    Copay DECIMAL(4, 1),
    Services TEXT,
    PID INT,
    IntitalAssessmentID INT,
    ServiceProviderID INT,
    IntakeClerkID INT,
    PRIMARY KEY(VisitID, VisitDateAndTime),
    FOREIGN KEY (PID) REFERENCES Patient(PID),
    FOREIGN KEY (IntitalAssessmentID) REFERENCES InitialAssessment(AssessmentID),
	FOREIGN KEY (ServiceProviderID) REFERENCES ServiceProvider(ServiceProviderID),
	FOREIGN KEY (IntakeClerkID) REFERENCES IntakeClerk(IntakeClerkID)
);

-- PATIENT DIAGNOSIS on schema
CREATE TABLE VisitDiagnosis(
    DiagnosisID INT,
    VisitID INT,
    VisitDateAndTime DATETIME,
    PRIMARY KEY (DiagnosisID, VisitID),
    FOREIGN KEY (DiagnosisID) REFERENCES Diagnosis(DiagnosisID),
    FOREIGN KEY (VisitID, VisitDateAndTime) REFERENCES VisitRecords(VisitID, VisitDateAndTime)
);

CREATE TABLE Doctor (
	EmployeeID INT PRIMARY KEY,
    ServiceProviderID INT ,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (ServiceProviderID) REFERENCES ServiceProvider(ServiceProviderID)
);


CREATE TABLE PhysicianAssistant (
	EmployeeID INT PRIMARY KEY,
    ServiceProviderID INT ,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (ServiceProviderID) REFERENCES ServiceProvider(ServiceProviderID)
);

CREATE TABLE NursePractitioner (
	EmployeeID INT PRIMARY KEY,
    ServiceProviderID INT ,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (ServiceProviderID) REFERENCES ServiceProvider(ServiceProviderID)
);


CREATE TABLE DegreeInfo(
	EmployeeID INT,
	Date DATE,
	City VARCHAR(127),
	State VARCHAR(13),
	Country VARCHAR(127),
	University VARCHAR(255),
	DegreeEarned VARCHAR(255),
	DegreeType VARCHAR(255),
	PRIMARY KEY (EmployeeID, University, DegreeType, DegreeEarned),
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE FacilityDaysOpen (
    FacilityID INT,
    DaysOfWeek ENUM('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'),
    PRIMARY KEY (FacilityID, DaysOfWeek),
    FOREIGN KEY (FacilityID) REFERENCES Facilities(FacilityID)
);


CREATE TABLE AdditionalTests(
	ICD_code VARCHAR(10) PRIMARY KEY,
	Xray ENUM ('True', 'False'),
	Approved ENUM ('True', 'False','N/A'),
	DigitalSignatureID INT,
	Cost DECIMAL (8,2),
	TestCode INT,
	NameOfTest VARCHAR(127)
);


-- HAS on schema
CREATE TABLE FacilitiesAdditionalTests(
	FacilityID INT,
	ICD_code VARCHAR(10),
	FOREIGN KEY (ICD_code) REFERENCES AdditionalTests(ICD_code),
	FOREIGN KEY (FacilityID) REFERENCES Facilities(FacilityID)
);


CREATE TABLE PatientGoesToFacility(
    FacilityID INT,
    PID INT,
	FOREIGN KEY (FacilityID) REFERENCES Facilities(FacilityID),
    FOREIGN KEY (PID) REFERENCES Patient(PID),
    PRIMARY KEY (FacilityID, PID)
);


CREATE TABLE Orders (
    ICD VARCHAR(10),
    VisitID INT,
    VisitDateAndTime DATETIME,
    ServiceProviderID INT,
    FOREIGN KEY (ICD) REFERENCES Treatment(ICD),
    FOREIGN KEY (VisitID, VisitDateAndTime) REFERENCES VisitRecords(VisitID, VisitDateAndTime),
    FOREIGN KEY (ServiceProviderID) REFERENCES ServiceProvider(ServiceProviderID),
    PRIMARY KEY (ICD, VisitID, VisitDateAndTime, ServiceProviderID)
);
