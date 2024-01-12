--create database OnlineSalesData
--use OnlineSalesData

--Data Exploration--
--------------------
--------------------

select top 2 * from Details
select top 2 * from Orders
-- This is a online sales data of several products taken from Kaggle --

-- Delete Missing Values --
delete
from Details
where Order_ID is NULL
    or Amount is NULL
    or Profit is NULL
    or Quantity is NULL
    or Category is NULL
    or Sub_Category is NULL
    or PaymentMode is NULL

delete
from Orders
where Order_ID is NULL
    or Order_Date is NULL
    or CustomerName is NULL
    or State is NULL
    or City is NULL

-- Delete Duplicate Values --
SELECT DISTINCT *
INTO Temp1
FROM Details
DROP TABLE Details
EXEC sp_rename 'Temp1', 'Details'
select * from Details

SELECT DISTINCT *
INTO Temp
FROM Orders
DROP TABLE Orders
EXEC sp_rename 'Temp', 'Orders'
select * from Orders

-- Explore the Basics Statistics --

-- Questions that can be solved --
------------------------------------------------------------------------------------------------------------
-- Popular payment methods, most sold items, most profitable products, most profitable category,           -
-- most and least digitilized states, most and least digitalized city, top Customer based on total spending-
-- pattern of the orders and dates, trend of the product and find the future of the goods                  -
------------------------------------------------------------------------------------------------------------














