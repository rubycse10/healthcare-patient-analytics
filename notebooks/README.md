# Python Notebooks — Healthcare Analytics

This folder contains Jupyter notebooks for exploratory data analysis and dashboard-style visualization of healthcare data.

## Files

- **EDA_Healthcare.ipynb** — Comprehensive notebook with:
  - **Exploratory Analysis**: data summaries, distributions, missing values, date conversions
  - **EDA Visualizations**: top diagnoses, length-of-stay distributions, cost correlations, outcome patterns
  - **Readmission Analysis**: rates by insurance type and diagnosis
  - **Dashboard KPIs**: total visits, average cost, average LOS, adult/pediatric counts
  - **Trend Analysis**: monthly visits by hospital, quarterly costs, patient demographics
  - **Department Analytics**: visit distribution by department and hospital

## Quick Start

```bash
# Install dependencies
pip install -r ../requirements.txt

# Launch Jupyter
jupyter notebook EDA_Healthcare.ipynb
```

## Dataset Reference

- **Source**: `../dataset/Healthcare_Dataset.csv`
- **Records**: 1,000 patient visits (Jan–Dec 2024)
- **Scope**: 5 hospitals across multiple departments
- **Key Metrics**: Cost (~$7K avg), LengthOfStay (~8–9 days), Outcomes, Readmission30Days

## Notebook Sections

1. **Imports & Setup** — Load libraries (pandas, matplotlib, seaborn)
2. **Data Loading** — Read CSV, display shape and sample rows
3. **Summary Statistics** — Describe all columns, data types
4. **Missing Values** — Identify gaps in data
5. **Date Conversion** — Parse admission/discharge dates, compute LOS
6. **Top Diagnoses** — Most frequent diagnoses (bar chart)
7. **Cost & LOS Trends** — Histograms and scatter plots
8. **Readmission Analysis** — Rates by insurance and diagnosis
9. **Outcomes by Age** — Mortality and outcome patterns
10. **Dashboard KPIs** — Key performance indicators summary
11. **Monthly Visit Trends** — Stacked bar chart by hospital
12. **Quarterly Cost Analysis** — Line chart by hospital
13. **Patient Demographics** — Adult vs Pediatric by hospital
14. **Department Distribution** — Visit breakdown by hospital and department

## Key Outputs

- Reproducible analysis using pandas and visualization libraries
- No external data files needed beyond the CSV
- All calculations documented and version-controlled
- Results match Power BI and Tableau dashboards

## Next Steps

- Export plots as PNG/PDF for reports
- Build predictive models (readmission risk, cost forecasting)
- Create interactive Streamlit or Plotly dashboards
- Integrate with live hospital data sources

## Notes

- Notebook is fully self-contained; run cells in order (or individually after data load)
- All analysis is reproducible; no manual data transformation required
- Comments and markdown cells document methodology and findings
