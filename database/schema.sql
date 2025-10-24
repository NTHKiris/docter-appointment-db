DROP DATABASE IF EXISTS DoctorAppointment;

CREATE DATABASE DoctorAppointment;

USE DoctorAppointment;

CREATE TABLE Users (
    UserId VARCHAR(36) PRIMARY KEY DEFAULT(UUID()),
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(150) UNIQUE,
    Password VARCHAR(255),
    PhoneNumber VARCHAR(20),
    Role ENUM('admin', 'doctor', 'patient') NOT NULL
);

CREATE TABLE Doctors (
    UserId VARCHAR(36) PRIMARY KEY,
    CitizenId VARCHAR(50) UNIQUE,
    LicenseNumber VARCHAR(50),
    ConsultationFee DECIMAL(10, 2),
    Specialization VARCHAR(100),
    FOREIGN KEY (UserId) REFERENCES Users (UserId) ON DELETE CASCADE
);

CREATE TABLE Addresses (
    AddressId INT AUTO_INCREMENT PRIMARY KEY,
    AddressLine VARCHAR(255),
    City VARCHAR(100),
    ProvinceState VARCHAR(100),
    Country VARCHAR(100)
);

CREATE TABLE Patients (
    UserId VARCHAR(36) PRIMARY KEY,
    CitizenId VARCHAR(50) UNIQUE,
    Age INT NOT NULL,
    Gender ENUM('male', 'female', 'other'),
    EmergencyName VARCHAR(100),
    AddressId INT,
    EmergencyPhone VARCHAR(20),
    FOREIGN KEY (UserId) REFERENCES Users (UserId) ON DELETE CASCADE,
    FOREIGN KEY (AddressId) REFERENCES Addresses (AddressId) ON DELETE SET NULL
);

CREATE TABLE PatientInsurances (
    InsuranceId VARCHAR(50) PRIMARY KEY,
    PatientId VARCHAR(36),
    ProviderName VARCHAR(100),
    ExpiryDate DATE,
    Type VARCHAR(100),
    FOREIGN KEY (PatientId) REFERENCES Patients (UserId) ON DELETE CASCADE
);

CREATE TABLE Conditions (
    ConditionID INT AUTO_INCREMENT PRIMARY KEY,
    ConditionName VARCHAR(150),
    Description TEXT,
    Type ENUM(
        'symptom',
        'injury',
        'disease'
    )
);

CREATE TABLE PatientConditions (
    PatientConditionID INT AUTO_INCREMENT PRIMARY KEY,
    PatientId VARCHAR(36) NOT NULL,
    ConditionID INT NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (PatientId) REFERENCES Patients (UserId) ON DELETE CASCADE,
    FOREIGN KEY (ConditionID) REFERENCES Conditions (ConditionID) ON DELETE CASCADE,
    UNIQUE KEY unique_patient_condition (PatientId, ConditionID)
);

CREATE TABLE Hospitals (
    HospitalID INT PRIMARY KEY,
    Name VARCHAR(150),
    Type ENUM(
        'public',
        'private',
        'specialized',
        'general'
    ),
    Address VARCHAR(255),
    Hotline VARCHAR(20),
    Email VARCHAR(100),
    OpenTime TIME,
    CloseTime TIME
);

CREATE TABLE MedicalDepartments (
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR(150),
    Description TEXT,
    HeadOfDepartment VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE HospitalDepartments (
    HospitalDepartmentId INT AUTO_INCREMENT PRIMARY KEY,
    HospitalId INT NOT NULL,
    DepartmentId INT NOT NULL,
    Address VARCHAR(255),
    FOREIGN KEY (HospitalId) REFERENCES Hospitals (HospitalId) ON DELETE CASCADE,
    FOREIGN KEY (DepartmentId) REFERENCES MedicalDepartments (DepartmentId) ON DELETE CASCADE,
    UNIQUE KEY unique_hospital_department (HospitalId, DepartmentId)
);

CREATE TABLE TreatedBy (
    ConditionID INT,
    DepartmentID INT,
    PRIMARY KEY (ConditionID, DepartmentID),
    FOREIGN KEY (ConditionID) REFERENCES Conditions (ConditionID) ON DELETE CASCADE,
    FOREIGN KEY (DepartmentID) REFERENCES MedicalDepartments (DepartmentID) ON DELETE CASCADE
);

CREATE TABLE DoctorAvailabilities (
    AvailabilityID INT AUTO_INCREMENT PRIMARY KEY,
    DoctorId VARCHAR(36),
    AvailableDate DATE,
    StartTime TIME,
    EndTime TIME,
    HospitalDepartmentId INT,
    FOREIGN KEY (DoctorId) REFERENCES Doctors (UserId),
    FOREIGN KEY (HospitalDepartmentId) REFERENCES HospitalDepartments (HospitalDepartmentId) ON DELETE CASCADE
);

CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientId VARCHAR(36),
    DoctorId VARCHAR(36),
    ScheduleDate DATE,
    ScheduleTime TIME,
    EndTime TIME,
    Status ENUM(
        'pending',
        'confirmed',
        'cancelled',
        'completed'
    ) DEFAULT 'pending',
    Note TEXT,
    Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    HospitalDepartmentId INT,
    FOREIGN KEY (PatientId) REFERENCES Patients (UserId),
    FOREIGN KEY (DoctorId) REFERENCES Doctors (UserId),
    FOREIGN KEY (HospitalDepartmentId) REFERENCES HospitalDepartments (HospitalDepartmentId)
);

CREATE TABLE Reviews (
    ReviewID INT AUTO_INCREMENT PRIMARY KEY,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comment TEXT,
    PatientId VARCHAR(36),
    DoctorId VARCHAR(36),
    Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (PatientId) REFERENCES Patients (UserId),
    FOREIGN KEY (DoctorId) REFERENCES Doctors (UserId)
);