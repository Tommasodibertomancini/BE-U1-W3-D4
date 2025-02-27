CREATE DATABASE S3_L4;

USE S3_L4;

CREATE TABLE Employments (
	IdEmployment INT IDENTITY(1,1) PRIMARY KEY,
	Title NVARCHAR(100) NOT NULL,
	EmploymentHiring DATE NOT NULL
);

CREATE TABLE Employees (
	IdEmployee INT IDENTITY(1,1) PRIMARY KEY,
	EmployeeName NVARCHAR(50) NOT NULL,
	EmployeeSurname NVARCHAR(50) NOT NULL,
	FiscalCode NVARCHAR(17) NOT NULL UNIQUE,
	Age INT NOT NULL,
	Income DECIMAL(7,2) NOT NULL,
	TaxDeduction BIT NOT NULL DEFAULT 0,
	IdEmployment INT NOT NULL,
	CONSTRAINT FK_employee_employment FOREIGN KEY (IdEmployment) REFERENCES Employments(IdEmployment),
	CONSTRAINT CK_income CHECK (Income > 500)
);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('CEO', '2000-02-13');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Giovanni', 'De Angelis', 'DNGGVN78E05F345G', 46, 2000, 1, 1);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Manager', '2005-06-20');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Camilla', 'Colombo', 'CLBCML93J10K890L', 30, 1650, 1, 2);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Software Engineer', '2010-09-15');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Daniele', 'Rizzo', 'RZZDNL90C03D789E', 34, 1800, 1, 3);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Data Analyst', '2012-11-30');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Giada', 'Rinaldi', 'RNLGDA99H08I234J', 25, 1500, 1, 4);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('HR Specialist', '2015-04-10');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Marco', 'Esposito', 'ESPMSC79A01B123C', 45, 2100, 0, 5);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Marketing Coordinator', '2017-08-25');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Francesca', 'Mancini', 'MNCFNC88F06G678H', 36, 1850, 0, 6);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Sales Representative', '2019-02-18');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Elisa', 'Gentile', 'GNTELS85B02C456D', 38, 1900, 1, 7);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Accountant', '2013-07-12');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Emanuele', 'Pellegrino', 'PLLEMN84I09J567K', 39, 1850, 0, 8);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Customer Support', '2018-03-05');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Serena', 'Piras', 'PRSSRN95D04E012F', 28, 1600, 0, 9);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Project Manager', '2014-12-22');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Lorenzo', 'Fontana', 'FNTLRZ92G07H901I', 31, 1750, 1, 10);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Product Designer', '2016-06-14');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Stefano', 'Gatti', 'GTTSTF79K11L123M', 45, 1950, 1, 11);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Financial Analyst', '2009-10-28');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Vincenzo', 'Barone', 'BRNVNC91M13N789O', 32, 1750, 1, 12);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Legal Advisor', '2011-05-19');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Irene', 'Morelli', 'MRLIRN97L12M456N', 27, 1550, 0, 13);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Operations Manager', '2008-01-07');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Chiara', 'Marchetti', 'MRCCRA96N14O012P', 28, 1600, 0, 14);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('IT Administrator', '2020-09-10');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Andrea', 'Sartori', 'SRTAND82O15P345Q', 41, 1850, 1, 15);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('UX Researcher', '2019-06-21');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Giulia', 'Benedetti', 'BNDGLI89P16Q678R', 35, 1750, 0, 16);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Supply Chain Specialist', '2017-03-30');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Matteo', 'Neri', 'NRIMTT94Q17R901S', 29, 1600, 1, 17);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Security Officer', '2015-12-15');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Aurora', 'De Rosa', 'DRSAUR98R18S234T', 26, 1500, 0, 18);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Business Consultant', '2011-08-09');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Gabriele', 'Leone', 'LNEGAB83S19T567U', 42, 1900, 1, 19);

INSERT INTO Employments (Title, EmploymentHiring) VALUES
('Quality Assurance', '2016-11-03');

INSERT INTO Employees (EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, IdEmployment) VALUES
('Beatrice', 'Ruggieri', 'RGGBTR87T20U890V', 37, 1800, 0, 20);


-- A
SELECT * FROM Employees WHERE Age > 29;

-- B
SELECT * FROM Employees WHERE Income >= 800;

-- C
SELECT * FROM Employees WHERE TaxDeduction = 0;

-- D
SELECT * FROM Employees WHERE TaxDeduction = 1;

-- E
SELECT * FROM Employees WHERE EmployeeSurname LIKE 'G%' ORDER BY EmployeeSurname ASC;

-- F
SELECT COUNT(*) as TotalEmployees FROM Employees;

-- G
SELECT SUM(Income) as TotalIncomes FROM Employees;

-- H
SELECT AVG(Income) as IncomeAverage FROM Employees;

-- I
SELECT MAX(Income) as MaxIncome FROM Employees;

-- J
SELECT MIN(Income) as MinIncome FROM Employees;

-- K
SELECT IdEmployee, EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, Title, EmploymentHiring
FROM Employees
INNER JOIN
Employments ON
Employees.IdEmployment = Employments.IdEmployment
WHERE Employments.EmploymentHiring BETWEEN '2007-01-01' AND '2008-01-01';

-- L
SELECT IdEmployee, EmployeeName, EmployeeSurname, FiscalCode, Age, Income, TaxDeduction, Title, EmploymentHiring
FROM Employees
INNER JOIN
Employments ON
Employees.IdEmployment = Employments.IdEmployment
WHERE Employments.Title LIKE '%or%';

-- M
SELECT AVG(Age) as AverageAge FROM Employees;
