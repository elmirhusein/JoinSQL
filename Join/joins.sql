CREATE TABLE Departments(
  Id int PRIMARY KEY IDENTITY,
  [Name] nvarchar(100) NOT NULL UNIQUE,
)

CREATE TABLE Positions(
  Id int PRIMARY KEY IDENTITY,
  [Name] nvarchar(100) NOT NULL UNIQUE,
)

CREATE TABLE Employees(
  Id int PRIMARY KEY IDENTITY,
  [Name] nvarchar(100) NOT NULL UNIQUE,
  Surname nvarchar(100) NOT NULL UNIQUE,
  Salary decimal(8,2),
  DepartmentId int REFERENCES Departments(id),
  PositionId int REFERENCES Positions(id)
)

INSERT INTO Employees
VALUES ('Nurlan','Nuruzade',500,3,3)

SELECT Employees.Name, Employees.Surname, Employees.Salary, Departments.Name 'Department Name', Positions.Name 'Position Name' FROM Employees JOIN Departments
ON Employees.DepartmentId=Departments.Id
JOIN Positions
ON Employees.PositionId=Positions.Id
