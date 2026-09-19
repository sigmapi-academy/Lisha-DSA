-- ================================================================
-- CARSHOWROOM Database
-- Generated script: schema (DDL) + sample data (DML)
-- Compatible with MySQL 8.0+ / MariaDB (CHECK constraints supported)
-- ================================================================

DROP DATABASE IF EXISTS CARSHOWROOM;
CREATE DATABASE CARSHOWROOM;
USE CARSHOWROOM;

-- ----------------------------------------------------------------
-- TABLE STRUCTURES
-- ----------------------------------------------------------------

CREATE TABLE Employee (
    EmpID        INT PRIMARY KEY,
    EmpName      VARCHAR(100) NOT NULL,
    DOB          DATE NOT NULL,
    DOJ          DATE NOT NULL,
    Designation  VARCHAR(50) NOT NULL,
    Salary       DECIMAL(10,2) NOT NULL CHECK (Salary > 0),
    MobileNum    VARCHAR(15) NOT NULL UNIQUE,
    Email        VARCHAR(100) NOT NULL UNIQUE,
    CHECK (DOJ > DOB)
);

CREATE TABLE Inventory (
    CarID            INT PRIMARY KEY,
    CarName          VARCHAR(100) NOT NULL,
    Price            DECIMAL(12,2) NOT NULL CHECK (Price > 0),
    Model            VARCHAR(50) NOT NULL,
    YearManufacture  INT NOT NULL CHECK (YearManufacture BETWEEN 2000 AND 2026),
    FuelType         VARCHAR(20) NOT NULL CHECK (FuelType IN ('Petrol','Diesel','CNG','Electric','Hybrid'))
);

