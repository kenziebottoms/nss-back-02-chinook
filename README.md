# Chinook database exercises

SQL query exercise copied from [this repo](https://github.com/nashville-software-school/bangazon-corp/tree/master/post-orientation-exercises/chinook).

## Part 1: ERD

### Introduction 
Before we move on to shiny, new things we are going to ramp up the difficulty a bit, and introduce you to the [Chinook Database](https://github.com/lerocha/chinook-database/blob/master/ChinookDatabase/DataSources/Chinook_Sqlite.sqlite), a sample db that countless back end devs have used for practicing their SQL skills. As the site tells us, "The Chinook data model represents a digital media store, including tables for artists, albums, media tracks, invoices and customers." 

### Requirements

1. Open [the Chinook database](assets/db.sqlite) in DB Browser.
1. Build an ERD.
    
    :warning: Be a good, honest, upstanding citizen and don't click the link on the Chinook home page to view the data model or search Google images for "Chinook database". Do your best to glean the relationships from the tables and make a complete ERD before peeking to see if you've hit the mark.

## Part 2: query practice

Let's cement your SQL query bonafides with a tougher test of your new skills. Keep the Chinook database handy...

### Requirements

Use the [Chinook Database](https://chinookdatabase.codeplex.com/) and the [DB Browser for SQLite](http://sqlitebrowser.org/) we downloaded in the ERD exercise.

For each of the following exercises, provide the appropriate query.

Keep your successful queries in a `chinook.sql` file.

1. :heavy_check_mark: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
2. :heavy_check_mark: Provide a query only showing the Customers from Brazil.
3. :heavy_check_mark: Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
4. :heavy_check_mark: Provide a query showing only the Employees who are Sales Agents.
5. :heavy_check_mark: Provide a query showing a unique list of billing countries from the Invoice table.
6. :heavy_check_mark: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
7. :heavy_check_mark: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
8. :heavy_check_mark: How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?
9. :heavy_check_mark: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
10. :heavy_check_mark: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: [GROUP BY](http://www.sqlite.org/lang_select.html#resultset)
11. :heavy_check_mark: Provide a query that includes the track name with each invoice line item.
12. :heavy_check_mark: Provide a query that includes the purchased track name AND artist name with each invoice line item.
13. :heavy_check_mark: Provide a query that shows the # of invoices per country. HINT: [GROUP BY](http://www.sqlite.org/lang_select.html#resultset)
14. Provide a query that shows the total number of tracks in each playlist. The Playlist name should be included on the resultant table.
15. Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre.
16. Provide a query that shows all Invoices but includes the # of invoice line items.
17. Provide a query that shows total sales made by each sales agent.
18. Which sales agent made the most in sales in 2009?
19. Which sales agent made the most in sales in 2010?
20. Which sales agent made the most in sales over all?
21. Provide a query that shows the # of customers assigned to each sales agent.
22. Provide a query that shows the total sales per country. Which country's customers spent the most?
23. Provide a query that shows the most purchased track of 2013.
24. Provide a query that shows the top 5 most purchased tracks over all.
25. Provide a query that shows the top 3 best selling artists.
26. Provide a query that shows the most purchased Media Type.
27. Provide a query that shows the number tracks purchased in all invoices that contain more than one genre.