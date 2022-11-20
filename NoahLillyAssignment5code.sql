use database dealership;
INSERT INTO cylinders (cylinders) VALUES ('L4');
select * from make order by id;
INSERT INTO make (make) VALUES
('Buick'),
('Chevrolet'),
('Chrysler'),
('Dodge'),
('Hummer'),
('Jeep'),
('Ram'),
('Saturn'),
('Tesla'),
('Acura'),
('Honda'),
('Hyundai'),
('Lexus'),
('Mazda'),
('Nissan'),
('Subaru');
select * from model order by id;
INSERT INTO model (model) VALUES
('Rogue'),
('Titan'),
('Altima'),
('Frontier'),
('Atenza'),
('CX-3'),
('Axela'),
('Demio'),
('Renegade'),
('Compass'),
('Wrangler');
select * from transmission order by id;
INSERT INTO transmission (transmission) VALUES
('9 Speed Automatic');
select * from type order by id;
INSERT INTO vehicle (type, make, model, color, engine, cylinders, transmission, vin, odometer, retail, year) VALUES
('9', '18', '16', '2', '6', '3', '5', 'JF1SG63685H737629', '5', '27360.00', '2023'),
('7', '18', '17', '4', '4', '4', '6', '2HGEJ6617YH561116', '8', '39700.00', '2023'), 
('1', '18', '18', '6', '6', '3', '5', '1N6AD0EV9BC405351', '2', '263840', '2023'),
('5', '18', '19', '8', '3', '3', '6', '2T1BU4EE4AC381738', '10', '39914.00', '2023'),
('4', '17', '20', '3', '1', '5', '4', '1G8JW54RX3Y520537', '18000', '41700.00', '2021'),
('1', '17', '22', '6', '7', '5', '4', '1FMJU1J5XAEA76057', '26000', '196340', '2019'),
('8', '17', '23', '9', '8', '5', '2', '4S4BRCDC2E3267937', '53000', '12151.00', '2014'),
('9', '17', '21', '12', '1', '5', '2', 'JM1BJ245221484094', '21000', '15991.00', '2019'),
('9', '9', '24', '14', '8', '5', '4', '4T4BF1FK1ER374026', '10', '297440', '2023'),
('9', '9', '25', '16', '8', '5', '2', '1FMZU63W72ZB66847', '9000', '244940', '2021'),
('9', '9', '26', '18', '1', '5', '1', '1GKKRRED3BJ228168', '12000', '46900.00', '2020');
CREATE TABLE makeModel
(
    makeId int not null,
    modelid int not null,
    primary key(makeId, modelid),
    foreign key (makeId) references make (id),
    foreign key (modelid) references model (id)
);

INSERT INTO makeModel (makeId, modelid)
SELECT DISTINCT make, model
FROM vehicle;