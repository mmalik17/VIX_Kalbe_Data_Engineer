-- Database: Kalbe

-- DROP DATABASE IF EXISTS "Kalbe";

-- a. Create a database with ‘KALBE’ as the name
CREATE DATABASE IF NOT EXISTS "Kalbe"; 

-- b. Inside the database, create a table with the name ‘Inventory’
CREATE TABLE IF NOT EXISTS public.Inventory
(
    Item_code integer,
	Item_name character varying (30),
	Item_price decimal(10,2),
	Item_total integer,
	PRIMARY KEY(Item_code)
);

-- c. Insert data
INSERT INTO Inventory 
VALUES 
(2341,'Promag Tablet',3000,100),
(2342,'Hydro Coco 250ML',7000,20),
(2343,'Nutrive Benecol 100ML',20000,30),
(2344,'Blackmores Vit C 500Mg',95000,45),
(2345,'Entrasol Gold 370G',90000,120);


-- d. Show item_name that has the highest number in Item_total
select item_name
from Inventory
order by item_total desc
limit 1
-- query ini dipilih karena lebih efisien dibanding menggunakan subquery

-- e. Update the Item_price of the output of question bullet
-- Jawab: 
Update Inventory
Set item_price = 67000
Where item_total = (
	Select max(item_total)
	from inventory
	);

-- f. What will happen if we insert another Item_name with Item_code of 2343 into the table?
-- Jawab: muncul error berupa ' duplicate key value violates unique constraint "inventory_pkey" '

-- g. Delete the Item_name that has the lowest number of Item_total
DELETE FROM Inventory
WHERE Item_total = 
	(
	 SELECT MIN(Item_total) 
	 FROM Inventory
	)