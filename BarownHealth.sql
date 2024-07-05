create database BarwonHealth
---------------------------------------
 create  table patient(
UR INT primary key identity(1,1),
Name nvarchar(30),
age int,
address nvarchar(100),
phone nvarchar(20),
email nvarchar(50),
Med_Card nvarchar(50),
DoctorID int FOREIGN KEY   
REFERENCES Doctor(DoctorID ) )
 ----------------------------------------------------
create  table Doctor(
 DoctorID INT PRIMARY KEY identity(1,1),
  DoctorName  nvarchar(25),
  specialty nvarchar(50),
  Exp_years int,
  phone nvarchar(20),
 email nvarchar(50)
  
 )
 ------------------------------------------------
create table company(
CompanyID int PRIMARY KEY identity(1,1) ,
 CompanynName  nvarchar(50),
 address nvarchar(100),
phone nvarchar(20)
   
 )
 ----------------------------------------------------
 create  table Drug(
 DrugID INT PRIMARY KEY identity(1,1),
 TradeName  nvarchar(30),
 Strength nvarchar(50)
   )
  ---------------------------------------------
 create table company_drug(
  ID int primary key identity(1,1),
   DrugID int foreign key REFERENCES Drug(DrugID ) ,
  CompanyID int  foreign key REFERENCES company(companyID )
)
 -------------------------------------------
 create  table Patient_Drug (
 ID int primary key  identity(1,1),
 DoctorID int  foreign key REFERENCES Doctor(DoctorID ) ,
PatientID int foreign key REFERENCES Patient(UR ) ,
DrugID int  foreign key REFERENCES Drug(DrugID ),
Date datetime,
Quantity int
   )
 --------------------------
  

 