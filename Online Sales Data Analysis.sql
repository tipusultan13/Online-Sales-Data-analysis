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
-- most and least digitilized states, top seller based on total spending-
-- pattern of the orders and dates, trend of the product and find the future of the goods                  -
------------------------------------------------------------------------------------------------------------

-- Most Popular Payment Methods --
select PaymentMode, COUNT(PaymentMode) as PopularPaymentMode
from Details
group by PaymentMode
order by PopularPaymentMode DESC
-- COD -> 684, UPI -> 331, Debit Card -> 202, Credit Card -> 163, EMI -> 120 --
-- As we can see cash on delivary is the most popular and EMI is the least popular among the customers --

-- Most Sold Items --
select Sub_Category, sum(Quantity) as MostSoldItem
from Details
group by Sub_Category
order by MostSoldItem DESC
-- Saree -> 795, Hankerchief -> 741, ...--
-- Saree, HankerChief, Stole are the most online selling products -- 

-- Most Profitable Products --
select Sub_Category, sum(Profit) as MostProfitedItem
from Details
group by Sub_Category
order by MostProfitedItem DESC
-- Printers -> 8606, Bookcase -> 6516, Saree -> 4057.....--
-- Even if Saree is the most selling products, the most profit earning good is Printer -- 
-- And some items like Game, Furnishing at the bottom earn negative profit --

-- Most Profitable Category

select Category, sum(Profit) as MostProfitedCategory
from Details
group by Category
order by MostProfitedCategory DESC
-- Clothing -> 13325, Electronics -> 13162, Furniture -> 10476 --
-- Clothing and Electronic products are very close in terms on earning products --
-- No category earns negative profits eventually --

-- Most and Least Digitilized States --

select Details.Order_ID, Profit, State
into DigitilizedCity
from Details
full outer join Orders 
on Details.Order_ID = Orders.Order_ID
select State, sum(Profit) as ProfittedCity
from DigitilizedCity
group by State
order by ProfittedCity desc
-- Rule of thumb is the most digitalized city has most of the internet connection in the data --
-- Hence, they will produce maximum online financial transaction --
-- Madhya Pradesh -> 7382, Maharashtra -> 6963, Uttar Pradesh -> 3358

-- Top Selller Based on Total Spending --
SELECT 
    Orders.Order_ID AS Order_ID_Orders, 
    Orders.Order_Date, 
    Orders.CustomerName, 
    Orders.State, 
    Orders.City, 
    Details.Order_ID AS Order_ID_Details, 
    Details.Amount, 
    Details.Profit, 
    Details.Quantity, 
    Details.Category, 
    Details.Sub_Category, 
    Details.PaymentMode
INTO TotalInfo
FROM Orders
FULL OUTER JOIN Details ON Orders.Order_ID = Details.Order_ID

select CustomerName, sum(Profit) as BestSeller
from TotalInfo
group by CustomerName
order by BestSeller desc
-- Madan Mohan -> 2166 earns maximum profits --

-- Pattern of the Orders and Dates --








