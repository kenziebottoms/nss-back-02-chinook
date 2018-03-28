-- 1. Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT
  FirstName || " " || LastName AS Name,
  CustomerId,
  Country
FROM Customer
WHERE Country <> "USA";

-- 2. Provide a query only showing the Customers from Brazil.
SELECT * FROM Customer
WHERE Country IS "Brazil";

-- 3. Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
SELECT
  c.FirstName || " " || c.LastName as Name,
  i.InvoiceId,
  i.InvoiceDate,
  c.Country
FROM Customer c
LEFT JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE c.Country IS "Brazil";

-- 4. Provide a query showing only the Employees who are Sales Agents.
SELECT * FROM Employee
WHERE Title LIKE "%Sale%Agent%";

-- 5. Provide a query showing a unique list of billing countries from the Invoice table.
SELECT BillingCountry FROM Invoice GROUP BY BillingCountry;

-- 6. Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
SELECT
  i.InvoiceId,
  (e.FirstName || " " || e.LastName) as Name
FROM Invoice i
  LEFT JOIN Customer c ON c.CustomerId = i.CustomerId
  LEFT JOIN Employee e ON c.SupportRepId = e.EmployeeId;

-- 7. Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
SELECT
  (c.FirstName || " " || c.LastName) as CustomerName,
  (e.FirstName || " " || e.LastName) as SalesAgentName,
  i.Total,
  i.BillingCountry
FROM Invoice i
  LEFT JOIN Customer c ON c.CustomerId = i.CustomerId
  LEFT JOIN Employee e ON c.SupportRepId = e.EmployeeId;

-- 8. How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?
SELECT
  (SELECT
    COUNT(*)
  FROM Invoice i
  WHERE SUBSTR(i.InvoiceDate,0,5) = "2009") AS Invoices09,
  (SELECT
    COUNT(*)
    FROM Invoice i
    WHERE SUBSTR(i.InvoiceDate,0,5) = "2011") AS Invoices11;

-- 9. Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
SELECT
  COUNT(*)
FROM InvoiceLine il WHERE il.InvoiceId = 37;

-- 10. Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.
SELECT
  InvoiceId,
  COUNT(*)
FROM InvoiceLine il
GROUP BY InvoiceId;

-- 11. Provide a query that includes the track name with each invoice line item.
SELECT
  t.Name,
  il.*
FROM InvoiceLine il
LEFT JOIN Track t ON t.TrackId = il.TrackId;

-- 12. Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT
  t.Name as Song,
  ar.Name AS Artist,
  il.* FROM InvoiceLine il
LEFT JOIN Track t ON t.TrackId = il.TrackId
LEFT JOIN Album al ON al.AlbumId = t.AlbumId
LEFT JOIN Artist ar ON ar.ArtistId = al.ArtistId;

-- 13. Provide a query that shows the # of invoices per country.
SELECT
  Invoice.BillingCountry,
  COUNT(*)
FROM Invoice
GROUP BY BillingCountry;

-- 14. Provide a query that shows the total number of tracks in each playlist. The Playlist name should be included on the resultant table.
SELECT
  p.Name,
  COUNT(*)
FROM Playlist p
LEFT JOIN PlaylistTrack pt ON pt.PlaylistId = p.PlaylistId
GROUP BY pt.PlaylistId;

-- 15. Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre.
SELECT
  t.Name AS Song,
  a.Title as Album,
  mt.Name AS MediaType,
  g.Name AS Genre
FROM Track t
LEFT JOIN MediaType mt on mt.MediaTypeId = t.MediaTypeId
LEFT JOIN Album a ON a.AlbumId = t.AlbumId
LEFT JOIN Genre g ON g.GenreId = t.GenreId;

-- 16. Provide a query that shows all Invoices but includes the # of invoice line items.
SELECT
  i.*,
  COUNT(*) as LineCount
FROM Invoice i
LEFT JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId;

-- 17. Provide a query that shows total sales made by each sales agent.
SELECT
  e.FirstName || " " || e.lastName as Name,
  COUNT(*) AS Sales
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY EmployeeId;

-- 18. Which sales agent made the most in sales in 2009?
  -- Margaret Park
SELECT
  e.FirstName || " " || e.lastName as Name,
  COUNT(*) AS Sales
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE SUBSTR(i.InvoiceDate,0,5) = "2009"
GROUP BY EmployeeId
ORDER BY Sales DESC;

-- 19. Which sales agent made the most in sales in 2010?
  -- Jane Peacock
SELECT
  e.FirstName || " " || e.lastName as Name,
  COUNT(*) AS Sales
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE SUBSTR(i.InvoiceDate,0,5) = "2010"
GROUP BY EmployeeId
ORDER BY Sales DESC;

-- 20. Which sales agent made the most in sales over all?
  -- Jane Peacock
SELECT
  e.FirstName || " " || e.lastName as Name,
  COUNT(*) AS Sales
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY EmployeeId
ORDER BY Sales DESC;

-- 21. Provide a query that shows the # of customers assigned to each sales agent.

-- 22. Provide a query that shows the total sales per country. Which country's customers spent the most?

-- 23. Provide a query that shows the most purchased track of 2013.

-- 24. Provide a query that shows the top 5 most purchased tracks over all.

-- 25. Provide a query that shows the top 3 best selling artists.

-- 26. Provide a query that shows the most purchased Media Type.

-- 27. Provide a query that shows the number tracks purchased in all invoices that contain more than one genre.