---  (SQL Projects)

/* (Q.1) 
We will need a list of all staff members, including their first and last names,
 email addresses, and the store identification number where they work */
 
 Select 
 first_name,
 Last_name,
 email,
 store_id
 From staff;


/* (Q.2) 
We will need separate counts of inventory items held at each of your two stores */

Select
store_id,
Count(inventory_id) as inventory_items
From inventory
Group By store_id;


/* (Q.3) 
We will need a count of active customers for each of your stores. Separately, please */

Select
store_id,
Count(customer_id) as Active_customers 
From customer
Where active = 1
Group BY store_id;

/* (Q.4) 
In order to assess the liability of a data breach, we will need you to provide 
a count of all customer email addresses stored in the database */

Select
Count(email) as Total_email
From Customer;


/* (Q.5) 
We are interested in how diverse your film offering is as a means of understanding how likely you are to keep 
customers engaged in the future. Please provide a count of unique film titles you have in inventory at 214,=,
 each store and then provide a count of the unique categories of films you provide */
 
 Select 
store_id,
Count(Distinct film_id) as Unique_film
From inventory
Group By store_id;

Select 
Count(Distinct name) as Unique_categories
From category;
 
 
 /* (Q.6) 
 We would like to understand the replacement cost of your films. Please provide the replacement cost 
 for the film that is least expensive to replace, the most expensive to replace, and the average of all films you carry */
 
 Select 
 Min(replacement_cost) as Least_Expensive,
 Max(replacement_cost) as Most_Expensive,
 Avg(replacement_cost) as Average_replacement_cost
 From film;
 
 
 /* (Q.7) 
 We are interested in having you put payment monitoring systems and maximum payment processing 
 restrictions in place in order to minimize the future risk of fraud by your staff. 
 Please provide the average payment you process, as well as the maximum payment you have processed */
 
 
Select
Avg(amount) as Average_amount,
Max(amount) as Maximum_amount
From payment;

 
 /* (Q.8) 
 We would like to better understand what your customer base looks like. 
 Please provide a list of all customer identification values, with a count 
 of rentals they have made all-time, with your highest volume customers at the top of the list */
 
 Select 
 customer_id,
 Count(rental_id) Numer_of_rental
 From rental
 Group By customer_id
 Order By
 Count(rental_id) DESC;
