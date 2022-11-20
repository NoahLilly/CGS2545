use Dealership;

CREATE TABLE cityState (
    city varchar(90) NOT NULL,
    state char(2) NOT NULL,
    zipCode char(5) NOT NULL unique,
    PRIMARY KEY (zipCode)
);

Insert into cityState (city, state, zipCode) VALUES
('Piscataway', 'NJ', '08854'),
('Clover', 'SC', '29710'),
('Duluth', 'GA', '30096'),
('Nashville', 'TN', '37205'),
('Willoughby', 'OH', '44094'),
('Jupiter', 'FL', '33458'),
('Huntington Beach', 'CA', '92647'),
('Memphis', 'TN', '38117'),
('Abingdon', 'VA', '24210'),
('San Marcos', 'CA', '92078'),
('Jefferson', 'LA', '70121'),
('Covington', 'LA', '70433'),
('Ontario', 'CA', '91764'),
('Cuyahoga Falls', 'OH', '44223'),
('Battle Creek', 'MI', '49016'),
('Scottsdale', 'AZ', '85260'),
('Glenarden', 'MD', '20706');

ALTER TABLE customer
ADD FOREIGN KEY (zipCode) REFERENCES cityState(zipCode);

ALTER TABLE employee
ADD FOREIGN KEY (zipCode) REFERENCES cityState(zipCode);

CREATE VIEW customerView AS
SELECT c.firstname, c.lastname, c.address, cs.city, cs.state, c.zipCode, c.phone, c.email
FROM customer c, cityState cs
WHERE c.zipCode = cs.zipCode;

CREATE VIEW employeeView AS
SELECT e.firstname, e.lastname, e.address, cs.city, cs.state, e.zipCode, e.phone, e.email
FROM employee e, cityState cs
WHERE e.zipCode = cs.zipCode;

CREATE TABLE sale
(
    employeeId int NOT NULL,
    customerId int NOT NULL,
    vehicleId int NOT NULL,
    salePrive decimal(8,2) NOT NULL,
    PRIMARY KEY (employeeId, customerId, vehicleId),
    FOREIGN KEY (employeeId) REFERENCES employee(ID),
    FOREIGN KEY (customerId) REFERENCES customer(ID),
    FOREIGN KEY (vehicleId) REFERENCES vehicle(ID)
    );