CREATE TABLE Customer (
    CustID       INT PRIMARY KEY,
    CustName     VARCHAR(100) NOT NULL,
    CustAddress  VARCHAR(200),
    Email        VARCHAR(100) UNIQUE,
    MobileNum    VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE Sales (
    InvoiceNo    INT PRIMARY KEY,
    CarID        INT NOT NULL,
    CustID       INT NOT NULL,
    SaleDate     DATE NOT NULL,
    PaymentMode  VARCHAR(20) NOT NULL,
    EmpID        INT NOT NULL,
    SalePrice    DECIMAL(12,2) NOT NULL CHECK (SalePrice > 0),
    FOREIGN KEY (CarID)  REFERENCES Inventory(CarID)  ON UPDATE CASCADE,
    FOREIGN KEY (CustID) REFERENCES Customer(CustID)  ON UPDATE CASCADE,
    FOREIGN KEY (EmpID)  REFERENCES Employee(EmpID)   ON UPDATE CASCADE
);

-- ----------------------------------------------------------------
-- DATA: EMPLOYEE (20 records)
-- ----------------------------------------------------------------
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (1, 'Ishita Joshi', '2001-03-13', '2023-04-09', 'Receptionist', 20579.49, '6590830166', 'ishita.joshi@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (2, 'Arjun Bose', '1996-09-19', '2022-10-05', 'Sales Manager', 56477.76, '6390996030', 'arjun.bose@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (3, 'Yamini Mehta', '1990-10-20', '2018-03-27', 'Service Advisor', 39732.35, '8821993518', 'yamini.mehta@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (4, 'Arjun Menon', '1999-10-07', '2023-04-24', 'Sales Executive', 36439.05, '9579754323', 'arjun.menon@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (5, 'Sanjay Menon', '1995-07-23', '2022-07-21', 'Service Advisor', 45752.47, '9491186252', 'sanjay.menon@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (6, 'Nitin Mishra', '2001-12-22', '2023-06-08', 'Sales Executive', 40997.70, '8559797114', 'nitin.mishra@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (7, 'Lalit Chandra', '1974-11-30', '2016-05-12', 'Technician', 35967.39, '8974650752', 'lalit.chandra@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (8, 'Geeta Rao', '1974-08-23', '2019-11-23', 'Sales Executive', 88046.99, '7366712768', 'geeta.rao@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (9, 'Jyoti Mehta', '1996-09-05', '2021-02-14', 'Receptionist', 25651.17, '8632122330', 'jyoti.mehta@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (10, 'Nitin Krishnan', '1983-10-14', '2021-04-28', 'Showroom Manager', 70122.81, '9859952890', 'nitin.krishnan@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (11, 'Jatin Grover', '1997-02-01', '2023-05-27', 'Technician', 30971.04, '9176031372', 'jatin.grover@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (12, 'Vivek Kapoor', '1974-05-11', '2017-04-18', 'General Manager', 110011.66, '7815901396', 'vivek.kapoor@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (13, 'Swati Sinha', '1987-08-01', '2023-03-03', 'Service Advisor', 38534.73, '6777741215', 'swati.sinha@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (14, 'Aarti Bhattacharya', '1979-03-30', '2026-07-31', 'Store Keeper', 22230.96, '8280841485', 'aarti.bhattacharya@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (15, 'Anita Bhatia', '1995-11-21', '2023-01-28', 'Accountant', 46022.99, '8393363387', 'anita.bhatia@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (16, 'Ananya Arora', '1973-04-02', '2021-04-07', 'Sales Executive', 36028.08, '7957551313', 'ananya.arora@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (17, 'Lalit Mukherjee', '1981-03-02', '2025-10-28', 'HR Executive', 41233.20, '6751163726', 'lalit.mukherjee@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (18, 'Jagdish Kapoor', '1989-10-03', '2025-05-22', 'Sales Manager', 65034.67, '6222029729', 'jagdish.kapoor@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (19, 'Devika Bhattacharya', '1987-09-20', '2018-07-01', 'Technician', 33229.90, '7001826330', 'devika.bhattacharya@gmail.com');
INSERT INTO Employee (EmpID, EmpName, DOB, DOJ, Designation, Salary, MobileNum, Email) VALUES (20, 'Sandeep Das', '1994-06-25', '2018-09-12', 'Service Advisor', 43746.24, '8486205798', 'sandeep.das@gmail.com');

-- ----------------------------------------------------------------
-- DATA: INVENTORY (50 records)
-- ----------------------------------------------------------------
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (1, 'Renault Kwid', 863000.00, 'RXE', 2019, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (2, 'Renault Kwid', 694000.00, 'RXE', 2019, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (3, 'Hyundai Creta', 1860000.00, 'SX(O)', 2026, 'Diesel');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (4, 'Maruti Suzuki WagonR', 854000.00, 'VXI', 2024, 'Diesel');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (5, 'Nissan Magnite', 873000.00, 'XL', 2023, 'Diesel');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (6, 'Renault Kwid', 1125000.00, 'RXL', 2023, 'Electric');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (7, 'Tata Tiago', 775000.00, 'XZ+', 2021, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (8, 'Toyota Glanza', 649000.00, 'E', 2022, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (9, 'Toyota Innova Crysta', 3466000.00, 'GX', 2021, 'Electric');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (10, 'Kia Sonet', 1177000.00, 'HTK', 2023, 'Electric');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (11, 'Mahindra Scorpio-N', 2072000.00, 'Z2', 2025, 'Electric');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (12, 'Mahindra Scorpio-N', 2771000.00, 'Z4', 2025, 'Hybrid');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (13, 'Skoda Slavia', 1822000.00, 'Ambition', 2024, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (14, 'Maruti Suzuki Baleno', 513000.00, 'Zeta', 2026, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (15, 'Toyota Fortuner', 4264000.00, 'AT', 2020, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (16, 'Mahindra Scorpio-N', 1715000.00, 'Z2', 2020, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (17, 'Tata Harrier', 4064000.00, 'Adventure', 2021, 'CNG');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (18, 'Mahindra Bolero', 860000.00, 'B6', 2021, 'Diesel');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (19, 'Renault Triber', 540000.00, 'RXT', 2024, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (20, 'Tata Harrier', 1649000.00, 'Fearless', 2020, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (21, 'Hyundai i20', 656000.00, 'Asta', 2020, 'Diesel');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (22, 'Mahindra Bolero', 1196000.00, 'B4', 2026, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (23, 'Skoda Slavia', 1810000.00, 'Style', 2021, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (24, 'Hyundai Venue', 641000.00, 'S', 2023, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (25, 'Toyota Innova Crysta', 2197000.00, 'ZX', 2023, 'Diesel');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (26, 'Volkswagen Virtus', 1904000.00, 'Topline', 2021, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (27, 'Mahindra Bolero', 854000.00, 'B4', 2019, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (28, 'Tata Tiago', 574000.00, 'XZ+', 2022, 'Electric');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (29, 'Skoda Kushaq', 1989000.00, 'Style', 2026, 'Diesel');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (30, 'Nissan Magnite', 740000.00, 'XV', 2022, 'Hybrid');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (31, 'Hyundai Verna', 1086000.00, 'SX(O)', 2024, 'Hybrid');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (32, 'Maruti Suzuki Swift', 539000.00, 'LXI', 2023, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (33, 'MG Hector', 1145000.00, 'Smart', 2022, 'Diesel');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (34, 'Tata Harrier', 2363000.00, 'Pure', 2023, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (35, 'Toyota Fortuner', 4159000.00, 'AT', 2022, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (36, 'Mahindra XUV700', 2707000.00, 'AX5', 2021, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (37, 'Renault Kwid', 1043000.00, 'RXT', 2022, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (38, 'Hyundai i20', 911000.00, 'Asta', 2020, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (39, 'MG Astor', 1333000.00, 'Style', 2023, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (40, 'Ford EcoSport', 1004000.00, 'Ambiente', 2025, 'CNG');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (41, 'Renault Triber', 950000.00, 'RXE', 2023, 'Diesel');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (42, 'Maruti Suzuki Dzire', 1027000.00, 'ZXI+', 2021, 'Electric');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (43, 'Maruti Suzuki Baleno', 593000.00, 'Delta', 2020, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (44, 'Kia Sonet', 891000.00, 'HTE', 2025, 'CNG');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (45, 'Maruti Suzuki Baleno', 820000.00, 'Delta', 2026, 'Petrol');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (46, 'Maruti Suzuki WagonR', 546000.00, 'VXI+', 2020, 'Diesel');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (47, 'Renault Kwid', 664000.00, 'RXT', 2020, 'CNG');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (48, 'Mahindra XUV700', 2709000.00, 'AX3', 2026, 'Diesel');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (49, 'Renault Kwid', 950000.00, 'RXT', 2019, 'Diesel');
INSERT INTO Inventory (CarID, CarName, Price, Model, YearManufacture, FuelType) VALUES (50, 'Maruti Suzuki WagonR', 956000.00, 'VXI+', 2021, 'Petrol');

-- ----------------------------------------------------------------
-- DATA: CUSTOMER (200 records)
-- ----------------------------------------------------------------
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (1, 'Qasim Chauhan', '160 Dum Dum, Chennai', 'qasim.chauhan@gmail.com', '6707413748');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (2, 'Ashok Chowdhury', '120 Diamond Harbour Road, Bangalore', 'ashok.chowdhury@gmail.com', '7417047187');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (3, 'Vikas Saxena', '54 Ballygunge, Delhi', 'vikas.saxena@gmail.com', '6284529841');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (4, 'Naveen Sen', '128 Rajarhat, Patna', 'naveen.sen@gmail.com', '6207764265');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (5, 'Harish Malhotra', '31 Elgin Road, Kolkata', 'harish.malhotra@gmail.com', '8561304451');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (6, 'Aditya Saxena', '223 Dum Dum, Delhi', 'aditya.saxena@gmail.com', '8640410423');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (7, 'Vikas Pandey', '131 Elgin Road, Pune', 'vikas.pandey@gmail.com', '8606883106');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (8, 'Indira Rathore', '193 Camac Street, Lucknow', 'indira.rathore@gmail.com', '9082276544');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (9, 'Sandeep Khanna', '190 Alipore, Jaipur', 'sandeep.khanna@gmail.com', '9347861221');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (10, 'Nikhil Dutta', '232 Rajarhat, Kanpur', 'nikhil.dutta@gmail.com', '7757628331');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (11, 'Suresh Kapoor', '143 Lake Town, Chandigarh', 'suresh.kapoor@gmail.com', '7549306668');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (12, 'Nikhil Saxena', '70 Elgin Road, Mumbai', 'nikhil.saxena@gmail.com', '9495288314');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (13, 'Kiran Saxena', '103 Alipore, Nagpur', 'kiran.saxena@gmail.com', '9402067970');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (14, 'Kavita Tiwari', '239 Behala, Nagpur', 'kavita.tiwari@gmail.com', '9313228171');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (15, 'Varun Grover', '11 MG Road, Chennai', 'varun.grover@gmail.com', '7904248611');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (16, 'Kavita Chauhan', '135 Dum Dum, Pune', 'kavita.chauhan@gmail.com', '9439008474');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (17, 'Abhishek Bakshi', '215 Rash Behari Avenue, Indore', 'abhishek.bakshi@gmail.com', '7830640037');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (18, 'Om Bakshi', '108 Lake Town, Jaipur', 'om.bakshi@gmail.com', '7653705656');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (19, 'Shalini Sharma', '205 Sector 5, Surat', 'shalini.sharma@gmail.com', '6373433734');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (20, 'Rekha Reddy', '244 Howrah Road, Indore', 'rekha.reddy@gmail.com', '7376092603');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (21, 'Sneha Shetty', '37 Jessore Road, Mumbai', 'sneha.shetty@gmail.com', '6267511253');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (22, 'Nisha Bakshi', '240 Behala, Nagpur', 'nisha.bakshi@gmail.com', '6465572101');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (23, 'Jyoti Patel', '90 Jessore Road, Bangalore', 'jyoti.patel@gmail.com', '7654610735');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (24, 'Umang Yadav', '50 Elgin Road, Bhopal', 'umang.yadav@gmail.com', '9063606071');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (25, 'Neha Iyer', '50 Garia, Delhi', 'neha.iyer@gmail.com', '8545904544');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (26, 'Rahul Arora', '194 Howrah Road, Delhi', 'rahul.arora@gmail.com', '6317764672');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (27, 'Omkar Banerjee', '3 Garia, Lucknow', 'omkar.banerjee@gmail.com', '7935575918');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (28, 'Shalini Tiwari', '193 Gariahat, Ahmedabad', 'shalini.tiwari@gmail.com', '9107885261');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (29, 'Kavita Iyer', '160 Lake Town, Pune', 'kavita.iyer@gmail.com', '6677232679');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (30, 'Om Bose', '192 Tollygunge, Bangalore', 'om.bose@gmail.com', '8449454437');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (31, 'Kiran Banerjee', '63 Rash Behari Avenue, Chennai', 'kiran.banerjee@gmail.com', '8935164388');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (32, 'Sunita Bakshi', '207 Salt Lake, Nagpur', 'sunita.bakshi@gmail.com', '6107375043');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (33, 'Divya Singh', '49 Howrah Road, Coimbatore', 'divya.singh@gmail.com', '7158279401');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (34, 'Jagdish Shetty', '182 Howrah Road, Bhopal', 'jagdish.shetty@gmail.com', '7055203409');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (35, 'Lokesh Das', '209 MG Road, Chandigarh', 'lokesh.das@gmail.com', '9529413078');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (36, 'Madhavi Kumar', '105 Salt Lake, Patna', 'madhavi.kumar@gmail.com', '7812646446');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (37, 'Rohan Chauhan', '191 Dum Dum, Bhopal', 'rohan.chauhan@gmail.com', '9605366306');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (38, 'Deepak Pandey', '30 Lake Town, Patna', 'deepak.pandey@gmail.com', '8722008261');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (39, 'Aarav Rathore', '238 Shakespeare Sarani, Surat', 'aarav.rathore@gmail.com', '7254282116');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (40, 'Nitin Sethi', '207 Ballygunge, Lucknow', 'nitin.sethi@gmail.com', '7075096192');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (41, 'Jagdish Sen', '159 Southern Avenue, Visakhapatnam', 'jagdish.sen@gmail.com', '7729306826');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (42, 'Ananya Rao', '39 Rash Behari Avenue, Pune', 'ananya.rao@gmail.com', '6805169784');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (43, 'Lokesh Mishra', '79 Dum Dum, Ahmedabad', 'lokesh.mishra@gmail.com', '9657872009');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (44, 'Nitin Chowdhury', '61 Diamond Harbour Road, Visakhapatnam', 'nitin.chowdhury@gmail.com', '9276112565');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (45, 'Pooja Yadav', '130 Behala, Mumbai', 'pooja.yadav@gmail.com', '6215810862');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (46, 'Sneha Kumar', '158 Garia, Bangalore', 'sneha.kumar@gmail.com', '7274231594');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (47, 'Deepak Malhotra', '230 Howrah Road, Jaipur', 'deepak.malhotra@gmail.com', '9248739498');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (48, 'Rakesh Malhotra', '96 Park Street, Pune', 'rakesh.malhotra@gmail.com', '7624562418');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (49, 'Rohan Sinha', '220 Shakespeare Sarani, Nagpur', 'rohan.sinha@gmail.com', '6486546592');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (50, 'Naveen Kapoor', '196 Lake Town, Nagpur', 'naveen.kapoor@gmail.com', '7290484495');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (51, 'Rahul Khanna', '9 Rash Behari Avenue, Chennai', 'rahul.khanna@gmail.com', '8966850273');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (52, 'Geeta Bakshi', '12 MG Road, Mumbai', 'geeta.bakshi@gmail.com', '6954185836');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (53, 'Bina Chauhan', '151 Camac Street, Pune', 'bina.chauhan@gmail.com', '8972203271');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (54, 'Arjun Sinha', '38 Gol Park, Jaipur', 'arjun.sinha@gmail.com', '9400859979');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (55, 'Ravi Arora', '127 Rash Behari Avenue, Hyderabad', 'ravi.arora@gmail.com', '6008062320');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (56, 'Meera Sharma', '157 Tollygunge, Pune', 'meera.sharma@gmail.com', '7638986928');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (57, 'Simran Kumar', '77 Alipore, Mumbai', 'simran.kumar@gmail.com', '9806671723');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (58, 'Meera Iyer', '60 Alipore, Mumbai', 'meera.iyer@gmail.com', '6540486844');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (59, 'Kalpana Das', '22 Behala, Kolkata', 'kalpana.das@gmail.com', '7433253659');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (60, 'Rakesh Saxena', '233 Alipore, Kanpur', 'rakesh.saxena@gmail.com', '9780063943');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (61, 'Aditya Rathore', '150 Lake Town, Coimbatore', 'aditya.rathore@gmail.com', '7200119252');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (62, 'Radhika Verma', '8 Park Street, Chennai', 'radhika.verma@gmail.com', '6101953816');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (63, 'Meera Bose', '53 Ballygunge, Bangalore', 'meera.bose@gmail.com', '6014712134');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (64, 'Abhishek Kapoor', '109 New Town, Kolkata', 'abhishek.kapoor@gmail.com', '8440559874');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (65, 'Hemant Khanna', '8 Jessore Road, Kolkata', 'hemant.khanna@gmail.com', '9815708931');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (66, 'Aarav Pillai', '44 Jessore Road, Kolkata', 'aarav.pillai@gmail.com', '7400571727');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (67, 'Chirag Bhatia', '246 Behala, Jaipur', 'chirag.bhatia@gmail.com', '7433721178');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (68, 'Meera Sinha', '84 Shakespeare Sarani, Bangalore', 'meera.sinha@gmail.com', '9616053446');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (69, 'Umang Dutta', '44 Southern Avenue, Ahmedabad', 'umang.dutta@gmail.com', '9289905958');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (70, 'Swati Yadav', '170 Tollygunge, Chandigarh', 'swati.yadav@gmail.com', '7774932573');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (71, 'Pallavi Mukherjee', '69 Sector 5, Visakhapatnam', 'pallavi.mukherjee@gmail.com', '7235985235');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (72, 'Ajay Iyer', '250 Garia, Bangalore', 'ajay.iyer@gmail.com', '7136224464');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (73, 'Shalini Reddy', '164 Salt Lake, Jaipur', 'shalini.reddy@gmail.com', '7670066384');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (74, 'Kavya Verma', '37 New Town, Visakhapatnam', 'kavya.verma@gmail.com', '9036996393');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (75, 'Om Banerjee', '165 Salt Lake, Nagpur', 'om.banerjee@gmail.com', '9541636246');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (76, 'Madhavi Chowdhury', '6 Howrah Road, Guwahati', 'madhavi.chowdhury@gmail.com', '7506710483');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (77, 'Deepak Bhagat', '201 Ballygunge, Surat', 'deepak.bhagat@gmail.com', '8197837805');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (78, 'Ravi Kapoor', '106 Garia, Nagpur', 'ravi.kapoor@gmail.com', '7268195044');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (79, 'Harish Tiwari', '16 MG Road, Delhi', 'harish.tiwari@gmail.com', '9659413468');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (80, 'Gaurav Tiwari', '119 Ballygunge, Hyderabad', 'gaurav.tiwari@gmail.com', '7137832567');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (81, 'Rekha Sethi', '141 Alipore, Chennai', 'rekha.sethi@gmail.com', '9534646270');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (82, 'Jyoti Bhatia', '63 Alipore, Lucknow', 'jyoti.bhatia@gmail.com', '8776915246');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (83, 'Neha Patel', '212 Dum Dum, Chandigarh', 'neha.patel@gmail.com', '7859003144');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (84, 'Faisal Reddy', '149 Camac Street, Ahmedabad', 'faisal.reddy@gmail.com', '7752368299');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (85, 'Pooja Dubey', '231 Tollygunge, Lucknow', 'pooja.dubey@gmail.com', '7738171814');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (86, 'Deepika Sen', '212 Camac Street, Indore', 'deepika.sen@gmail.com', '9807727372');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (87, 'Umang Shetty', '221 Garia, Kolkata', 'umang.shetty@gmail.com', '7579747566');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (88, 'Om Kumar', '47 Alipore, Bhopal', 'om.kumar@gmail.com', '6090518772');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (89, 'Vikram Das', '184 Jessore Road, Chennai', 'vikram.das@gmail.com', '8155788346');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (90, 'Payal Pandey', '65 Tollygunge, Mumbai', 'payal.pandey@gmail.com', '8457658485');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (91, 'Nikhil Bakshi', '127 Salt Lake, Chandigarh', 'nikhil.bakshi@gmail.com', '7542910686');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (92, 'Umang Menon', '13 Southern Avenue, Lucknow', 'umang.menon@gmail.com', '6003790889');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (93, 'Harish Rathore', '38 Alipore, Visakhapatnam', 'harish.rathore@gmail.com', '6307212061');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (94, 'Lokesh Sharma', '95 Camac Street, Lucknow', 'lokesh.sharma@gmail.com', '8426050699');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (95, 'Rohan Ganguly', '146 Behala, Mumbai', 'rohan.ganguly@gmail.com', '6696710699');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (96, 'Mamta Joshi', '122 Barasat, Guwahati', 'mamta.joshi@gmail.com', '6173206001');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (97, 'Pooja Das', '223 Salt Lake, Chennai', 'pooja.das@gmail.com', '9049372052');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (98, 'Sanjay Pillai', '161 Tollygunge, Indore', 'sanjay.pillai@gmail.com', '9400000916');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (99, 'Simran Chauhan', '187 Howrah Road, Hyderabad', 'simran.chauhan@gmail.com', '9905597722');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (100, 'Vivek Agarwal', '245 Alipore, Hyderabad', 'vivek.agarwal@gmail.com', '9767495440');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (101, 'Hemant Bakshi', '181 Howrah Road, Chandigarh', 'hemant.bakshi@gmail.com', '6294963666');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (102, 'Faisal Grover', '230 Rash Behari Avenue, Nagpur', 'faisal.grover@gmail.com', '8054462904');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (103, 'Manoj Menon', '38 New Town, Kanpur', 'manoj.menon@gmail.com', '9581887633');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (104, 'Simran Shetty', '15 Gol Park, Patna', 'simran.shetty@gmail.com', '9349067818');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (105, 'Ananya Grover', '17 Rash Behari Avenue, Patna', 'ananya.grover@gmail.com', '8857893333');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (106, 'Pooja Banerjee', '207 Kasba, Lucknow', 'pooja.banerjee@gmail.com', '8995682307');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (107, 'Ritika Reddy', '96 Alipore, Nagpur', 'ritika.reddy@gmail.com', '6259054890');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (108, 'Rajesh Gupta', '53 Dum Dum, Indore', 'rajesh.gupta@gmail.com', '7446179924');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (109, 'Vikram Kapoor', '52 Gariahat, Patna', 'vikram.kapoor@gmail.com', '6000857719');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (110, 'Jagdish Tiwari', '237 Salt Lake, Delhi', 'jagdish.tiwari@gmail.com', '8593186272');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (111, 'Ritika Bose', '185 Rash Behari Avenue, Hyderabad', 'ritika.bose@gmail.com', '6450800487');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (112, 'Neha Reddy', '38 Elgin Road, Kolkata', 'neha.reddy@gmail.com', '7499717554');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (113, 'Komal Rao', '96 Rajarhat, Patna', 'komal.rao@gmail.com', '7732073023');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (114, 'Kavita Rathore', '222 Shakespeare Sarani, Chennai', 'kavita.rathore@gmail.com', '9160175537');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (115, 'Vivek Sinha', '94 Camac Street, Chandigarh', 'vivek.sinha@gmail.com', '7027827246');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (116, 'Chetan Bose', '40 MG Road, Jaipur', 'chetan.bose@gmail.com', '8524715771');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (117, 'Swati Dutta', '15 Alipore, Pune', 'swati.dutta@gmail.com', '9414356433');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (118, 'Rajesh Saxena', '75 Jessore Road, Hyderabad', 'rajesh.saxena@gmail.com', '6420785827');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (119, 'Rahul Ghosh', '74 Gariahat, Bhopal', 'rahul.ghosh@gmail.com', '9063492228');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (120, 'Sunita Bhagat', '45 Ballygunge, Visakhapatnam', 'sunita.bhagat@gmail.com', '6197423293');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (121, 'Bina Chauhan', '52 MG Road, Delhi', 'bina.chauhan1@gmail.com', '9085547106');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (122, 'Madhavi Mehta', '224 Gol Park, Jaipur', 'madhavi.mehta@gmail.com', '7295025990');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (123, 'Ananya Ghosh', '239 Diamond Harbour Road, Surat', 'ananya.ghosh@gmail.com', '6153569041');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (124, 'Omkar Yadav', '132 MG Road, Surat', 'omkar.yadav@gmail.com', '7031392214');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (125, 'Sandeep Nayak', '210 MG Road, Kolkata', 'sandeep.nayak@gmail.com', '6340997837');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (126, 'Meera Bhatia', '223 Salt Lake, Hyderabad', 'meera.bhatia@gmail.com', '6417798411');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (127, 'Divya Tiwari', '227 Camac Street, Kanpur', 'divya.tiwari@gmail.com', '7329762066');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (128, 'Devika Shetty', '135 Park Street, Patna', 'devika.shetty@gmail.com', '6556356956');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (129, 'Yamini Singh', '84 Behala, Chennai', 'yamini.singh@gmail.com', '8360518215');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (130, 'Gita Mukherjee', '130 Gol Park, Kolkata', 'gita.mukherjee@gmail.com', '7266700094');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (131, 'Om Rathore', '70 Alipore, Kanpur', 'om.rathore@gmail.com', '6914180630');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (132, 'Ashok Rao', '79 Shakespeare Sarani, Hyderabad', 'ashok.rao@gmail.com', '6098417982');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (133, 'Harsh Rao', '131 Camac Street, Lucknow', 'harsh.rao@gmail.com', '9944318479');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (134, 'Qasim Menon', '57 Alipore, Patna', 'qasim.menon@gmail.com', '7857849774');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (135, 'Sneha Bose', '86 Rash Behari Avenue, Pune', 'sneha.bose@gmail.com', '9960523585');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (136, 'Nitin Nair', '73 Ballygunge, Lucknow', 'nitin.nair@gmail.com', '6028195708');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (137, 'Komal Yadav', '91 Garia, Bangalore', 'komal.yadav@gmail.com', '7265523994');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (138, 'Ravi Reddy', '190 Garia, Indore', 'ravi.reddy@gmail.com', '8261068917');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (139, 'Aditya Menon', '39 Jessore Road, Jaipur', 'aditya.menon@gmail.com', '6677454568');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (140, 'Yamini Shetty', '99 Alipore, Chandigarh', 'yamini.shetty@gmail.com', '6767428426');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (141, 'Aarav Saxena', '149 Rash Behari Avenue, Delhi', 'aarav.saxena@gmail.com', '8593536000');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (142, 'Sandeep Menon', '230 Rajarhat, Lucknow', 'sandeep.menon@gmail.com', '8896886675');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (143, 'Anjali Shetty', '174 Shakespeare Sarani, Nagpur', 'anjali.shetty@gmail.com', '6183165868');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (144, 'Aarav Joshi', '226 Ballygunge, Guwahati', 'aarav.joshi@gmail.com', '9679958125');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (145, 'Abhishek Agarwal', '20 Sector 5, Surat', 'abhishek.agarwal@gmail.com', '7145862848');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (146, 'Nikhil Dutta', '229 Ballygunge, Guwahati', 'nikhil.dutta1@gmail.com', '7099159060');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (147, 'Rahul Chauhan', '182 Kasba, Kanpur', 'rahul.chauhan@gmail.com', '6461900327');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (148, 'Varun Menon', '69 Alipore, Kanpur', 'varun.menon@gmail.com', '7936912288');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (149, 'Meera Verma', '26 Lake Town, Hyderabad', 'meera.verma@gmail.com', '9796009523');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (150, 'Ananya Nair', '44 Park Street, Jaipur', 'ananya.nair@gmail.com', '6915379600');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (151, 'Gaurav Tiwari', '150 Barasat, Mumbai', 'gaurav.tiwari1@gmail.com', '9093330292');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (152, 'Abhishek Sharma', '231 Diamond Harbour Road, Lucknow', 'abhishek.sharma@gmail.com', '9947136936');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (153, 'Simran Tiwari', '225 Kasba, Indore', 'simran.tiwari@gmail.com', '6312256204');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (154, 'Aditya Nayak', '93 Salt Lake, Chandigarh', 'aditya.nayak@gmail.com', '9561165836');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (155, 'Ajay Chowdhury', '73 Shakespeare Sarani, Ahmedabad', 'ajay.chowdhury@gmail.com', '9040523213');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (156, 'Vikas Roy', '214 Camac Street, Kanpur', 'vikas.roy@gmail.com', '9732553669');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (157, 'Nikhil Chauhan', '244 Rajarhat, Surat', 'nikhil.chauhan@gmail.com', '7372497958');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (158, 'Kiran Tiwari', '156 Behala, Pune', 'kiran.tiwari@gmail.com', '7181846092');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (159, 'Simran Sharma', '100 Kasba, Delhi', 'simran.sharma@gmail.com', '7353118584');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (160, 'Ajay Kumar', '184 Sector 5, Delhi', 'ajay.kumar@gmail.com', '7426456724');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (161, 'Suresh Verma', '94 Gol Park, Bhopal', 'suresh.verma@gmail.com', '9073651241');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (162, 'Vikas Shetty', '188 Rash Behari Avenue, Mumbai', 'vikas.shetty@gmail.com', '9092634260');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (163, 'Varun Chauhan', '162 Alipore, Hyderabad', 'varun.chauhan@gmail.com', '7978469501');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (164, 'Lokesh Pillai', '231 Park Street, Coimbatore', 'lokesh.pillai@gmail.com', '6310535166');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (165, 'Geeta Sen', '72 Behala, Delhi', 'geeta.sen@gmail.com', '8675878036');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (166, 'Om Dutta', '217 Barasat, Chennai', 'om.dutta@gmail.com', '9308428238');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (167, 'Aarti Bose', '247 Park Street, Hyderabad', 'aarti.bose@gmail.com', '8561342277');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (168, 'Rakesh Bhagat', '62 MG Road, Surat', 'rakesh.bhagat@gmail.com', '9254229935');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (169, 'Ila Rao', '141 Jessore Road, Hyderabad', 'ila.rao@gmail.com', '7976314057');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (170, 'Nikhil Gupta', '16 New Town, Lucknow', 'nikhil.gupta@gmail.com', '7147125779');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (171, 'Naveen Pillai', '44 Tollygunge, Delhi', 'naveen.pillai@gmail.com', '6077159417');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (172, 'Gita Ganguly', '49 Tollygunge, Chandigarh', 'gita.ganguly@gmail.com', '6514943120');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (173, 'Sneha Grover', '102 Camac Street, Lucknow', 'sneha.grover@gmail.com', '8282149562');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (174, 'Kalpana Bhatia', '82 Rash Behari Avenue, Bhopal', 'kalpana.bhatia@gmail.com', '7854300196');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (175, 'Rohan Das', '127 Jessore Road, Indore', 'rohan.das@gmail.com', '7499123227');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (176, 'Jagdish Tiwari', '23 Park Street, Nagpur', 'jagdish.tiwari1@gmail.com', '9335009862');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (177, 'Ashok Kumar', '170 Park Street, Surat', 'ashok.kumar@gmail.com', '9517022640');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (178, 'Harsh Menon', '173 Shakespeare Sarani, Coimbatore', 'harsh.menon@gmail.com', '7718587682');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (179, 'Bhavna Shetty', '159 Lake Town, Mumbai', 'bhavna.shetty@gmail.com', '8949965724');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (180, 'Payal Ghosh', '227 Alipore, Kolkata', 'payal.ghosh@gmail.com', '7371295896');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (181, 'Naveen Ghosh', '62 Dum Dum, Nagpur', 'naveen.ghosh@gmail.com', '9413238134');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (182, 'Lokesh Reddy', '49 Behala, Jaipur', 'lokesh.reddy@gmail.com', '9387389189');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (183, 'Zoya Patel', '218 Jessore Road, Delhi', 'zoya.patel@gmail.com', '9288818176');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (184, 'Umang Chatterjee', '248 Ballygunge, Coimbatore', 'umang.chatterjee@gmail.com', '9125906305');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (185, 'Anjali Sharma', '180 Howrah Road, Pune', 'anjali.sharma@gmail.com', '9412619391');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (186, 'Ananya Chatterjee', '94 Garia, Chandigarh', 'ananya.chatterjee@gmail.com', '6413588570');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (187, 'Faisal Bhatia', '26 Shakespeare Sarani, Kanpur', 'faisal.bhatia@gmail.com', '8910345370');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (188, 'Bina Yadav', '30 MG Road, Indore', 'bina.yadav@gmail.com', '6142284629');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (189, 'Sandeep Roy', '177 Barasat, Jaipur', 'sandeep.roy@gmail.com', '9005278700');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (190, 'Kavita Banerjee', '159 Alipore, Visakhapatnam', 'kavita.banerjee@gmail.com', '9727639815');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (191, 'Rohit Ghosh', '56 Sector 5, Chennai', 'rohit.ghosh@gmail.com', '6325759765');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (192, 'Abhishek Sharma', '86 Dum Dum, Indore', 'abhishek.sharma1@gmail.com', '8303790224');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (193, 'Komal Nair', '17 Behala, Jaipur', 'komal.nair@gmail.com', '8998920813');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (194, 'Farhan Sinha', '147 Alipore, Bangalore', 'farhan.sinha@gmail.com', '8432145583');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (195, 'Siddharth Nayak', '184 Southern Avenue, Chandigarh', 'siddharth.nayak@gmail.com', '6557853352');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (196, 'Ritu Das', '2 Gol Park, Nagpur', 'ritu.das@gmail.com', '9769429124');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (197, 'Simran Iyer', '187 Dum Dum, Kanpur', 'simran.iyer@gmail.com', '8139192495');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (198, 'Kavya Bhatia', '249 Barasat, Guwahati', 'kavya.bhatia@gmail.com', '6752448024');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (199, 'Rakesh Bhagat', '6 Ballygunge, Mumbai', 'rakesh.bhagat1@gmail.com', '9739481330');
INSERT INTO Customer (CustID, CustName, CustAddress, Email, MobileNum) VALUES (200, 'Karan Shetty', '13 Lake Town, Delhi', 'karan.shetty@gmail.com', '8203480503');

-- ----------------------------------------------------------------
-- DATA: SALES (50 records)
-- ----------------------------------------------------------------
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (1, 18, 59, '2026-06-21', 'Debit Card', 8, 829400.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (2, 43, 196, '2026-08-18', 'Debit Card', 2, 570100.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (3, 15, 181, '2026-02-19', 'Debit Card', 16, 4152400.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (4, 41, 71, '2024-06-01', 'Cash', 4, 927400.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (5, 23, 168, '2023-11-05', 'Cheque', 6, 1789400.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (6, 8, 194, '2023-02-27', 'EMI', 2, 645000.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (7, 33, 140, '2024-02-24', 'Bank Loan', 18, 1134600.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (8, 10, 156, '2023-11-02', 'UPI', 6, 1125800.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (9, 16, 200, '2025-12-18', 'Cash', 4, 1648300.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (10, 34, 63, '2025-10-18', 'Credit Card', 16, 2255200.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (11, 36, 100, '2024-03-10', 'Debit Card', 16, 2584700.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (12, 24, 28, '2023-02-01', 'Cash', 8, 620300.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (13, 13, 103, '2024-12-19', 'Cash', 8, 1770600.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (14, 9, 105, '2026-09-07', 'EMI', 16, 3427200.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (15, 39, 65, '2024-06-21', 'EMI', 2, 1316900.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (16, 7, 91, '2024-10-29', 'EMI', 4, 750100.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (17, 5, 77, '2024-03-19', 'Cheque', 16, 838500.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (18, 29, 123, '2023-10-07', 'EMI', 6, 1960900.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (19, 38, 85, '2025-09-21', 'EMI', 2, 899600.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (20, 37, 82, '2026-06-03', 'Bank Loan', 8, 1019400.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (21, 25, 149, '2024-03-05', 'EMI', 2, 2116200.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (22, 20, 12, '2024-01-09', 'Bank Loan', 16, 1637500.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (23, 14, 77, '2023-02-20', 'EMI', 8, 509100.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (24, 47, 3, '2024-09-11', 'Credit Card', 4, 639600.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (25, 31, 25, '2025-08-09', 'EMI', 4, 1081100.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (26, 49, 87, '2026-09-24', 'EMI', 8, 908100.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (27, 19, 9, '2024-04-25', 'Credit Card', 18, 523100.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (28, 11, 4, '2023-10-04', 'Bank Loan', 2, 2048000.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (29, 35, 111, '2023-08-03', 'EMI', 8, 4149000.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (30, 1, 82, '2023-08-14', 'Credit Card', 2, 842000.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (31, 28, 35, '2025-05-27', 'Cash', 18, 567600.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (32, 30, 139, '2026-07-20', 'EMI', 4, 721500.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (33, 17, 29, '2024-12-25', 'EMI', 18, 3869500.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (34, 44, 20, '2024-03-16', 'EMI', 6, 847700.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (35, 45, 58, '2023-05-29', 'Debit Card', 8, 812700.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (36, 46, 68, '2023-05-22', 'UPI', 6, 540600.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (37, 6, 13, '2026-02-13', 'UPI', 16, 1110000.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (38, 3, 84, '2023-03-26', 'EMI', 8, 1809400.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (39, 27, 141, '2026-11-14', 'Bank Loan', 6, 811600.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (40, 4, 191, '2024-07-04', 'Bank Loan', 8, 840400.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (41, 12, 108, '2023-11-06', 'Bank Loan', 16, 2717600.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (42, 22, 105, '2026-07-24', 'Cash', 4, 1159700.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (43, 40, 66, '2026-06-05', 'EMI', 8, 954300.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (44, 26, 51, '2023-08-26', 'Cash', 8, 1844900.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (45, 32, 9, '2023-04-12', 'Bank Loan', 8, 523900.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (46, 42, 176, '2025-06-25', 'Bank Loan', 8, 1010800.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (47, 2, 148, '2025-08-27', 'EMI', 2, 664400.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (48, 48, 131, '2026-04-28', 'Bank Loan', 6, 2657500.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (49, 50, 162, '2025-02-14', 'Bank Loan', 8, 952900.00);
INSERT INTO Sales (InvoiceNo, CarID, CustID, SaleDate, PaymentMode, EmpID, SalePrice) VALUES (50, 21, 135, '2026-06-09', 'EMI', 6, 628900.00);