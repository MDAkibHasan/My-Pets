Create Database MyPets;
Use MyPets;

Create table UserTable(
UserID int primary key,
UserName varchar(50),
UserPass varchar(50),
UserEmail varchar(50)
);


Create table PetTable(
PetID int primary key,
PetName varchar(50) not null,
Type varchar(50) not null,
Breed varchar(50) not null,
AcOrBornDate date not null,
Gender varchar(50) not null

);

Create table MedTable(
MedID int primary key,
PetID int foreign key references PetTable(PetID),
MedName varchar(50) not null,
ForDisease varchar(50) not null,
AdminsterDate date not null,
Cost int not null,
Dosage int not null
);

Create table VacTable(

VacID int primary key,
PetID int foreign key references PetTable(PetID),
VacDate date not null,
Description varchar(50) not null,
Cost int not null


);

Create table FoodSupply(

InvoiceID int primary key,
PetType varchar(50) not null,
Amount varchar(50) not null,
Price int not null,
IsFinished varchar(50) not null,
Description varchar(50) not null


);

Create Table ApptTable(

AppointmentID int primary key,
PetID int foreign key references PetTable(PetID),
VetName varchar(50) not null,
Address varchar(50) not null,
AppointmentDate date not null,
ISDone varchar(50) not null,
Reason varchar(50) not null,
Cost int not null

);

