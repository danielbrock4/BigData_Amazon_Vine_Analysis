# Module 16: Big Data using AWS, PySpark, PostgresSQL, Google Colab, Python




## Amazon Vine Analysis

## Resources

- **Data Source:** 
  - [Vine Review csv](resources/vine_table.csv)
  - [Sample Data - Amazon Video Game Reviews](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt)
- **Software:** AWS, PySpark, PostgresSQL, Google Colab, Python, Pandas

## Challenge Project Overview 

The Amazon Vine program is a service that allows manufacturers and publishers to receive reviews for their products. Companies like SellBy pay a small fee to Amazon and provide products to Amazon Vine members, who are then required to publish a review. I am tasked to determine if there is any bias towards reviews written as part of the Vine program (paid vs. unpaid reviews).

**Steps Taken:**

1) Using PySpark on Google Colabs, I performed the ETL process on a big data set of over 170,000 rows from sample data about Amazon Product Reviews. 
2) Afterward, I created an AWS relational database instance and transformed the data to be loaded into PostgreSQL (SQL). After loading the data into PgAdmin, I exported the Vine Review Table as a CSV file.
3) Finally, I load the data into Python to create Dataframes using Pandas. Then I analyzed the data to determine if there was bias in paid reviews versus unpaid reviews. 

## Challenge Project Analysis

[Analysis JupyterNotebook](resources/Vine_Review_Analysis.ipynb)

### **Relevancy Filters Applied:**
- Amazon Video Game 
- Reviews with 20+ Votes
- 50% or higher on helpful votes

### **Vine Program Results:**

**Total Number of Reviews: 40565**
- Paid Views: 94
- Unpaid Views: 40471

**Total Number of 5-Star Reviews:**
 - Paid 5-Star Reviews: 48
 - Unpaid 5-Star Reviews: 15663

**Percentage Of 5-Star Reviews:**
- Paid Reviews: 51%
- Unpaid Reviews: 39%

**Average 5-Star Rating:**
- Paid Reviews: 4.2
- Unpaid Reviews: 3.35


## Challange Project Summary
