# Online Sale Data analysis

## Table of Content 
1. Motivation
2. Data
3. Research Questions
4. Tools and Methodology
5. Findings
6. Discussion

### 1. Motivation
In the era of digital commerce, data reigns supreme. This project, "Online Sales Data Analysis," is driven by the need for businesses to unravel the insights hidden within their online sales data. This analysis aims to empower businesses with the strategic intelligence needed to optimize sales strategies, enhance product offerings, and stay ahead in the competitive e-commerce landscape by scrutinizing customer behaviors, market trends, and performance metrics. In a nutshell, the project's motivation lies in the transformative power of data-driven decision-making for online businesses

### 2. Data 
The dataset comprises two main tables, "Details" and "Orders," obtained from Kaggle.com. 

<img width="831" alt="Screenshot 2024-01-23 at 13 25 08" src="https://github.com/tipusultan13/Online-Sales-Data-analysis/assets/156308034/df0ec05a-d275-419e-a910-7959dd7f3f0a">

This dataset provides a comprehensive view of online sales transactions, including details about the products (quantity, category, payment mode) and customer-related information (order date, customer name, location). The integration of these tables allows for a holistic analysis of online sales dynamics, enabling insights into product performance, customer behavior, and geographic trends.
[Click here](https://www.kaggle.com/datasets/samruddhi4040/online-sales-data) to see the overview or the data

### 3. Research Questions
1. Which one is the most popular payment method?
2. Which item is the most sold item?
3. Which product is the most profitable products?
4. which category is the most profitable category?
5. Which state is the most underdeveloped?
6. Which seller is the top seller based on total Profit Earning?
7. Is there any pattern of the orders and dates?

### 4. Tools and Methodology
1. SQL
2. Excel
3. Tableau
   
SQL is used to clean and analyze the data in order to complete this project. After finding the answers, the data was organized via Excel before uploading those to Tableau. Finally, Tableau was used to visualize all the findings.

### 5. Findings

### 5.1. Which one is the most popular payment method?

<img width="407" alt="Screenshot 2024-01-23 at 13 45 35" src="https://github.com/tipusultan13/Online-Sales-Data-analysis/assets/156308034/fd97bdcd-cca8-407a-b006-c8edaf4a3a50">

1. The most popular payment method is COD, which stands for cash on delivery. 684 payments have been recorded using this method.
2. The difference is almost double from COD to UPI.

### 5.2. Which item is the most sold item?

<img width="679" alt="Screenshot 2024-01-23 at 13 52 44" src="https://github.com/tipusultan13/Online-Sales-Data-analysis/assets/156308034/4d614807-e607-4d79-8c83-cbc8519f9fe1">

1. Saree is the most sold item. The total number of sales is 795.
2. The most sold products are clothing. Surprisingly, the less sold items are also clothing. 

### 5.3. Which product is the most profitable products?

<img width="1024" alt="Screenshot 2024-01-23 at 14 03 46" src="https://github.com/tipusultan13/Online-Sales-Data-analysis/assets/156308034/012fddb0-71d2-4966-9734-a5a84eb8767a">

1. Even if the saree is the most sold item, it is not the most profitable.
2. The most profitable item is the printer.
3. Items like gadgets or furniture are losing profits. 

### 5.4. which category is the most profitable category?

<img width="255" alt="Screenshot 2024-01-23 at 14 18 46" src="https://github.com/tipusultan13/Online-Sales-Data-analysis/assets/156308034/6bcf01f7-baad-4902-9d1e-740c8c001b05">

1. Most of the profits come from Clothing and Electronics.
2. It's good to see that even if some product loses profit, eventually, no category loses any profit. 

### 5.5. Which state is the most underdeveloped?

<img width="682" alt="Screenshot 2024-01-24 at 09 42 07" src="https://github.com/tipusultan13/Online-Sales-Data-analysis/assets/156308034/ef159d10-57e7-4671-b5fe-e96b9e03942f">

1. It is very difficult to define an underdeveloped city without knowing its GDP per capita or some other economic measure. However, the graph clearly visualizes the city list, showing where most of the transactions happened.
2. In the most digitalized cities, people most often have internet. Hence, they are highly likely to order online rather than going to to shop in person. 

### 5.6. Which seller is the top seller based on total Profit Earning?

<img width="614" alt="Screenshot 2024-01-24 at 09 49 58" src="https://github.com/tipusultan13/Online-Sales-Data-analysis/assets/156308034/f2d90c6b-1a89-4306-9948-fe1f72a1d339">

1. According to the data, the graph says Madan Mohan, Arushi, and Madhav are the most profit-earning sellers. 

### 5.7. Is there any pattern of the orders and dates?

Here, We have two graphs to explain the situation. 
1. Most selling months
2. Most Profitable months.

<img width="826" alt="Screenshot 2024-01-24 at 09 54 27" src="https://github.com/tipusultan13/Online-Sales-Data-analysis/assets/156308034/670e6036-4e80-4eb0-92e1-9656a037bbdb">

We have the most profitable months, where the seller earns most of the profits. The most profitable month is November. Maybe it is because November is just before Christmas, and everyone wants to buy expensive gifts for their family.    

<img width="524" alt="Screenshot 2024-01-24 at 09 54 46" src="https://github.com/tipusultan13/Online-Sales-Data-analysis/assets/156308034/efe62982-82dc-416d-92f7-71c2f7ccc0fe">

Then In most selling months, we have the measurement of the total quantity sold. The month's name is January. It is because January is the start of the year. And most households and offices want some stuff from the budget.

# Check the complete dashboard [here](https://public.tableau.com/app/profile/tipusultan13/vizzes) 

### 6. Discussion

The "Online Sales Data Analysis" project explores the transformative potential of data-driven decision-making in the digital commerce era. Leveraging SQL, Excel, and Tableau, the analysis unveils critical insights, revealing Cash on Delivery as the most popular payment method and Saree as the best-selling item. Profits vary across categories, with Clothing and Electronics emerging as major contributors. Geographic trends hint at a correlation between digitalization and online transactions. Individual seller performance analysis identifies Madan Mohan, Arushi, and Madhav as top profit earners. Temporal patterns highlight November as the most profitable month, possibly driven by holiday shopping, and January as the highest-selling month. These findings provide actionable intelligence for businesses to optimize strategies, refine product offerings, and tailor marketing efforts while acknowledging the study's limitations in defining underdevelopment. Ultimately, the project underscores the strategic importance of data analysis in the competitive landscape of online commerce.





