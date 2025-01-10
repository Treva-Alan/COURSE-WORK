CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    DateOfBirth DATE,
    Gender VARCHAR(10),
    ContactInformation VARCHAR(20),
    Address VARCHAR(200),
    Next of kin TEXT,
);



CREATE TABLE Treatments (
    TreatmentID INT PRIMARY KEY,
    PatientID INT,
    TreatmentDate DATE,
    Diagnosis TEXT,
    Treatment Name TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
);


CREATE TABLE LaboratoryTests (
    TestID INT PRIMARY KEY,
    PatientID INT,
    TestDate DATE,
    TestType VARCHAR(100),
    TestResults TEXT,
    LabTechnicianID INT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (LabTechnicianID) REFERENCES LabTechnicians(LabTechnicianID),
);



CREATE TABLE HealthFacility (
    FacilityID INT PRIMARY KEY,
    FacilityName VARCHAR(100) NOT NULL,
    Location VARCHAR(255),
    Facility head TEXT,
    ContactInformation VARCHAR(255),
    Capacity VARCHAR(255),
);


CREATE TABLE Resources (
    ResourceID INT PRIMARY KEY,
    ResourceName VARCHAR(100),
    Update_date DATE,
    QuantityAvailable INT,
    FacilityID INT,
    FOREIGN KEY (FacilityID) REFERENCES HealthFacility(FacilityID)
);

CREATE TABLE UserRole (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(50),
    UserID INT PRIMARY KEY,
    UserName VARCHAR(100) NOT NULL,
    Password VARCHAR(155),
);


CREATE TABLE Malaria cases(
    Case ID INT PRIMARY KEY,
    PatientID INT,
    Date of diagnosis DATE,
    Outcome TEXT,
    Treatment VARCHAR(255),
    FacilityID INT,
    Malaria_type TEXT,
    FOREIGN KEY (FacilityID) REFERENCES HealthFacility(FacilityID)
);
