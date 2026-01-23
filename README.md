# Data Portfolio — healthcare-patient-analytics

## Project Overview

This repository contains a small data-analytics portfolio built around a healthcare dataset. It includes the raw dataset, SQL analytics, and example visualizations created with Power BI and Tableau.

## Repository Structure

- `dataset/` — source CSV files. Primary file: `Healthcare_Dataset.csv`.
- `SQL/` — example SQL queries and analytics scripts (`Healthcare_Patient_Analytics.sql`).
- `powerbi/` — Power BI report and notes.
- `tableau/` — Tableau workbook and notes.

## Files of Note

- `dataset/Healthcare_Dataset.csv` — 1,000 patient records with demographics, diagnoses, costs, outcomes, and readmission flags.
- `notebooks/EDA_Healthcare.ipynb` — Jupyter notebook with exploratory analysis and dashboard-style visualizations (KPIs, trends, demographics).
- `SQL/Healthcare_Patient_Analytics.sql` — SQL queries for data validation and alternative analytical perspectives.
- `powerbi/Healthcare_Patient_Analytics.pbix` — Power BI interactive dashboard with executive summary and detailed analysis.
- `tableau/Healthcare_Patient_Analytics.twbx` — Tableau interactive dashboard for healthcare performance monitoring.
- `CASE_STUDY.md` — comprehensive case study with findings, recommendations, and reproducibility instructions.

## How to Use

1. **Python Notebook (EDA & Dashboard)**:  
   Open `notebooks/EDA_Healthcare.ipynb` in Jupyter and run all cells to see exploratory data analysis, distributions, and dashboard-style visualizations (KPIs, trends, hospital/department analytics).

2. **CSV Dataset**:  
   Explore `dataset/Healthcare_Dataset.csv` directly in Excel, pandas, or SQL. Contains 1,000 patient records with admission dates, diagnoses, hospitals, costs, outcomes, and 30-day readmission flags.

3. **SQL Analytics**:  
   Run or review queries in `SQL/Healthcare_Patient_Analytics.sql` against a local database (import CSV as needed).

4. **Power BI Dashboard**:  
   Open `powerbi/Healthcare_Patient_Analytics.pbix` with Power BI Desktop.

5. **Tableau Dashboard**:  
   Open `tableau/Healthcare_Patient_Analytics.twbx` with Tableau Desktop.

## Key Findings (from Notebook Analysis)

- **Dataset**: 1,000 patient visits across 5 hospitals (Jan–Dec 2024).
- **Average Cost**: ~$7K per visit; ranges $2K–$15K+.
- **Average Length of Stay**: ~8–9 days; strong cost correlation.
- **Top Diagnoses**: Infection, Fracture, Heart Failure, Asthma, Pneumonia.
- **Readmission Rate**: Varies by insurance and diagnosis; Self-Pay patients show higher rates.
- **Mortality**: Increases with age; 80+ age group shows elevated deceased/transferred outcomes.
- **Hospital Trends**: Monthly visit patterns, quarterly cost variations, department utilization differences.

## Reproducing the Analysis

**Python Notebook (Self-Contained)**:
```bash
pip install -r requirements.txt
jupyter notebook notebooks/EDA_Healthcare.ipynb
```

All analysis is **100% reproducible** from `dataset/Healthcare_Dataset.csv`. The notebook:
- Loads and cleans the raw CSV
- Computes KPIs (total visits, avg cost, avg LOS, patient demographics)
- Produces trend plots (monthly visits, quarterly costs)
- Analyzes demographics and readmission patterns
- Outputs results programmatically (no manual steps)

## Data & Privacy

- **Dataset**: Demonstrates healthcare analytics best practices; suitable for portfolio showcasing.
- **Source**: `dataset/Healthcare_Dataset.csv` (1,000 anonymized patient records)
- **Sensitive Fields**: Age, Diagnosis, Insurance Type, Cost, Hospital — handled per data governance policies.
- **Reproducibility**: All analysis fully documented and version-controlled in this repository.

## Detailed Case Study

For comprehensive findings, recommendations, and technical deep-dive, see [CASE_STUDY.md](CASE_STUDY.md).

## Notes

- Python notebook is self-contained and requires only pandas, matplotlib, seaborn.
- External tools (Power BI, Tableau, SQL) are optional for additional exploration.
- Dataset contains patient demographics and health outcomes; handle per privacy policies.
- Notebook includes both exploratory analysis and dashboard-style KPI summaries.

## Contact

If you want changes or additions (more analyses, notebooks, or readme details), open an issue or contact the repository owner.

