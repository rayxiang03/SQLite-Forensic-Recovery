-- Create LegalCases table
CREATE TABLE LegalCases (
    CaseID INTEGER NOT NULL,          -- Unique identifier for the case
    ClientID INTEGER NOT NULL,        -- Client ID associated with the case
    CaseType TEXT NOT NULL,           -- Type of case (e.g., Criminal, Civil, Family)
    CaseStatus TEXT NOT NULL          -- Current status of the case (e.g., Pending, Closed)
);

-- Create LawyerAppointments table
CREATE TABLE LawyerAppointments (
    AppointmentID INTEGER NOT NULL,      -- Unique identifier for the appointment
    LawyerID INTEGER NOT NULL,           -- Lawyer ID associated with the appointment
    AppointmentDate TEXT NOT NULL,       -- Date of the appointment
    AppointmentStatus TEXT NOT NULL      -- Status of the appointment (e.g., Scheduled, Completed)
);


-- Insert 10 records into LegalCases table
INSERT INTO LegalCases (CaseID, ClientID, CaseType, CaseStatus)
VALUES
(1, 101, 'Criminal', 'Pending'),
(2, 102, 'Civil', 'Closed'),
(3, 103, 'Family', 'Pending'),
(4, 104, 'Criminal', 'Closed'),
(5, 105, 'Civil', 'Pending'),
(6, 106, 'Family', 'Closed'),
(7, 107, 'Criminal', 'Pending'),
(8, 108, 'Civil', 'Closed'),
(9, 109, 'Family', 'Pending'),
(10, 110, 'Criminal', 'Closed');


-- Insert 10 records into LawyerAppointments table
INSERT INTO LawyerAppointments (AppointmentID, LawyerID, AppointmentDate, AppointmentStatus)
VALUES
(1, 201, '2024-12-01', 'Scheduled'),
(2, 202, '2024-12-02', 'Completed'),
(3, 203, '2024-12-03', 'Scheduled'),
(4, 204, '2024-12-04', 'Completed'),
(5, 205, '2024-12-05', 'Scheduled'),
(6, 206, '2024-12-06', 'Completed'),
(7, 207, '2024-12-07', 'Scheduled'),
(8, 208, '2024-12-08', 'Completed'),
(9, 209, '2024-12-09', 'Scheduled'),
(10, 210, '2024-12-10', 'Completed');

DELETE FROM LegalCases WHERE CaseID IN (1, 3, 5);
DELETE FROM LawyerAppointments WHERE AppointmentID IN (2, 4, 6);
