-- Create the table for Employee Records
CREATE TABLE EmployeeRecords (
    EmployeeID INTEGER NOT NULL,           -- Unique integer ID
    FirstName TEXT NOT NULL,               -- Text for first name
    LastName TEXT NOT NULL,                -- Text for last name
    BirthDate DATE NOT NULL,               -- Date for birthdate
    Salary REAL NOT NULL,                  -- Real value for salary
    Department TEXT NOT NULL,              -- Text for department name
    IsFullTime BOOLEAN NOT NULL,           -- Boolean for employment status
    HireDate DATE NOT NULL,                -- Date for hire date
    LastReview REAL,                       -- Real for last review score (0-10 scale)
    Address TEXT,                          -- Text for address (nullable)
    Bonus INTEGER,                         -- Integer for bonus (nullable)
    EmergencyContactPhone TEXT,            -- Text for emergency contact number
    EmployeeType INTEGER NOT NULL,         -- Integer for employee type (1 = Regular, 2 = Contract)
    Status INTEGER NOT NULL,               -- Integer for employment status (1 = Active, 0 = Inactive)
    Nationality TEXT,                      -- Text for nationality (nullable)
    ZipCode INTEGER                        -- Integer for zip code
);

-- Insert 20 complex records into EmployeeRecords table
INSERT INTO EmployeeRecords (EmployeeID, FirstName, LastName, BirthDate, Salary, Department, IsFullTime, HireDate, LastReview, Address, Bonus, EmergencyContactPhone, EmployeeType, Status, Nationality, ZipCode)
VALUES
(1, 'John', 'Doe', '1985-02-15', 75000.50, 'IT', 1, '2010-04-12', 9.2, '1234 Elm St, Springfield', 5000, '555-1234', 1, 1, 'USA', 62704),
(2, 'Jane', 'Smith', '1990-06-30', 55000.75, 'Marketing', 1, '2015-07-20', 7.8, '2345 Oak St, Metropolis', 3000, '555-5678', 1, 1, 'Canada', 62345),
(3, 'Alice', 'Johnson', '1982-11-05', 90000.00, 'HR', 0, '2018-01-15', 8.0, '3456 Pine St, Rivertown', NULL, '555-9876', 1, 1, 'UK', 62456),
(4, 'Bob', 'Brown', '1979-08-22', 115000.30, 'Finance', 1, '2005-12-25', 8.5, '4567 Birch St, Lakeview', 7000, '555-6543', 1, 1, 'Australia', 62567),
(5, 'Charlie', 'Davis', '1992-03-12', 65000.40, 'Engineering', 1, '2016-09-10', 8.3, '5678 Maple St, Hilltop', NULL, '555-3210', 1, 1, 'Germany', 62678),
(6, 'Diana', 'Miller', '1988-04-25', 72000.10, 'Legal', 1, '2012-02-18', 9.0, '6789 Cedar St, Forestville', 2000, '555-4321', 1, 1, 'USA', 62789),
(7, 'Eva', 'Wilson', '1995-01-17', 43000.25, 'Sales', 0, '2020-06-05', 6.5, '7890 Fir St, Sunset', 1000, '555-8765', 2, 1, 'France', 62890),
(8, 'Frank', 'Taylor', '1980-09-30', 98000.00, 'Operations', 1, '2007-11-14', 8.7, '8901 Redwood St, Cityview', NULL, '555-5432', 1, 1, 'India', 62901),
(9, 'Grace', 'Anderson', '1991-12-18', 48000.50, 'Marketing', 1, '2014-03-03', 7.9, '9012 Pine St, Meadowbrook', 1500, '555-2345', 1, 1, 'USA', 63012),
(10, 'Henry', 'Thomas', '1990-05-10', 54000.60, 'Finance', 0, '2017-09-30', 6.8, '1122 Ash St, Valleyview', NULL, '555-4322', 2, 1, 'Canada', 63123),
(11, 'Isla', 'Jackson', '1986-07-05', 86000.30, 'HR', 1, '2013-08-19', 8.4, '2233 Elm St, Greenfield', 5000, '555-6789', 1, 1, 'New Zealand', 63234),
(12, 'Jake', 'White', '1993-02-22', 56000.50, 'Legal', 1, '2019-11-02', 8.0, '3344 Birch St, Riverdale', 2500, '555-3456', 1, 1, 'USA', 63345),
(13, 'Kevin', 'Martin', '1996-10-15', 35000.75, 'Engineering', 1, '2022-07-21', 7.2, '4455 Maple St, Crestwood', NULL, '555-9876', 1, 1, 'South Africa', 63456),
(14, 'Lara', 'Lee', '1983-12-29', 75000.25, 'IT', 0, '2008-04-25', 8.9, '5566 Pine St, Lakeside', 3000, '555-6547', 1, 1, 'Japan', 63567),
(15, 'Maya', 'Lopez', '1987-11-02', 68000.20, 'Operations', 1, '2014-09-12', 9.1, '6677 Cedar St, Horizon', NULL, '555-5430', 1, 1, 'Brazil', 63678),
(16, 'Nina', 'Gonzalez', '1994-06-13', 46000.10, 'Sales', 0, '2021-02-07', 6.3, '7788 Fir St, Parkland', 1200, '555-7654', 2, 1, 'Spain', 63789),
(17, 'Oscar', 'Perez', '1981-04-09', 103000.55, 'Finance', 1, '2003-12-04', 9.0, '8899 Redwood St, Brightside', NULL, '555-4320', 1, 1, 'USA', 63890),
(18, 'Paul', 'Martinez', '1992-01-26', 65000.00, 'IT', 1, '2015-06-22', 8.5, '9900 Ash St, Springdale', 4000, '555-8764', 1, 1, 'Argentina', 63901),
(19, 'Quinn', 'Roberts', '1990-11-14', 90000.00, 'Engineering', 1, '2016-08-09', 8.2, '10101 Pine St, Rivervale', NULL, '555-2349', 1, 1, 'Mexico', 64012),
(20, 'Rita', 'Clark', '1993-05-20', 72000.25, 'Sales', 1, '2022-01-17', 9.3, '11111 Birch St, Grandview', 3500, '555-5671', 1, 1, 'USA', 64123);

DELETE FROM EmployeeRecords WHERE EmployeeID IN (1, 3, 5, 7, 9, 11, 13, 15, 17);

