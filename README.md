# Walmart Sales Data Analysis: Project Overview

This project aims to analyze Walmart sales data to identify top-performing branches and products, understand sales trends, and explore customer behavior. The dataset used is from the Kaggle Walmart Sales Forecasting Competition, encompassing historical sales data for 45 Walmart stores across various regions, including Mandalay, Yangon, and Naypyitaw. The dataset accounts for holiday markdown events, which can affect sales.

## Objectives:
1. Understand factors influencing sales across different branches.
2. Analyze product performance and customer segments.
3. Optimize sales strategies based on data insights.

## Dataset Description:
- **Source:** Kaggle Walmart Sales Forecasting Competition
- **Locations:** Mandalay, Yangon, Naypyitaw
- **Dimensions:** 17 columns, 1000 rows

### Key Columns:
- `invoice_id`: Invoice ID (VARCHAR)
- `branch`: Branch code (VARCHAR)
- `city`: Branch location (VARCHAR)
- `customer_type`: Type of customer (VARCHAR)
- `gender`: Customer gender (VARCHAR)
- `product_line`: Product category (VARCHAR)
- `unit_price`: Price per unit (DECIMAL)
- `quantity`: Number of units sold (INT)
- `VAT`: Tax amount (FLOAT)
- `total`: Total cost (DECIMAL)
- `date`: Purchase date (DATE)
- `time`: Purchase time (TIMESTAMP)
- `payment_method`: Payment method (DECIMAL)
- `cogs`: Cost of goods sold (DECIMAL)
- `gross_margin_percentage`: Gross margin percentage (FLOAT)
- `gross_income`: Gross income (DECIMAL)
- `rating`: Customer rating (FLOAT)

## Analysis Approach:
1. **Data Wrangling:**
   - Detect and replace NULL values.
   - Ensure data integrity by building a database.
  
2. **Feature Engineering:**
   - Create `time_of_day` to analyze sales patterns.
   - Extract `day_name` and `month_name` for weekly and monthly trends.
  
3. **Exploratory Data Analysis (EDA):**
   - **Product Analysis:** Identify best and worst-performing product lines.
   - **Sales Analysis:** Evaluate sales trends and strategy effectiveness.
   - **Customer Analysis:** Segment customers and assess profitability.

## Business Questions to Answer:

### Generic Question:
- How many unique cities does the data have?
- In which city is each branch located?

### Product Analysis:
- How many unique product lines does the data have?
- What is the most common payment method?
- What is the most selling product line?
- What is the total revenue by month?
- Which month had the largest COGS (Cost of Goods Sold)?
- Which product line had the largest revenue?
- What is the city with the largest revenue?
- Which product line had the largest VAT (Value Added Tax)?
- For each product line, add a column indicating "Good" or "Bad" based on sales performance compared to the average.
- Which branch sold more products than the average number of products sold?
- What is the most common product line by gender?
- What is the average rating of each product line?

### Sales Analysis:
- Number of sales made during each time of the day per weekday.
- Which customer type brings the most revenue?
- Which city has the largest tax percentage/VAT (Value Added Tax)?
- Which customer type pays the most in VAT?

### Customer Analysis:
- How many unique customer types does the data have?
- How many unique payment methods does the data have?
- What is the most common customer type?
- Which customer type buys the most?
- What is the gender distribution among customers?
- What is the gender distribution per branch?
- During which time of the day do customers give the most ratings?
- During which time of the day do customers give the most ratings per branch?
- Which day of the week has the best average ratings?
- Which day of the week has the best average ratings per branch?
