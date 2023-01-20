-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT Orders.CustomerID, COUNT(Orders.CustomerID) AS "Number of Orders" FROM Orders
GROUP BY Orders.CustomerID
--JOIN Customers ON Orders.CustomerID = Customers.CustomerID
ORDER BY COUNT(Orders.CustomerID) DESC;