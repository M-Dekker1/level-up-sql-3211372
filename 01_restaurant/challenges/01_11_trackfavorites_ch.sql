-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

select * from Customers
WHERE LastName='Goldwater' AND FirstName='Cleo';

UPDATE Customers
SET FavoriteDish = (SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad')
WHERE CustomerID = 42;

select * from Customers
where CustomerID = 42;