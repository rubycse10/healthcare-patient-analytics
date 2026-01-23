# Tableau Healthcare Dashboards

This folder contains interactive Tableau dashboards for healthcare performance monitoring and analysis using data from `../dataset/Healthcare_Dataset.csv`.

## Dataset Reference

- **1,000 patient visits** across 5 hospitals (Jan–Dec 2024)
- **Metrics**: Cost, LengthOfStay, Outcomes, Readmission30Days, Demographics
- **Top Diagnoses**: Infection, Fracture, Heart Failure, Asthma, Pneumonia
- **Outcomes**: Recovered (~40%), Improved (~35%), Transferred (~15%), Deceased (~10%)

For reproducible Python analysis, see `../notebooks/EDA_Healthcare.ipynb`.

## Dashboard 1: Healthcare Executive Dashboard

**Purpose**: High-level insights for healthcare executives — hospital performance, visits, and costs.

**KPI Cards**:
- Total Visits: **1,000**
- Average Cost: **~$7,000**
- Average Length of Stay: **~8–9 days**
- Adult Count: **~817**
- Pediatric Count: **~183**

**Visualizations**:
- Monthly Visit Trend (stacked bar by hospital)
- Quarterly Average Cost (line chart by hospital)
- Patient Demographics (Adult vs Pediatric)
- Department-Level Visit Distribution

Average Length of Stay: 8

Adult Count: 817

Pediatric Count: 183

Total Patient Visit by Hospital (Bar Chart)

Monthly Patient Visit Trend – All Hospitals (Line Chart)

Average Cost by Hospital (Tile Chart)

Total Visit by Department (Bar Chart)

 Filters
Hospital

Month

Department

Insurance Type

 📊Dashboard 2: Detailed Analysis
 🎯Purpose
Provides department-level insights, readmission analysis, insurance breakdowns, and patient demographics for operational teams.

⭐ Key Features
Readmission % by Hospital (Pie Chart)

Total Visit by Insurance Type (Pie Chart)

Adult and Pediatric Count by Hospital (Bar Chart)

Department-Level Metrics Table

Hospital

Department

Total Visit

Adult Count

Pediatric Count

Average Cost

Average LOS

Readmission %

🧭 Filters
Hospital

Department

Insurance Type

Month


🛠️ Technologies Used
Tableau Desktop Public Edition

Calculated fields

Custom tooltips

Navigation buttons

Synced filters across pages

🚀 How to Use
Open .twb files in Tableau Public Desktop

Use filters to explore hospital-level and department-level insights

Navigate between dashboards using buttons

Hover over charts for tooltips and breakdowns

📌 Notes
Data is anonymized and for demonstration purposes

Dashboard 1 = Executive Dashboard

Dashboard 2 = Detailed Analysis 


✨ Author
Created by Rubiya  

