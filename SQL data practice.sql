SELECT * FROM stroke.`stroke_dataset.csv`;

SELECT Diagnosis,
Max(Patient_Age),
Min(Patient_Age)
FROM stroke.`stroke_dataset.csv`
WHERE Diagnosis = 'stroke';

SELECT Diagnosis,
Hypertension,
       COUNT(*) AS stroke_count
FROM stroke.`stroke_dataset.csv`
WHERE Diagnosis = 'stroke'
GROUP BY Hypertension;

SELECT Diagnosis,
Heart_Disease,
       COUNT(*) AS stroke_count
FROM stroke.`stroke_dataset.csv`
WHERE Heart_Disease = 1
GROUP BY Diagnosis;

SELECT Diagnosis,
	   avg(Average_Glucose_level) AS Average_Glucose
FROM stroke.`stroke_dataset.csv`
WHERE Diagnosis = 'No Stroke'
ORDER BY Diagnosis;


SELECT Diagnosis,
CASE WHEN Patient_Age BETWEEN 0 AND 20 THEN '0-20'
     WHEN Patient_Age BETWEEN 21 AND 40 THEN '21-40'
     WHEN Patient_Age BETWEEN 41 AND 60 THEN '41-60'
     WHEN Patient_Age BETWEEN 61 AND 80 THEN '61-80'
     ELSE '81+' END AS age_group,
     COUNT(*) AS stroke_count
 FROM stroke.`stroke_dataset.csv` 
 WHERE Diagnosis = 'stroke'
 GROUP BY CASE WHEN Patient_Age BETWEEN 0 AND 20 THEN '0-20'
     WHEN Patient_Age BETWEEN 21 AND 40 THEN '21-40'
     WHEN Patient_Age BETWEEN 41 AND 60 THEN '41-60'
     WHEN Patient_Age BETWEEN 61 AND 80 THEN '61-80'
     ELSE '81+' END;
     
     SELECT Diagnosis,
            Patient_Gender,
            Count(*) AS stroke_count
FROM stroke.`stroke_dataset.csv`
WHERE Diagnosis = 'stroke'
GROUP BY Patient_Gender;

SELECT Diagnosis,
       Marital_Status,
       Count(*) AS stroke_count
FROM stroke.`stroke_dataset.csv`
WHERE Diagnosis = 'stroke'
GROUP BY Marital_Status 
ORDER BY Marital_Status;

SELECT Diagnosis,
Residence_Type,
Count(*) AS stroke_count
FROM stroke.`stroke_dataset.csv`
WHERE Diagnosis = 'stroke'
GROUP BY Residence_Type
ORDER BY Residence_Type;

SELECT Diagnosis,
Smoking_Status,
Count(*) AS stroke_count
FROM stroke.`stroke_dataset.csv`
WHERE Diagnosis = 'stroke'
GROUP BY Smoking_Status
ORDER BY Smoking_Status;

SELECT Diagnosis,
Family_History_of_stroke,
Count(*) AS stroke_count
FROM stroke.`stroke_dataset.csv`
WHERE Diagnosis = 'stroke'
GROUP BY Family_History_of_stroke
ORDER BY Family_History_of_stroke;

SELECT Diagnosis,
Dietary_Habits,
Count(*) AS stroke_count
FROM stroke.`stroke_dataset.csv`
WHERE Diagnosis = 'stroke'
GROUP BY Dietary_Habits
ORDER BY Dietary_Habits;

SELECT Diagnosis,
Physical_Activity,
Count(*) AS stroke_count
FROM stroke.`stroke_dataset.csv`
WHERE Diagnosis = 'stroke'
GROUP BY Physical_Activity;

SELECT Diagnosis,
Smoking_Status,
Count(*) AS stroke_count
FROM stroke.`stroke_dataset.csv`
WHERE Diagnosis = 'stroke'
GROUP BY Smoking_Status;

SELECT Diagnosis,
Alcohol_Intake,
Count(*) AS stroke_count
FROM stroke.`stroke_dataset.csv`
WHERE Diagnosis = 'stroke'
GROUP BY Alcohol_Intake;

SELECT Diagnosis,
Count(*) AS stroke_count
FROM stroke.`stroke_dataset.csv`
WHERE Diagnosis = 'No stroke';

SELECT Alcohol_Intake
FROM stroke.`stroke_dataset.csv`
WHERE Alcohol_Intake = '' ;

SET SQL_SAFE_UPDATES = 0;
UPDATE stroke.`stroke_dataset.csv`
SET Alcohol_Intake = 'Unknown'
WHERE Alcohol_Intake = '';

SELECT Alcohol_Intake
FROM stroke.`stroke_dataset.csv`
WHERE Alcohol_Intake = '';

SET SQL_SAFE_UPDATES = 1;

SELECT Diagnosis,
CASE WHEN Stress_Levels BETWEEN 1.1 AND 5.1 THEN '1.1-5.1'
     WHEN Patient_Age BETWEEN 5.2 AND 10.1 THEN '5.2-10.2'
     ELSE '10.2+' END AS stress_group,
     COUNT(*) AS stroke_count
 FROM stroke.`stroke_dataset.csv` 
 WHERE Diagnosis = 'stroke'
 GROUP BY CASE WHEN Stress_Levels BETWEEN 1.1 AND 5.1 THEN '1.1-5.1'
     WHEN Patient_Age BETWEEN 5.2 AND 10.1 THEN '5.2-10.2'
     ELSE '10.2+' END;