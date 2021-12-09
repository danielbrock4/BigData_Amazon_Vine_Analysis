# Module 16: Big Data using AWS, PySpark, PostgresSQL, Google Colab, Python
### Amazon Vine Analysis

## Resources

- **Data Source:** 
  - [vine_table.cvs](resources/vine_table.cvs)
  - [Sample Data - Amazon Video Game Reviews](https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Video_Games_v1_00.tsv.gz)
- **Software:** AWS, PySpark, PostgresSQL, Google Colab, Python, Pandas

## Challenge Project Overview 

The Amazon Vine program is a service that allows manufacturers and publishers to receive reviews for their products. Companies like SellBy pay a small fee to Amazon and provide products to Amazon Vine members, who are then required to publish a review. I am tasked to determine if there is any bias towards reviews that were written as part of the Vine program (paid vs. unpaid reviews).

Steps Taken:
1. Using PySpark on Google Colabs, I performed the ETL process on a big data set of over 170,000 rows from sample data about Amazon Product Reviews. 
2. Afterward, I created an AWS relational database instance and transformed the data to be loaded into PostgreSQL (SQL). After loading the data into PgAdmin, I exported the Vine Review Table as a CSV file.
3. Finally, I load the data into Python to create Dataframes using Pandas. Then I analyized the data to determine if their was bias in paid reviews verses unpaid reviews. 


## Challenge Project Analysis

## Challange Project Summary
