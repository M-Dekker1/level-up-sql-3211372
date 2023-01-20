-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

select Name, Description, Price from Dishes
  ORDER BY Price;

select Name, Description, Price from Dishes
  WHERE Type IN ('Appetizer', 'Beverage')
  ORDER BY Type;

select Name, Description, Price from Dishes
  where type not in ('Beverage')
  order by Type;