# Apollo Diabetes Analysis : Advanced Data Retrieval and Insights
A comprehensive SQL project of diabetes prediction assessment

## Overview

This repository contains a comprehensive SQL project developed during a Data Analyst internship at Psyliq. The project focuses on various aspects of diabetes prediction assessments, utilizing SQL to perform a range of tasks on patient data. The project covers data retrieval, manipulation, and analysis to provide insights into patient health metrics and conditions.

**Objective:**

In this project, we will leverage SQL querying and data analysis skills to explore a comprehensive dataset of individuals. The dataset includes variables such as `EmployeeName`, `Patient_id`, `gender`, `D.O.B`, `hypertension`, `heart_disease`, `smoking_history`, `BMI`, `HbA1c_level`, `blood_glucose_level`, and `diabetes`. The aim is to analyze and derive insights into various aspects such as age, gender, body mass index (BMI), blood pressure, family history of diabetes, dietary habits, physical activity levels, and laboratory test results. This analysis will facilitate a deeper understanding of diabetes risk factors and support effective data-driven decision-making.



## Project Details

1. [Project Presentation](https://github.com/ShouvikSaha504/Diabetes-Prediction-Assessment-SQL/blob/f8fb9d35b42f8af7005fc66ce941ca6e338f9ea9/Diabetes_prediction_SQL%20project.pdf)
2. [SQL Code Solutions](https://github.com/ShouvikSaha504/Diabetes-Prediction-Assessment-SQL/blob/f8fb9d35b42f8af7005fc66ce941ca6e338f9ea9/diabetes_prediction_solution.sql)
3. [Dataset Link](https://github.com/ShouvikSaha504/Diabetes-Prediction-Assessment-SQL/blob/f8fb9d35b42f8af7005fc66ce941ca6e338f9ea9/Diabetes_prediction.xlsx)

The SQL assessment includes the following tasks:

1. **Retrieve Patient Information**
   - Retrieve `Patient_id` and ages of all patients.

2. **Filter by Age and Gender**
   - Select all female patients who are older than 40.

3. **Calculate Average BMI**
   - Compute the average BMI of patients.

4. **Blood Glucose Levels**
   - List patients in descending order of blood glucose levels.

5. **Hypertension and Diabetes**
   - Find patients who have both hypertension and diabetes.

6. **Heart Disease Count**
   - Determine the number of patients with heart disease.

7. **Smoking History Analysis**
   - Group patients by smoking history and count smokers and non-smokers.

8. **BMI Comparison**
   - Retrieve `Patient_ids` of patients with a BMI greater than the average BMI.

9. **HbA1c Levels**
   - Find the patient with the highest and the lowest HbA1c level.

10. **Calculate Patient Age**
    - Calculate the age of patients in years, assuming the current date.

11. **Rank by Blood Glucose**
    - Rank patients by blood glucose level within each gender group.

12. **Update Smoking History**
    - Update the smoking history of patients older than 50 to "Ex-smoker."

13. **Insert New Patient**
    - Insert a new patient into the database with sample data.

14. **Delete Patients**
    - Delete all patients with heart disease from the database.

15. **Find Patients with Specific Conditions**
    - Find patients who have hypertension but not diabetes using the `EXCEPT` operator.

16. **Unique Constraint**
    - Define a unique constraint on the `patient_id` column to ensure its values are unique.

17. **Create View**
    - Create a view displaying the `Patient_ids`, ages, and BMI of patients.

18. **Database Schema Improvements**
    - Suggest improvements in the database schema to reduce data redundancy and improve data integrity.

19. **SQL Query Optimization**
    - Explain how to optimize the performance of SQL queries on this dataset.

**Methodologies:**

1. **Data Retrieval and Manipulation:**
   - **SQL Queries**: Utilized SQL queries to retrieve, filter, and manipulate patient data, including retrieving patient IDs, filtering by age and gender, and calculating average BMI.
   - **Data Aggregation**: Aggregated data to analyze patterns, such as grouping patients by smoking history and counting smokers and non-smokers.

2. **Statistical Analysis:**
   - **BMI and HbA1c Analysis**: Calculated average BMI, identified patients with BMI greater than the average, and found patients with the highest and lowest HbA1c levels.
   - **Blood Glucose Levels**: Ranked patients by blood glucose levels within each gender group and listed patients in descending order of blood glucose levels.

3. **Database Management:**
   - **Updating Records**: Updated smoking history for patients older than 50 and inserted new patient records with sample data.
   - **Deleting Records**: Removed patients with heart disease from the database.

4. **Data Integrity and Schema Design:**
   - **Unique Constraints**: Defined a unique constraint on the `patient_id` column to ensure data integrity.
   - **Schema Improvements**: Suggested improvements to the database schema to reduce data redundancy and enhance data integrity.

5. **Advanced SQL Techniques:**
   - **Creating Views**: Created a view to display `Patient_ids`, ages, and BMI of patients for easier access and analysis.
   - **EXCEPT Operator**: Utilized the `EXCEPT` operator to find patients with hypertension but not diabetes.

6. **Performance Optimization:**
   - **Query Optimization**: Explained techniques to optimize SQL query performance for efficient data retrieval and analysis.

These methodologies collectively enable a thorough analysis of patient health metrics and conditions, supporting informed decision-making and effective data management.


## Technologies Used

- SQL 
- Data Analysis
- Database Management

**Actionable Insights and Recommendations:**

1. **Health Risk Identification:**
   - **Diabetes and Hypertension**: Identified patients with both hypertension and diabetes, which highlights a higher risk group for targeted health interventions and preventive measures.
   - **High BMI**: Patients with BMI greater than the average should be monitored for obesity-related health risks and offered tailored lifestyle modification programs.

2. **Targeted Interventions:**
   - **Smoking History**: Update smoking history for patients older than 50 to "Ex-smoker" to reflect their current status and tailor health advice accordingly.
   - **Heart Disease**: Since heart disease is a significant condition, focus on regular check-ups and preventive measures for patients with heart disease.

3. **Data-Driven Decision Making:**
   - **Ranked Analysis**: Use ranked blood glucose levels and HbA1c data to prioritize patients needing immediate medical attention or follow-up.
   - **Gender-Based Analysis**: Analyze differences in health metrics between genders to design gender-specific health programs and interventions.

4. **Database Enhancements:**
   - **Schema Improvements**: Implement suggested schema improvements to minimize data redundancy and enhance the overall integrity of the database by using normalization techniques, indexing, and primary key-foreign key relationships.

5. **Performance Optimization:**
   - **Query Optimization**: Apply recommended optimization techniques to improve SQL query performance, ensuring faster data retrieval and analysis.

6. **Further Analysis:**
   - **Lifestyle and Dietary Habits**: Extend the analysis to include lifestyle and dietary habits, which can provide additional insights into diabetes risk factors and inform comprehensive health strategies.

These insights and recommendations aim to enhance patient care, optimize database management, and support effective health interventions based on the analyzed data.

**Conclusion:**

This SQL project has provided a comprehensive analysis of patient data, focusing on various health metrics and conditions related to diabetes. Through meticulous data retrieval, manipulation, and analysis, we have gained valuable insights into factors such as BMI, blood glucose levels, hypertension, and smoking history. By identifying high-risk patients and recommending targeted interventions, we can enhance patient care and support effective health management strategies. The implementation of database schema improvements and query optimization further contributes to efficient data handling and accurate analysis. Overall, this project demonstrates the critical role of data-driven approaches in understanding and managing health conditions, paving the way for more informed and strategic healthcare decisions.




