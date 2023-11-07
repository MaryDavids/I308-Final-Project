DROP
DROP
DROP
DROP
DROP
DROP
DROP
DROP
DROP
TABLE
TABLE
TABLE
TABLE
TABLE
TABLE
TABLE
TABLE
TABLE
IF
IF
IF
IF
IF
IF
IF
IF
IF
EXISTS
EXISTS
EXISTS
EXISTS
EXISTS
EXISTS
EXISTS
EXISTS
EXISTS
owners_phone;
OwnerPayments;
owners;
Lease;
tenantpayments;
Tenant_Phone;
Tenant_Pet;
Tenant;
Property;
/*Creating tables*/
/*Jackie*/
CREATE TABLE owners(
ownerid INT NOT NULL,
fname VARCHAR(50),
mname VARCHAR(50),
lname VARCHAR(50),
feePercent DOUBLE,
primary key(ownerid)
)engine = innodb;
CREATE TABLE owners_phone(
ownerid INT NOT NULL,
phone VARCHAR(15),
foreign key(ownerid) references owners(ownerid)
)engine = innodb;
/*Shashank*/
CREATE TABLE Lease(
LeaseID INT AUTO_INCREMENT NOT NULL,
StartDate DATE,
EndDate DATE,
Rent DOUBLE,
legalActionDate DATE,
Primary Key(LeaseID)
) ENGINE = INNODB;
Create table Tenant(
TenantID INT AUTO_INCREMENT NOT NULL,
Fname VARCHAR(50) NOT NULL,
Mname VARCHAR(50) NOT NULL,
Lname VARCHAR(50) NOT NULL,
backgroundCheck DATE,
Primary Key(TenantID)
) ENGINE = INNODB;
/*Greg*/

CREATE TABLE OwnerPayments(
OwnerID INT NOT NULL,
PropertyID INT NOT NULL,
Date DATE,
Amount DOUBLE,
type VARCHAR(50) NOT NULL,
FOREIGN KEY (OwnerID) references owners (ownerid),
FOREIGN KEY (PropertyID) references Property(PropertyID)
)ENGINE = innodb;

CREATE TABLE Property(
propertyID INT auto_increment NOT NULL,
Street VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(20),
Zip VARCHAR(50) NOT NULL,
type VARCHAR(50) NOT NULL,
Capacity INT NOT NULL,
PRIMARY KEY (PropertyID)
)ENGINE = innodb;

/*Mary*/
CREATE TABLE Tenant_Phone(
id INT auto_increment NOT NULL,
Phone VARCHAR(12),
FOREIGN KEY (id) REFERENCES Tenant(TenantID)
) ENGINE = innodb;
CREATE TABLE Tenant_Pet(
id INT auto_increment,
name VARCHAR(50),
type VARCHAR(50),
FOREIGN KEY (id) REFERENCES Tenant(TenantID)
) ENGINE = innodb;
DESCRIBE Tenant_Pet;

CREATE TABLE tenantpayments(
tenantID INT ,
PropertyID INT ,
LeaseID INT,
date DATE,
amount INT,
type VARCHAR(20) NOT NULL,
FOREIGN KEY(PropertyID) references property(PropertyID),
FOREIGN KEY(LeaseID) references Lease(LeaseID),
FOREIGN KEY(tenantID) references Tenant(TenantID)
)ENGINE = innodb;




