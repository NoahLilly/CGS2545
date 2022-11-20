use dealership;

CREATE TABLE model (
ID int not null AUTO_increment,
model varchar(50) NOT NULL unique,
PRIMARY KEY (ID)
);

CREATE TABLE make (
ID int NOT NULL AUTO_INCREMENT,
make varchar(50) NOT NULL unique,
PRIMARY KEY (ID)
);

CREATE TABLE type (
ID int NOT NULL AUTO_INCREMENT,
type varchar(50) NOT NULL unique,
PRIMARY KEY (ID)
);

CREATE TABLE color (
ID int NOT NULL AUTO_INCREMENT,
color varchar(25) NOT NULL unique,
PRIMARY KEY (ID)
);

CREATE TABLE engine (
ID int NOT NULL AUTO_INCREMENT,
engine varchar(10) NOT NULL unique,
PRIMARY KEY (ID)
);

CREATE TABLE transmission (
ID int NOT NULL AUTO_INCREMENT,
transmission varchar(40) NOT NULL unique,
PRIMARY KEY (ID)
);

CREATE TABLE cylinders(
ID int NOT NULL AUTO_INCREMENT,
cylinders varchar(2) NOT NULL unique,
PRIMARY KEY (ID)
);

select distinct model from vehicle;
INSERT INTO model(model)
SELECT DISTINCT model
FROM vehicle;

select distinct make from vheicle;
INSERT INTO make(make)
SELECT DISTINCT make
FROM vehicle;

select distinct type from vehicle;
INSERT INTO type(type)
SELECT DISTINCT type
FROM vehicle;

select distinct color from vehicle;
INSERT INTO color(color)
SELECT DISTINCT color
FROM vehicle;

select distinct engine from vehicle;
INSERT INTO engine(engine)
SELECT DISTINCT engine
FROM vehicle;

select distinct transmission from vehicle;
INSERT INTO transmission(transmission)
SELECT DISTINCT transmission
FROM vehicle;

select distinct cylinders from vehicle;
INSERT INTO cylinders(cylinders)
SELECT DISTINCT cylinders
FROM vehicle;

select * from make order by id;
UPDATE vehicle
SET make = 1
WHERE make = 'BMW';

UPDATE vehicle
SET make = 2
WHERE make = 'Ford';

UPDATE vehicle
SET make = 3
WHERE make = 'Toyota';

select * from type order by id;
UPDATE vehicle
SET type = 1
WHERE type = 'Sedan';

UPDATE vehicle
SET type = 2
WHERE type = 'Coupe';

UPDATE vehicle
SET type = 3
WHERE type = 'Convertible';

UPDATE vehicle
SET type = 4
WHERE type = 'Wagon';

UPDATE vehicle
SET type = 5
WHERE type = 'Truck (Regular Cab)';

UPDATE vehicle
SET type = 6
WHERE type = 'Truck (SuperCrew)';

UPDATE vehicle
SET type = 7 
WHERE type = 'Truck (SuperCab)';

UPDATE vehicle
SET type = 8
WHERE type = 'Hatchback';

UPDATE vehicle
SET type = 9
WHERE type = 'SUV';

select * from model order by id;

UPDATE vehicle
SET model = 1
WHERE model = '3 Series';

UPDATE vehicle
SET model = 2
WHERE model = '2 Series';

UPDATE vehicle
SET model = 3
WHERE model = '1 Series';

UPDATE vehicle
SET model = 4
WHERE model = '5 Series';

UPDATE vehicle
SET model = 5
WHERE model = '6 Series';

UPDATE vehicle
SET model = 6
WHERE model = '7 Series';

UPDATE vehicle
SET model = 7
WHERE model = '8 Series';

UPDATE vehicle
SET model = 8
WHERE model = 'F-150';

UPDATE vehicle
SET model = 9
WHERE model = 'F-250';

UPDATE vehicle
SET model = 10
WHERE model = 'F-350';

UPDATE vehicle
SET model = 11
WHERE model = 'Prius';

UPDATE vehicle
SET model = 12
WHERE model = 'Camry';

UPDATE vehicle
SET model = 13
WHERE model = 'Corolla';

UPDATE vehicle
SET model = 14
WHERE model = 'RAV4';

UPDATE vehicle
SET model = 15
WHERE model = '4Runner';

select * from color order by id;

UPDATE vehicle
SET color = 1
WHERE color= 'Alpine White';

UPDATE vehicle
SET color = 2
WHERE color= 'Potamaic Blue';

UPDATE vehicle
SET color = 3
WHERE color= 'Tanzanite Blue';

UPDATE vehicle
SET color = 4
WHERE color= 'Mineral Grey';

