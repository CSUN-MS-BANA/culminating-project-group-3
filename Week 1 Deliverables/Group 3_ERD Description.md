## ERD Description
This ERD structure will allow for correlation research between poverty, food insecurity, nutrition, healthcare access and gender disparities.
We will be able to look at how nutrition access and finances/poverty affect individual health (for children and adults). 
The country-level details will also allow for comparisons across countries to determine various disparities between different societies, if any.

## Table Breakdown
### 1. Country
  - Details: Country_code, Country_Name, and Region
  - Links to multiple datasets via foreigh keys to ensure country-level aggregation of statistics
### 2. Health and Population Stats (HPS)
  - Captures demographic and healthcare expenditure data such as birth rate, fertility rate, health expenditures per capita, and the % of household consumption on healthcare
### 3. Nutrition
  - Focuses on malnutrition and food security
  - Low birth weight rate, food insecurity percentages, undernourishment percentages, etc.
### 4. Poverty
  - Contains economic inequality measures, including Poverty headcount ratio, Gini coefficient, and GDP per capita
### 5. Health
  - Encompasses maternal and child health indicators such as infant mortality rate, maternal mortality rate, and details regarding access to healthcare
### 6. Gender Statistics
  - Includes details regarding financial inclusion, gender-based health disparities
  - Tracking indicators such as prevalence of underweight individuals, ability to access emergency funds, and borrowing trends for medical expenses
### 7. Records (Fact Table)
  - Functions as the central table linking various indicators by referencing foreight keys from tables listed above
  - Permits yearly analysis at the country level
