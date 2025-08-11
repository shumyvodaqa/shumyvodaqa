# Scripts for the "store" database

What’s inside:

* "sql-schema.sql" — creates tables and the structure for the "store" database 
* "sqlquerries.sql" — example queries to check and analyze data in this database

How to use:

1. First, create a database called "store":
CREATE DATABASE store;

2. Then run the table creation script from the command line:
mysql -u <username> -p store < sql-schema.sql


3. After that, you can run queries from "sqlquerries.sql" one by one in MySQL Workbench or the terminal to test and explore the data.

Why this is useful:
It helps you practice working with a simple online store database — creating tables, inserting data, running queries for testing and analysis.

