# walmart_sales_analysis
Walmart Sales Analysis using Python and SQL to uncover sales trends, customer behavior, and revenue insights through data cleaning and querying.

## Overview
This project analyzes Walmart transactional data to uncover insights into customer behavior, sales performance, and profitability. The dataset contains **9,969 cleaned records** across 11 features, including invoice details, branch and city information, product categories, unit prices, quantities, payment methods, ratings, and profit margins.

## Data Preparation
- Removed **51 duplicate records**
- Dropped **31 rows with missing values** in `unit_price` and `quantity`
- Converted `unit_price` from string to numeric format
- Created a new feature: **`total = unit_price × quantity`**
- Final dataset shape: **9,969 rows × 11 columns**

## Key Statistics
- **Invoice ID:** min = 1, max = 10,000, mean ≈ 5025
- **Quantity:** mean ≈ 2.35, max = 10
- **Rating:** mean ≈ 5.82, range = 3–10
- **Profit Margin:** mean ≈ 0.39, range = 0.18–0.57

## Business Insights (SQL Queries)
1. Distribution of payment methods and quantities sold
2. Total sales by city
3. High-rating invoices paid via Ewallet
4. Average unit price per product category
5. Branch with highest revenue
6. Top 3 cities by average profit margin
7. High-quantity purchases in Electronic accessories
8. Daily sales totals for February 2019
9. Low-rating invoices paid via Credit card
10. Highest-rated category per branch

## Purpose
This analysis provides actionable insights into:
- **Customer preferences** (payment methods, ratings)
- **Regional performance** (sales by city/branch)
- **Product trends** (category pricing, high-volume purchases)
- **Profitability drivers** (profit margin distribution)

The project demonstrates **data cleaning, statistical analysis, and SQL-driven business intelligence**.
