-- Database Creation:
Create Database Healthcare; 

-- Use the database created.
use healthcare;

-- Table Creation
CREATE TABLE patientlevel (
    PatientID VARCHAR(20),
    PatientName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Diagnosis VARCHAR(200),
    Hospital VARCHAR(150),
    Department VARCHAR(100),
    Doctor VARCHAR(100),
    InsuranceType VARCHAR(50),
    City VARCHAR(100),
    State VARCHAR(50),
    AdmissionDate DATE,
    DischargeDate DATE,
    LengthOfStay INT,
    Cost DECIMAL(10,2),
    BillingAmount DECIMAL(10,2),
    Outcome VARCHAR(50),
    Readmission30Days VARCHAR(10)
);

-- Load table created using the file

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/healthcaredata.csv'
INTO TABLE healthcare.patientlevel
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 ROWS
(
    PatientID,
    Age,
    Gender,
    Diagnosis,
    Hospital,
    Department,
    Doctor,
    InsuranceType,
    City,
    State,
    AdmissionDate,
    DischargeDate,
    LengthOfStay,
    Cost,
    BillingAmount,
    Outcome,
    Readmission30Days
);

SELECT COUNT(*) FROM patientlevel;
-- 1000 

-- KPI Queries
select count(*) as Total_Visit,
Round(avg(Cost),0) as Average_Cost,
round(avg(LengthOfStay),0) as Average_LengthofStay,
count(case when Age>=18 then 1 end) as Adult_count,
count(case when Age<18 then 1 end) as Pediatric_count from patientlevel;
/* 
Total_Visit :1000, 
Average_Cost:6868, 
Average_lengthofStay: 8, 
Adult_count:817, 
pediatric_count:183 
*/

-- Monthly visit trend
SELECT 
    MONTHNAME(AdmissionDate) AS Month,
    COUNT(*) AS Total_Visit
FROM patientlevel
GROUP BY MONTHNAME(AdmissionDate), MONTH(AdmissionDate)
ORDER BY MONTH(AdmissionDate);
/*
January	78
February	90
March	80
April	91
May	98
June	90
July	75
August	85
September	79
October	77
November	67
December	90
*/

-- Hospital-level demographics 
SELECT 
    Hospital,
    COUNT(CASE WHEN Age >= 18 THEN 1 END) AS Adult_Count,
    COUNT(CASE WHEN Age < 18 THEN 1 END) AS Pediatric_Count
FROM patientlevel
GROUP BY Hospital
ORDER BY Hospital;
/* 
Detroit Lakes Medical	175	49
Michigan Health Center	138	26
Royal Womens Hospital	160	39
South Canton Care	172	37
Troy General Hospital	172	32
*/

-- Department-level visit counts
select 
	Hospital,
    Department,
    count(*) Total_Visit
from patientlevel
group by Hospital,Department
order by Hospital;

-- Insurance type analysis
select 
	InsuranceType,
    count(*) Total_Visit
from patientlevel
group by InsuranceType;

-- Quarterly cost analysis
SELECT 
	Hospital,
    quarter(AdmissionDate) AS Quarter,
    Round(avg(Cost),0) as Average_Cost
FROM patientlevel
GROUP BY quarter(AdmissionDate),
	Hospital
order by  Quarter,Hospital;

-- Average Cost for each Department
select Department,
	Round(avg(Cost),0) as Average_Cost
from patientlevel 
group by Department
order by Average_cost desc;

-- Age group segmentation
select case
	when Age<18 then 'child'
    when Age between 18 and 40 then 'Adult'
    when Age between 41 and 60 then 'Middle age'
    else 'Senior'
    end Age_group,
    count(*) Total_Visit
from patientlevel
group by Age_group;

-- Readmitted Patients
SELECT 
    Hospital,
    COUNT(*) AS CountRows
FROM patientlevel
where Readmission30Days like 'Yes%'
GROUP BY Hospital
ORDER BY Hospital;

-- Readmitted Percentage
select Hospital, sum(Readmitted), count(Readmitted),(sum(Readmitted)/count(Readmitted)) * 100 AS ReadmittedPercentage
from 
(SELECT *,CASE when Readmission30Days like 'Yes%'  then 1 else 0 end AS Readmitted FROM patientlevel ) a
GROUP BY Hospital
ORDER BY Hospital;