UPDATE vehicle
SET color = 5
WHERE color= 'Sunset Orange';

UPDATE vehicle
SET color = 6
WHERE color= 'Mediterranean Blue';

UPDATE vehicle
SET color = 7
WHERE color= 'Dravit Grey Metallic';

UPDATE vehicle
SET color = 8
WHERE color= 'Black Sapphire';

UPDATE vehicle
SET color = 9
WHERE color= 'Velocity Blue';

UPDATE vehicle
SET color = 10
WHERE color= 'Guard';

UPDATE vehicle
SET color = 11
WHERE color= 'Antimatter Blue';

UPDATE vehicle
SET color = 12
WHERE color= 'Space White';

UPDATE vehicle
SET color = 13
WHERE color= 'Carbonized Gray';

UPDATE vehicle
SET color = 14
WHERE color= 'OxFord White';

UPDATE vehicle
SET color = 15
WHERE color= 'Iconic Silver';

UPDATE vehicle
SET color = 16
WHERE color= 'Rapid Red';

UPDATE vehicle
SET color = 17
WHERE color= 'Agate Black';

UPDATE vehicle
SET color = 18
WHERE color= 'Red';

UPDATE vehicle
SET color = 19
WHERE color= 'White';

UPDATE vehicle
SET color = 20
WHERE color= 'Black';

UPDATE vehicle
SET color = 21
WHERE color= 'Grey';

select * from engine order by id;

UPDATE vehicle
SET engine = 1
Where engine = '2.0';

UPDATE vehicle
SET engine = 2
Where engine = '3.0';

UPDATE vehicle
SET engine = 3
Where engine = '3.3';

UPDATE vehicle
SET engine = 4
Where engine = '5.0';

UPDATE vehicle
SET engine = 5
Where engine = '2.7';

UPDATE vehicle
SET engine = 6
Where engine = '3.5';

UPDATE vehicle
SET engine = 7
Where engine = '1.8';

UPDATE vehicle
SET engine = 8
Where engine = '1.5';

select * from transmission order by id;

UPDATE vehicle
SET transmission = 1
where transmission = '8-speed shiftable automatic';

UPDATE vehicle
SET transmission = 2
where transmission = '6-speed manual';

UPDATE vehicle
SET transmission = 3
where transmission = '10-speed shiftable automatic';

UPDATE vehicle
SET transmission = 4
where transmission = '6-speed shiftable automatic';

UPDATE vehicle
SET transmission = 5
where transmission = 'continuously variable-speed automatic';

select * from cylinders order by id;

UPDATE vehicle
SET cylinders = 1
WHERE cylinders = 'I4';

UPDATE vehicle
SET cylinders = 2
WHERE cylinders = 'I6';

UPDATE vehicle
SET cylinders = 3
WHERE cylinders = 'V6';

UPDATE vehicle
SET cylinders = 4
WHERE cylinders = 'V8';

ALTER TABLE vehicle MODIFY COLUMN make int NOT NULL;

ALTER TABLE vehicle MODIFY COLUMN model int NOT NULL;

ALTER TABLE vehicle MODIFY COLUMN engine int NOT NULL;

ALTER TABLE vehicle MODIFY COLUMN transmission int NOT NULL;

ALTER TABLE vehicle MODIFY COLUMN color int NOT NULL;

ALTER TABLE vehicle MODIFY COLUMN type int NOT NULL;

ALTER TABLE vehicle MODIFY COLUMN cylinders int NOT NULL;

ALTER TABLE vehicle
ADD FOREIGN KEY (make) REFERENCES make(ID);

ALTER TABLE vehicle
ADD FOREIGN KEY (model) REFERENCES model(ID);

ALTER TABLE vehicle
ADD FOREIGN KEY (engine) REFERENCES engine(ID);

ALTER TABLE vehicle
ADD FOREIGN KEY (transmission) REFERENCES transmission(ID);

ALTER TABLE vehicle
ADD FOREIGN KEY (color) REFERENCES color(ID);

ALTER TABLE vehicle
ADD FOREIGN KEY (type) REFERENCES type(ID);

ALTER TABLE vehicle
ADD FOREIGN KEY (cylinders) REFERENCES cylinders(ID);

SELECT v.id, ty.type, ma.make, mo.model, co.color, e.engine, cy.cylinders, tr.transmission, v.vin, v.odometer, v.retail, v.year
  FROM color co, cylinders cy, engine e, make ma, model mo, transmission tr, type ty, vehicle v
 WHERE  v.color = co.id
   AND  v.cylinders = cy.id
   AND  v.engine = e.id
   AND  v.make = ma.id
   AND  v.model = mo.id
   AND  v.transmission = tr.id
   AND  v.type = ty.id
ORDER BY v.id;