-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT Customers.LastName, Reservations.Date, Reservations.PartySize FROM Reservations
JOIN Customers ON Customers.CustomerID = Reservations.CustomerID
WHERE Reservations.Date LIKE '%-06-14 %' AND Reservations.PartySize = 4 AND Customers.LastName LIKE 'St%';