Use Dealership;
update employee
SET email = replace(email, 'renovations', 'dealership');
ALTER TABLE sale MODIFY column saleprice decimal (8,2) NOT NULL;
ALTER TABLE sale ALTER salePrice SET DEFAULT '0.0';
INSERT INTO sale (employeeId, customerId, vehicleId) VALUES
('10', '14', '3'),
('1', '30', '32'),
('2', '8', '15'),
('4', '18', '21'), 
('7', '12', '9'),
('9', '31', '35');
UPDATE sale
SET saleprice = 
( SELECT retail
 FROM vehicle
 WHERE id = 3
)
WHERE vehicleId = 3;

UPDATE sale
SET saleprice = 
( SELECT retail
 FROM vehicle
 WHERE id = 32
)
WHERE vehicleId = 32;
 
UPDATE sale
SET saleprice = 
( SELECT retail
 FROM vehicle
 WHERE id = 15
)
WHERE vehicleId = 15;

UPDATE sale
SET saleprice = 
( SELECT retail
 FROM vehicle
 WHERE id = 21
)
WHERE vehicleId = 21;

UPDATE sale
SET saleprice = 
( SELECT retail
 FROM vehicle
 WHERE id = 9
)
WHERE vehicleId = 9;

UPDATE sale
SET saleprice = 
( SELECT retail
 FROM vehicle
 WHERE id = 35
)
WHERE vehicleId = 35;

create view saleView as
select concat(c.firstname,'', c.lastname) as 'customer name',
    concat(c.address,'', cs.city,'', cs.state,'', cs.zipcode) as 'customer address',
    c.phone as 'customer phone',
    c.email as 'customer email',
    concat(e.firstname, ' ', e.lastname) as 'sales associate',
    e.phone as 'sales associate phone',
    e.email as 'sales associate email',
    v.year as 'year',
    ma.make as 'make',
    mo.model as 'model',
    co.color as 'color',
    t.type as 'type', 
    v.vin as 'vin',
    s.salePrice as 'sale price'
from customer c, employee e, sale s, citystate cs, vehicle v, make ma, model mo, color co, type t
where s.customerId = c.ID 
    and s.employeeID = e.ID
    and s.vehicleID = v.ID
    and c.zipcode = cs.zipcode
    and v.make = ma.ID 
    and v.model = mo.ID
    and v.color = co.ID
    and v.type = t.ID
ORDER by v.ID;

