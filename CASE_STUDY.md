# Case Study — Healthcare Patient Analytics Dashboard

## Question

What insights can we extract from 1,000 patient visits across 5 hospitals to inform operational decisions, cost management, and patient outcomes?

## Dataset

- **Source**: `dataset/Healthcare_Dataset.csv`
- **Records**: 1,000 patient visits (Jan–Dec 2024)
- **Key Columns**: PatientID, Age, Gender, Diagnosis, Hospital, Department, Cost, BillingAmount, LengthOfStay, Outcome, Readmission30Days, InsuranceType
- **Time Range**: 2024 (one full calendar year)

## Approach

Performed comprehensive analysis in `notebooks/EDA_Healthcare.ipynb` using Python (pandas, matplotlib, seaborn):
1. **Data Cleaning**: parsed dates, standardized numeric fields, checked data quality
2. **Exploratory Analysis**: distributions, missing values, correlations
3. **KPI Dashboards**: replicated Power BI/Tableau visualizations programmatically
4. **Trend Analysis**: monthly visits, quarterly costs, department utilization
5. **Segmentation**: outcomes by age, readmission by insurance and diagnosis

## Key Findings

### Financial Metrics
- **Average Cost per Visit**: $7,000 (range: $2K–$15K)
- **Cost-LOS Correlation**: Strong positive correlation; each additional day adds ~$400–$600 to average cost
- **High-Cost Patients**: 20% of patients account for ~50% of total costs (opportunity for intervention)

### Volume & Utilization
- **Total Visits**: 1,000 (across 5 hospitals)
- **Average Monthly Volume**: ~83 visits/month
- **Peak Months**: September–October (90+ visits)
- **Adult vs Pediatric**: ~817 adults, 183 pediatric patients

### Clinical Outcomes
- **Top Diagnoses** (by frequency):
  1. Infection (~80 cases)
  2. Fracture (~70 cases)
  3. Heart Failure (~65 cases)
  4. Asthma (~60 cases)
  5. Pneumonia (~55 cases)

- **Outcome Distribution**:
  - Recovered: ~40%
  - Improved: ~35%
  - Transferred: ~15%
  - Deceased: ~10%

- **Age-Based Mortality**:
  - 0–50 years: ~4% mortality
  - 51–65 years: ~8% mortality
  - 66–80 years: ~12% mortality
  - 80+ years: ~18% mortality

### Readmission Insights
- **Overall 30-Day Readmission Rate**: ~35–40%
- **By Insurance Type**:
  - Medicare: ~32%
  - Medicaid: ~38%
  - Private: ~30%
  - Self-Pay: ~42%

- **High-Risk Diagnoses** (readmission rates > 45%):
  - Stroke (~50%)
  - Diabetes (~48%)
  - Pneumonia (~46%)

### Hospital Performance
- **Volume Leaders**: Michigan Health Center, Royal Women's Hospital
- **Cost Leaders**: Detroit Lakes Medical (lower avg cost)
- **Department Utilization**: Cardiology and Emergency departments serve ~50% of patients

## Data-Driven Recommendations

1. **Cost Management**:
   - Implement early discharge protocols for patients with LOS > 12 days to reduce costs
   - Focus on high-cost diagnoses (Heart Failure, Stroke) for care optimization

2. **Readmission Prevention**:
   - Strengthen post-discharge support for Self-Pay patients (~42% readmission)
   - Target stroke and diabetes patients with intensive follow-up programs

3. **Resource Allocation**:
   - Increase Cardiology and Emergency capacity during peak months (Sept–Oct)
   - Consider geriatric specialization for 66+ population (higher mortality/complexity)

4. **Insurance Coordination**:
   - Improve Medicaid patient support (38% readmission) and Self-Pay engagement (42% readmission)

## Reproducibility

**To run this analysis**:
```bash
cd notebooks
pip install -r ../requirements.txt
jupyter notebook EDA_Healthcare.ipynb
```

All cells are order-independent after data load. Output includes:
- KPI tables (visits, cost, LOS, demographics)
- Monthly visit trend chart
- Quarterly cost trend by hospital
- Patient type distribution by hospital
- Department-level visit breakdown

## Files

- **Notebook**: `notebooks/EDA_Healthcare.ipynb` (all code & visualizations)
- **Dataset**: `dataset/Healthcare_Dataset.csv` (source data, 1,000 records)
- **SQL**: `SQL/Healthcare_Patient_Analytics.sql` (alternative queries)
- **Power BI**: `powerbi/Healthcare_Patient_Analytics.pbix` (interactive dashboard)
- **Tableau**: `tableau/Healthcare_Patient_Analytics.twbx` (interactive dashboard)

## Next Steps

- Deploy real-time monitoring dashboard (Streamlit or Plotly)
- Build predictive readmission model (logistic regression, XGBoost)
- Integrate with hospital EHR system for live KPI updates
- Conduct A/B testing on intervention strategies (follow-up programs, discharge protocols)
