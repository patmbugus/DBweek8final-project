USE Clinicdb;
-- Create the Patients table
CREATE TABLE Patients (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT CHECK (Age > 0),
    Gender ENUM('Male', 'Female', 'Other'),
    Contact VARCHAR(15) UNIQUE 
);

-- Create the Doctors table
CREATE TABLE Doctors (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Specialty VARCHAR(50) NOT NULL,
    Contact VARCHAR(15) UNIQUE
);

-- Create the Appointments table
CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    AppointmentDate DATE NOT NULL,
    Status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Create the Prescriptions table
CREATE TABLE Prescriptions (
    PrescriptionID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    Medication VARCHAR(255) NOT NULL,
    Dosage VARCHAR(50) NOT NULL,
    IssueDate DATE NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);


-- Insert values into Patients table
INSERT INTO Patients (Name, Age, Gender, Contact) VALUES
('Alice Johnson', 30, 'Female', '0723456789'),
('Bob Smith', 45, 'Male', '0734567890'),
('Catherine Owuor', 28, 'Female', '0745678901'),
('David Kimani', 50, 'Male', '0756789012');

-- Insert values into Doctors table
INSERT INTO Doctors (Name, Specialty, Contact) VALUES
('Dr. Jane Kimani', 'Cardiology', '0721112233'),
('Dr. Mark Otieno', 'Dermatology', '0732223344'),
('Dr. Grace Mwangi', 'Pediatrics', '0743334455'),
('Dr. Samuel Njoroge', 'Orthopedics', '0754445566');

-- Insert values into Appointments table
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Status) VALUES
(1, 1, '2025-05-16', 'Scheduled'),
(2, 2, '2025-05-17', 'Completed'),
(3, 3, '2025-05-18', 'Cancelled'),
(4, 4, '2025-05-19', 'Scheduled');

-- Insert values into Prescriptions table
INSERT INTO Prescriptions (PatientID, DoctorID, Medication, Dosage, IssueDate) VALUES
(1, 1, 'Aspirin', '100mg twice a day', '2025-05-16'),
(2, 2, 'Hydrocortisone', 'Apply twice daily', '2025-05-17'),
(3, 3, 'Amoxicillin', '500mg thrice a day', '2025-05-18'),
(4, 4, 'Calcium Supplements', 'One tablet daily', '2025-05-19');