/*data for owners*/
/*jackie*/
insert into owners (ownerid, fname, mname, lname,
'Dominga', 'Ammer', 0.13);
insert into owners (ownerid, fname, mname, lname,
'Shoshanna', 'Barron', 'Haglington', 0.93);
insert into owners (ownerid, fname, mname, lname,
'Mario', 'Bernuzzi', 0.42);
insert into owners (ownerid, fname, mname, lname,
'Loise', 'Rawet', 0.6);
insert into owners (ownerid, fname, mname, lname,
'Milena', 'Kennler', 0.64);
insert into owners (ownerid, fname, mname, lname,
'Renelle', 'Mackelworth', 0.12);
insert into owners (ownerid, fname, mname, lname,
'Wilton', 'Teulier', 0.16);
insert into owners (ownerid, fname, mname, lname,
'Norton', 'Hamlyn', 0.48);
insert into owners (ownerid, fname, mname, lname,
'Rhiamon', 'Lettley', 0.81);
insert into owners (ownerid, fname, mname, lname,
'Gerik', 'Spaxman', 0.97);
insert into owners (ownerid, fname, mname, lname,
feePercent) values (1, 'Kaleb',
feePercent) values (2,
feePercent) values (3, 'Aloisia',
feePercent) values (4, 'Daron',
feePercent) values (5, 'Georges',
feePercent) values (6, 'Flo',
feePercent) values (7, 'Yvon',
feePercent) values (8, 'Teador',
feePercent) values (9, 'Tiena',
feePercent) values (10, 'Kanya',
feePercent) values (11, 'Berkly','Saleem', 'Charpling', 0.6);
insert into owners (ownerid, fname, mname,
'Heinrick', 'Baillie', 'Schaumann', 1.0);
insert into owners (ownerid, fname, mname,
'Loralie', 'Agneta', 'Mouser', 0.34);
insert into owners (ownerid, fname, mname,
'Kurt', 'Brydone', 0.23);
insert into owners (ownerid, fname, mname,
'Laurens', 'Joey', 'Harbage', 0.81);
/*data
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
insert
for owners_phone*/
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
into owners_phone (ownerid,
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
phone)
lname, feePercent) values (12,
lname, feePercent) values (13,
lname, feePercent) values (14, 'Baxie',
lname, feePercent) values (15,
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
(7, '752-157-4447');
(4, '715-683-7865');
(7, '529-757-7370');
(11, '447-135-9331');
(6, '927-456-4750');
(13, '110-569-6891');
(6, '636-783-2691');
(8, '883-788-5298');
(14, '401-779-1490');
(14, '578-799-9052');
(7, '906-134-4962');
(9, '686-736-3378');
(14, '891-690-4073');
(1, '481-509-3166');
(14, '335-105-9019');
(12, '339-904-5175');
(6, '585-457-0598');
(15, '816-611-2841');
(15, '728-432-0061');
(14, '643-699-3802');
(11, '542-969-7998');
(6, '343-574-2345');
(14, '552-456-3065');
(14, '635-434-4124');
(13, '482-950-9241');
(5, '293-525-6994');
(3, '666-633-2298');
(4, '822-659-2599');
(13, '689-262-3361');
(6, '425-228-0673');
(13, '930-430-8258');
(15, '831-531-5184');
(14, '380-883-8200');
(3, '641-972-4106');
(12, '170-379-6600');
(9, '441-870-8074');
(4, '444-884-5617');
(2, '402-402-0673');
(1, '813-681-8024');
(13, '219-585-8056');
(11, '895-899-0319');
(1, '790-106-1802');
(12, '426-817-5237');
(15, '207-383-9737');
(5, '617-947-7295');
(6, '578-747-3160');
(7, '778-579-5426');
(10, '236-802-1838');insert into owners_phone (ownerid, phone) values (4, '523-804-7002');
insert into owners_phone (ownerid, phone) values (12, '542-963-4351');
/*shshank*/
/*data for tenant*/
INSERT INTO Tenant(TenantID, Fname, Mname, Lname, backgroundCheck)
VALUES(1, 'Silva', 'Goullee', 'Rayner', '2023-10-02'),
(2, 'Ali', 'Broadhurst', 'Bockmann', '2023-06-14'),
(3, 'Hoebart', 'Stanton', 'Larcher', '2022-10-18'),
(4, 'Gwenni', 'Dubose', 'Renachowski', '2023-07-04'),
(5, 'Aristotle', 'Whale', 'Filipiak', '2023-01-23'),
(6, 'Cammi', 'Cornbell', 'Rosenfelt', '2023-04-14'),
(7, 'Babara', 'Peplow', 'Heap', '2023-03-31'),
(8, 'Moises', 'Semerad', 'Wornum', '2023-03-15'),
(9, 'Raven', 'Licquorish', 'Stranieri', '2023-07-18'),
(10, 'Javier', 'Tincey', 'Hawe', '2022-10-24'),
(11, 'Drugi', 'Gatlin', 'Patshull', '2023-02-11'),
(12, 'Marcia', 'Lideard', 'Porrett', '2023-03-24'),
(13, 'Kristine', 'Pinard', 'Gormally', '2023-06-19'),
(14, 'Franciskus', 'Underwood', 'Braddock', '2023-01-20'),
(15, 'Matteo', 'Camplen', 'Hudghton', '2023-02-28');
INSERT INTO Lease(LeaseID, StartDate, EndDate, Rent, legalActionDate)
VALUES(1, '2022-07-03', '2023-09-24', 3439.55, NULL),
(2, '2023-07-01', '2025-11-17', 2614.30, '2023-07-01' ),
(3, '2022-08-19', '2023-08-17', 2671.90, NULL),
(4, '2023-12-17', '2024-02-27', 2519.42, NULL),
(5, '2020-04-08', '2025-12-24', 4463.04, NULL),
(6, '2021-05-31', '2024-01-05', 541.62, NULL),
(7, '2021-01-31', '2024-09-27', 4364.08, '2021-01-31'),
(8, '2020-08-16', '2024-09-09', 2161.51, NULL),
(9, '2024-04-21', '2025-07-31', 650.75, NULL),
(10, '2023-04-01', '2025-11-25', 1225.18, NULL),
(11, '2024-11-25', '2026-12-19', 3595.14, NULL),
(12, '2023-03-23', '2025-09-03', 4242.18, NULL),
(13, '2024-01-14', '2025-04-12', 3755.46, NULL),
(14, '2021-07-05', '2024-06-02', 1376.00, '2021-07-05'),
(15, '2020-08-05', '2024-03-24', 2048.03, NULL);
/*Greg*/
/*Data for Property and Owner Payments*/
INSERT INTO Property(PropertyID, Street, City, State, Zip, Type, Capacity)
INSERT INTO Property VALUES (1, '79 Badeau Avenue', 'Santa Ana', 'California',
92725, 'House', 5);
INSERT INTO Property VALUES (2, '06 Forest Run', 'Huntington', 'West Virginia',
25709, 'House', 6);
INSERT INTO Property VALUES (3, '995 Dayton Circle', 'New York City', 'New York',
10170, 'Town House', 8);
INSERT INTO Property VALUES (4, '1802 Anzinger Avenue', 'Newport Beach',
'California', 92662, 'Town House', 7);
INSERT INTO Property VALUES (5, '82782 Oneill Way', 'Norwalk', 'Connecticut', 6854,
'House', 10);
INSERT INTO Property VALUES (6, '603 Dahle Trail','Philadelphia', 'Pennsylvania',
19196, 'Apartment', 38);
INSERT INTO Property VALUES (7, '5456 Sundown Trail', 'Boise', 'Idaho', 83716,
'House', 8);
INSERT INTO Property VALUES (8, '58243 Sherman Place', 'Chattanooga', 'Tennessee',
37410, 'Town House', 6);
INSERT INTO Property VALUES (9, '58838 Daystar Terrace', 'San Diego', 'California',92132, 'Apartment', 45);
INSERT INTO Property VALUES (10,
83206, 'House', 5);
INSERT INTO Property VALUES (11,
Dakota', 57198, 'House', 5);
INSERT INTO Property VALUES (12,
Columbia', 20503, 'House', 4);
INSERT INTO Property VALUES (13,
31106, 'Apartment', 30);
INSERT INTO Property VALUES (14,
'House', 8);
INSERT INTO Property VALUES (15,
33954, 'Town house', 3);
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
INTO
'74 Green Ridge Lane', 'Pocatello', 'Idaho',
'44 Mockingbird Circle', 'Sioux Falls', 'South
'56811 Barby Road', 'Washington', 'District of
'70549 Rieder Street', 'Atlanta', 'Georgia',
'57109 Kenwood Hill', 'Portland', 'Oregon', 97221,
'32 Sullivan Plaza', 'Port Charlotte', 'Florida',
OwnerPayments(Date, Amount, Type, OwnerID, PropertyID)
OwnerPayments (2023-02-03, 383.15, 'damage', 1, 17-796-4262);
OwnerPayments (2023-25-09, 1606.48, 'rent', 2, 38-065-9413);
OwnerPayments (2023-02-02, 414.88, 'damage', 3, 89-874-6781);
OwnerPayments (2023-29-04, 1666.44, 'rent', 4, 80-817-9124);
OwnerPayments (2023-30-01, 1830.94, 'rent', 5, 95-951-0987);
OwnerPayments (2023-26-06, 1612.64, 'deposit', 6, 90-433-9746);
OwnerPayments (2023-12-01, 1743.94, 'rent', 7, 11-755-4716);
OwnerPayments (2022-05-11, 640.48, 'damage', 8, 39-343-6699);
OwnerPayments (2023-10-03, 759.52, 'damage', 9, 49-114-2282);
OwnerPayments (2022-16-12, 1781.73, 'rent', 10, 34-178-4133);
OwnerPayments (2023-10-07, 966.04, 'deposit', 11, 74-737-0123);
OwnerPayments (2023-04-05, 49.47, 'damage', 12, 76-292-4974);
OwnerPayments (2023-12-09, 440.86, 'deposit', 13, 36-109-4183);
OwnerPayments (2023-26-08, 1286.14, 'rent', 14, 51-733-6150);
OwnerPayments (2022-30-12, 1801.97, 'rent', 15, 90-270-0882);
OwnerPayments (2023-20-05, 879.49, 'damage', 16, 78-615-3114);
OwnerPayments (2023-12-04, 1303.17, 'rent', 17, 71-299-3496);
OwnerPayments (2023-16-03, 1701.32, 'rent', 18, 08-548-7333);
OwnerPayments (2023-28-06, 28.51, 'damage', 19, 95-590-4337);
OwnerPayments (2023-12-08, 615.36, 'deposit', 20, 93-919-8863);
OwnerPayments (2023-08-11, 109.79, 'damage', 21, 50-625-2232);
OwnerPayments (2023-03-04, 180.63, 'damage', 22, 80-065-3944);
OwnerPayments (2022-16-12, 1074.89, 'deposit', 23, 91-667-8732);
OwnerPayments (2023-24-08, 1752.09, 'rent', 24, 22-059-9916);
OwnerPayments (2023-28-02, 1234.81, 'rent', 25, 97-339-5369);
OwnerPayments (2023-03-08, 274.75, 'damage', 26, 55-804-1178);
OwnerPayments (2023-21-09, 1094.59, 'deposit', 27, 24-741-5294);
OwnerPayments (2023-30-07, 991.52, 'deposit', 28, 82-798-1361);
OwnerPayments (2023-27-06, 1878.24, 'rent', 29, 86-040-9938);
OwnerPayments (2022-12-12, 1801.63, 'rent', 30, 72-977-1705);
OwnerPayments (2023-20-08, 972.37, 'damage', 31, 20-422-7127);
OwnerPayments (2023-02-03, 1204.32, 'deposit', 32, 16-058-4744);
OwnerPayments (2023-01-10, 726.28, 'damage', 33, 84-207-4918);
OwnerPayments (2023-19-01, 469.32, 'damage', 34, 66-354-8181);
OwnerPayments (2023-24-03, 1802.48, 'rent', 35, 90-654-0337);
OwnerPayments (2023-24-04, 1882.13, 'rent', 36, 37-519-3425);
OwnerPayments (2023-18-03, 578.62, 'damage', 37, 03-299-7024);
OwnerPayments (2023-06-08, 1643.7, 'deposit', 38, 00-322-9991);
OwnerPayments (2023-12-02, 1070.97, 'deposit', 39, 30-845-8762);
OwnerPayments (2023-13-04, 1799.38, 'rent', 40, 90-749-5594);
OwnerPayments (2023-02-04, 324.17, 'damage', 41, 56-747-0008);
OwnerPayments (2022-12-11, 691.55, 'damage', 42, 64-550-5450);
OwnerPayments (2023-04-07, 1166.61, 'deposit', 43, 97-826-0855);
OwnerPayments (2023-19-08, 241.8, 'damage', 44, 89-421-1737);INSERT
INSERT
INSERT
INSERT
INSERT
INSERT
INTO
INTO
INTO
INTO
INTO
INTO
/*Mary*/
/*data from
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
insert into
OwnerPayments
OwnerPayments
OwnerPayments
OwnerPayments
OwnerPayments
OwnerPayments
(2023-13-01,
(2022-15-11,
(2023-10-16,
(2022-04-11,
(2023-23-08,
(2023-21-03,
tenant phones*/
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
Tenant_Phone (id,
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
phone
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
444.75, 'damage', 45, 48-255-7238);
310.22, 'damage', 46, 19-481-5640);
1457.7, 'deposit', 47, 38-537-2421);
1711.88, 'rent', 48, 53-697-4435);
32.94, 'damage', 49, 43-061-4960);
1491.94, 'deposit', 50, 34-272-0437);
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
values
(1, '194-286-7529');
(2, '153-176-8204');
(3, '713-586-5525');
(4, '488-179-4833');
(5, '488-214-8563');
(6, '273-768-0427');
(7, '807-593-3699');
(8, '208-526-8742');
(9, '316-549-9488');
(10, '692-492-2847');
(11, '994-344-0250');
(12, '965-503-7936');
(13, '316-105-5398');
(14, '872-129-9146');
(15, '115-972-5224');
(1, '357-266-7408');
(2, '509-214-0250');
(3, '572-613-3642');
(5, '421-706-2562');
(7, '701-684-2411');
(8, '541-982-8098');
(10, '994-338-3875');
(11, '917-500-8236');
(13, '697-781-2923');
(15, '556-290-0924');
/*Data for tenant pets*/
insert into Tenant_Pet (id, name, type ) values (1, 'Elna', 'Butorides striatus');
insert into Tenant_Pet (id, name, type ) values (2, 'Griselda', 'Cordylus
giganteus');
insert into Tenant_Pet(id, name, type ) values (4, 'Mord', 'Mephitis mephitis');
insert into Tenant_Pet(id, name, type ) values (4, 'Gorden', 'Rhabdomys pumilio');
insert into Tenant_Pet(id, name, type ) values (5, 'Christean', 'Bubalus arnee');
insert into Tenant_Pet(id, name, type ) values (6, 'Maria', 'Irania gutteralis');
insert into Tenant_Pet(id, name, type ) values (6, 'Richardo', 'Colaptes
campestroides');
insert into Tenant_Pet(id, name, type ) values (8, 'Franny', 'Grus rubicundus');
insert into Tenant_Pet(id, name, type ) values (9, 'Henryetta', 'Ammospermophilus
nelsoni');
insert into Tenant_Pet(id, name, type ) values (9, 'Rourke', 'Pycnonotus
nigricans');
insert into Tenant_Pet(id, name, type ) values (11, 'Lawton', 'Echimys chrysurus');
insert into Tenant_Pet
varius');
insert into Tenant_Pet
insert into Tenant_Pet
insert into Tenant_Pet
mississippiensis');
(id, name, type ) values (11, 'Lianna', 'Phalacrocorax
(id, name, type ) values (13, 'Kris', 'Casmerodius albus');
(id, name, type ) values (15, 'Layla', 'Ara macao');
(id, name, type ) values (15, 'Ivar', 'Alligator


/*Mary*/

/*Data for TenantPayments*/

insert into tenantpayments (tenantID, date, amount, type) values (1, '2022-11-26', 
' 2509.37', 'Rent'); 
insert into tenantpayments (tenantID, date, amount, type) values (2, '2022-11-03', 
' 1591.19', 'Deposit'); 
insert into tenantpayments (tenantID, date, amount, type) values (3, '2023-09-20', 
' 19.74', 'Damages'); 
insert into tenantpayments (tenantID, date, amount, type) values (4, '2023-02-04', 
' 1989.16', 'Rent'); 
insert into tenantpayments (tenantID, date, amount, type) values (5, '2023-03-25', 
' 1349.42', 'Deposit'); 
insert into tenantpayments (tenantID, date, amount, type) values (6, '2023-02-22', 
' 1928.78', 'Rent'); 
insert into tenantpayments (tenantID, date, amount, type) values (7, '2023-02-07', 
null, 'Rent'); 
insert into tenantpayments (tenantID, date, amount, type) values (8, '2023-01-10', 
' 1529.23', 'Deposit'); 
insert into tenantpayments (tenantID, date, amount, type) values (9, '2023-08-17', 
null, 'Rent'); 
insert into tenantpayments (tenantID, date, amount, type) values (10, '2023-09-13', 
null, 'Rent'); 
insert into tenantpayments (tenantID, date, amount, type) values (11, '2023-02-27', 
null, 'Rent'); 
insert into tenantpayments (tenantID, date, amount, type) values (12, '2023-05-28', 
' 2321.66', 'Rent'); 
insert into tenantpayments (tenantID, date, amount, type) values (13, '2023-08-28', 
' 1490.71', 'Deposit'); 
insert into tenantpayments (tenantID, date, amount, type) values (14, '2023-06-21', 
' 2114.19', 'Rent'); 
insert into tenantpayments (tenantID, date, amount, type) values (15, '2023-03-11', 
' 519.81', 'Damages'); 

#################################################



SELECT *
FROM Tenant_Pet;

/*jackie - q1*/
SELECT CONCAT(o.fname, ' ', o.lname) as fullname, SUM(op.amount), DATE_FORMAT(op.date, "%Y-%m") as month_due 
FROM owners AS o 
JOIN OwnerPayments AS op ON o.ownerid = op.OwnerID 
GROUP BY o.ownerid, month_due 
ORDER BY fullname, month_due; 


/*mary - q2*/
SELECT CONCAT(t.fname, ' ', t.lname) AS fullname , tp.amount 
FROM Tenant AS t   
JOIN  tenantpayments tp ON t.TenantID= tp.tenantID  
WHERE tp.type= 'Rent' AND  tp.amount  IS NOT NULL;   


SELECT CONCAT(o.fname, ' ', o.lname) AS fullname  
FROM owners AS o  
JOIN OwnerPayments op ON op.OwnerID= o.id  
WHERE op.type= 'rent' and op.amount IS NOT NULL;  


/*shashank - q3*/

SELECT CONCAT(t.fname, ' ', t.mname, ' ' , t.lname) AS fullname, op.phone as Phone, l.enddate as endDate, datediff(l.enddate, curdate() <= 186) as leaseExpiring 
From tenant as t 
Join owner_phone as op on t.tenantid = op.ownerid 
Join lease as l on t.tenant = l.leaseid; 

/*Greg - q4*/
SELECT CONCAT(t.fname, ' ', t.lname) AS fullname, Tenant_phone AS Phone, COUNT(Tenant_pet) as Count_of_Tenant_pets 
FROM tenant AS t 
JOIN Count_of_Tenant_pets ON tp.id= t.id 
WHERE Tenant_pet <> null; 

 

SELECT CONCAT (p.street, ‘ ’, p.city, ‘ ’, p.state, ‘ ’, p.zip) AS Address 
FROM Property 
JOIN Address ON tp.id = t.id; 

/*tanishka - q5*/
SELECT PropertyID, Street, City, State, Zip, Type, Capacity
FROM Property
WHERE capacity = 0