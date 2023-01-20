-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

INSERT INTO Customers (FirstName, LastName, Email)
VALUES ("Sam", "McAdams", "smac@kineteconic.com");

SELECT * FROM Customers
ORDER BY CustomerID DESC;

INSERT INTO Reservations (CustomerID, Date, PartySize)
  VALUES ((SELECT CustomerID 
    from Customers 
    where Email="smac@kineteconic.com"),
    "2022-08-12 18:00:00",
    5);

SELECT * FROM Reservations
ORDER BY CustomerID DESC;