
-- check all columns
select * from diabetes_prediction;

-- 1. Retrieve the Patient_id and ages of all patients.
SELECT patient_id, age FROM diabetes_prediction;

-- 2. Select all female patients who are older than 40.
select * from diabetes_prediction where gender = 'Female' and age > 40;
-- There are no female patients older than 40


-- 3. Calculate the average BMI of patients.
select avg(bmi) as average_bmi from diabetes_prediction;

-- 4. List patients in descending order of blood glucose levels.
select patient_id, blood_glucose_level
from diabetes_prediction
order by blood_glucose_level desc;

-- 5. Find patients who have hypertension and diabetes.
select patient_id, hypertension, diabetes from diabetes_prediction
where hypertension = 1 and diabetes = 1;


-- 6. Determine the number of patients with heart disease.
select count(*) as heart_patient from diabetes_prediction
where heart_disease = 1;


-- 7. Group patients by smoking history and count how many smokers and non-smokers there are.

select smoking_history, count(smoking_history) as no_of_patient
from diabetes_prediction
where smoking_history in ('current', 'never')
group by smoking_history;


-- 8. Retrieve the Patient ids of patients who have a BMI greater than the average BMI.

select patient_id, bmi from diabetes_prediction where bmi >
(select avg(bmi) as avg_bmi from diabetes_prediction);


-- 9. Find the patient with the highest HbA1c level and the patient with the lowest HbA1clevel.

-- Highest HbA1c_level level:
select patient_id, HbA1c_level from diabetes_prediction
where HbA1c_level = 
(select max(HbA1c_level) from diabetes_prediction);



-- Lowest HbA1c_level level:
select patient_id, HbA1c_level from diabetes_prediction
where HbA1c_level = 
(select min(HbA1c_level) from diabetes_prediction);

-- 10. Calculate the age of patients in years (assuming the current date as of now).
select patient_id, age as age_of_patient
from diabetes_prediction;

-- 11. Rank patients by blood glucose level within each gender group.
select patient_id, blood_glucose_level, gender,
dense_rank() over(partition by gender order by blood_glucose_level) patient_rank
from diabetes_prediction;

-- 12. Update the smoking history of patients who are older than 50 to "Ex-smoker".
update diabetes_prediction set smoking_history = "Ex-smoker"
where age > 50;
-- There are no patients in the database aged over 50.



-- 13. Insert a new patient into the database with sample data.

INSERT INTO diabetes_prediction VALUES ('Subham Saha', 'PT409991', 'Male', '11-05-1992', 34, 0, 1, 'never', 25.5, 7, 110, 1);

select * from diabetes_prediction where Patient_id = 'PT409991';



-- 14. Delete all patients with heart disease from the database.
delete from diabetes_prediction where heart_disease = 1;

-- check if records are deleted 
select * from diabetes_prediction where heart_disease = 1;



-- 15. Find patients who have hypertension but not diabetes using the EXCEPT operator.
select patient_id, hypertension, diabetes from diabetes_prediction
where hypertension = 1
except
select patient_id, hypertension, diabetes from diabetes_prediction
where diabetes = 1;


-- 16. Define a unique constraint on the "patient_id" column to ensure its values are unique.

alter table diabetes_prediction
add constraint patient_id_constraint unique (patient_id (50));


-- 17. Create a view that displays the Patient_ids, ages, and BMI of patients.

create view patient_bmi_details as 
select patient_id, age, bmi
from diabetes_prediction;

select * from patient_bmi_details;


-- 18. Suggest improvements in the database schema to reduce data redundancy and improve data integrity.

-- To reduce data redundancy and improve data integrity in the database schema, we can consider the following improvements:

-- Normalization: Break down the dataset into separate tables to store related information, reducing redundancy.
-- Primary and Foreign Keys: Utilize primary keys to uniquely identify records in each table and foreign keys to establish relationships between tables.
-- Data Types and Constraints: Choose appropriate data types for columns and apply constraints to ensure data integrity.
-- Indexing: Implement indexing on frequently queried columns to enhance query performance.



-- 19. Explain how you can optimize the performance of SQL queries on this dataset.

-- To optimize the performance of SQL queries we can consider the following improvements:
-- Indexing: Create indexes on columns frequently used in WHERE, JOIN, and ORDER BY clauses to improve data retrieval and minimize full table scans.
-- Query Tuning: Analyze query execution plans, optimize join techniques, minimize subqueries, and use specific filtering and aggregation to reduce the amount of processed data.
-- Normalization and Joins: Ensure proper normalization to minimize redundancy, optimize table relationships, and use efficient join techniques to streamline data retrieval without unnecessary complexity.

