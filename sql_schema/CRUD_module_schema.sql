-- Before we test our connection with our RDS instance and pgAdmin, let's learn about persistent data storage. Persistent data storage is where data is saved even when a machine's power is off (i.e., your computer's hard drive). SQL databases, such as the one we just connected to with AWS, is persistent storage.

-- The four basic functions of persistent data storage are Create, Read, Update, and Delete (CRUD). Let's test our connection to the RDS instance by performing some simple CRUD operations. This is review material, but it's important to understand which queries and operations belong to which part of CRUD.

-- Before we begin, from pgAdmin, create a new database within our RDS instances called "medical."

-- Create
-- The first function of CRUD is creating data. We'll make tables and insert data into them. Inserting is the main part of creating data to be stored within the database. Let's run the following query.
CREATE TABLE doctors (
 id INT PRIMARY KEY NOT NULL,
 speciality TEXT,
 taking_patients BOOLEAN
);
CREATE TABLE patients (
 id INT NOT NULL,
 doctor_id INT NOT NULL,
 health_status TEXT,
 PRIMARY KEY (id, doctor_id),
 FOREIGN KEY (doctor_id) REFERENCES doctors (id)
);

INSERT INTO doctors(id, speciality, taking_patients)
VALUES
(1, 'cardiology', TRUE),
(2, 'orthopedics', FALSE),
(3, 'pediatrics', TRUE);
INSERT INTO patients (id, doctor_id, health_status)
VALUES
(1, 2, 'healthy'),
(2, 3, 'sick'),
(3, 2, 'sick'),
(4, 1, 'healthy'),
(5, 1, 'sick');

--Read
-- The second function is reading our data. We'll run our SELECT statements for the data we want to retrieve from our tables. Let's run the following query to confirm our data has been successfully inserted.

-- Read tables
SELECT * FROM doctors;
SELECT * FROM patients;

--Update
-- The third function is updating data that is currently stored. We'll run the following query to update our data.

-- Update rows
UPDATE doctors
SET taking_patients = FALSE
WHERE id = 1;
UPDATE patients
SET health_status = 'healthy'
WHERE id = 1;

--To confirm our update, run a SELECTstatement, which as you recall is the read function of CRUD.

--Delete
-- The final function is deleting data. We'll run the following query to delete data.

-- Delete row
DELETE FROM patients
WHERE id = 1;


-- Assume your company already has three tables set up in the RDS database and would like to get the raw data from S3 into the database. Create a new database in pgAdmin called "my_data_class_db." We'll have it represent the company database by first running the following schema in pgAdmin for our RDS:

-- Create Active User Table
CREATE TABLE active_user (
 id INT PRIMARY KEY NOT NULL,
 first_name TEXT,
 last_name TEXT,
 username TEXT
);

CREATE TABLE billing_info (
 billing_id INT PRIMARY KEY NOT NULL,
 street_address TEXT,
 state TEXT,
 username TEXT
);

CREATE TABLE payment_info (
 billing_id INT PRIMARY KEY NOT NULL,
 cc_encrypted TEXT
);

-- Table creation is not part of the ETL process. We're creating the tables to represent a pre-established database you need for the raw data. In a real-life situation, databases will already have a well-defined schema and tables for you, as the engineer, to process data into.