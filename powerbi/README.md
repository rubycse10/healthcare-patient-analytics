# Power BI Healthcare Dashboards

This folder contains interactive Power BI dashboards analyzing hospital performance, patient demographics, costs, and outcomes from `../dataset/Healthcare_Dataset.csv`.

## Dataset Reference

- **1,000 patient visits** across 5 hospitals (Jan–Dec 2024)
- **Key metrics**: Cost, LengthOfStay, Outcomes, Readmission30Days, Demographics
- **Diagnoses**: Infection, Fracture, Heart Failure, Asthma, Pneumonia (top 5)
- **Outcomes**: Recovered (~40%), Improved (~35%), Transferred (~15%), Deceased (~10%)

For detailed analysis, see `../notebooks/EDA_Healthcare.ipynb` (Python reproducible version).

## Dashboard 1: Healthcare Patient Analytics Dashboard (Executive Summary)

**Purpose**: High-level overview for leadership — system-wide performance and trends.

**KPI Cards**:
- Total Visits: **1,000**
- Average Cost: **~$7,000**
- Average Length of Stay: **~8–9 days**
- Adult Count: **~817**
- Pediatric Count: **~183**

**Visualizations**:
- Monthly Visit Trend by Hospital System (stacked bar chart)
- Quarterly Average Treatment Cost by Hospital (line chart)
- Patient Demographics by Hospital (Adult vs Pediatric bar chart)
- Department-Level Visit Distribution (stacked bar)

Quarterly Average Treatment Cost by Hospital(Line Chart)

Patient Demographics by Hospital

Department‑Wise Visit Distribution

🧭 Filters
Hospital

Insurance Type

Department

Month

Quarter

📊 Dashboard 2: Healthcare Patient Analytics Dashboard (Detailed Patient Level Anlysis)
🎯 Purpose
A detailed analytical view focusing on department‑level performance, cost behavior, and readmission outcomes.
This page does not include KPIs, as it is designed for deeper operational insights.

⭐ Key Features
Hospital,Department Metrics Table

Total Visit

Average LOS

Average Cost

Adult Count

Pediatric Count

Readmission Rate %

Average Cost by Hospital & Department (Tree Map)

Readmission Rate % by Hospital (Bar Chart)

Average Cost by Insurance Type (Donut Chart)

🧭 Filters
Hospital

Insurance Type

Department

Month

Quarter

🛠️ Technologies Used
Power BI Desktop

DAX Measures

Custom formatting & tooltips


🚀 How to Use
Download the .pbix files

Open in Power BI Desktop

Use slicers to filter by hospital, department, insurance type, month, and quarter

Explore visuals to understand trends and performance

📌 Notes
Data is anonymized and for demonstration purposes

Dashboard 1 = KPIs + high‑level view

Dashboard 2 = detailed analysis (no KPIs)


✨ Author
Created by Rubiya  

