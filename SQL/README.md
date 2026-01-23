# SQL Healthcare Analytics

This folder contains SQL queries for healthcare analysis using the dataset in `../dataset/Healthcare_Dataset.csv`.

## Dataset Reference

- **1,000 patient visits** across 5 hospitals (Jan–Dec 2024)
- **Source**: `../dataset/Healthcare_Dataset.csv`
- **Columns**: PatientID, Age, Gender, Diagnosis, Hospital, Department, Cost, BillingAmount, LengthOfStay, Outcome, Readmission30Days, InsuranceType, AdmissionDate, DischargeDate
- **Top Findings**: 
  - Avg Cost: ~$7K
  - Avg LOS: ~8–9 days
  - Top Diagnoses: Infection, Fracture, Heart Failure, Asthma, Pneumonia
  - Mortality by Age: 4% (0–50) → 18% (80+)
  - 30-day Readmission: ~35–40% (varies by insurance)

## Files Included

- `Healthcare_Patient_Analytics.sql`  
  Comprehensive SQL queries for analysis:
  - Database and table creation
  - KPI queries (Total Visits, Avg Cost, Avg LOS, Demographics)
  - Monthly visit trends by hospital
  - Hospital-level demographics (Adult vs Pediatric)
  - Department-level visit distribution
  - Insurance type analysis and outcomes
  - Quarterly cost analysis
  - Age group segmentation and mortality rates
  - Readmission rate calculations by diagnosis and insurance

## How to Use

1. Import the CSV into your database:
   ```sql
   -- Example (SQLite)
   .mode csv
   .import ../dataset/Healthcare_Dataset.csv healthcare_data
   ```

2. Run queries from `Healthcare_Patient_Analytics.sql` to validate and explore the data.

3. For reproducible analysis, see `../notebooks/EDA_Healthcare.ipynb` (Python version with visualizations).

## Notes

- All queries reference the 1,000 patient records spanning Jan–Dec 2024.
- SQL queries validate data consistency and provide alternative analytical perspectives to Python notebook and BI tools.
- Coordinates with Power BI and Tableau dashboards for comprehensive healthcare analytics.

Author
Created by Rubiya

