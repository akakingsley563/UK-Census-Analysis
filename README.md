# UK Census Analysis


![image](https://github.com/user-attachments/assets/4088a26c-243a-44d7-b91f-0ec504ae14a5)

## Project Overview
This project involves analyzing US Census data to explore relationships between various demographic factors, such as gender, age, education, and income. The project utilizes R programming language and several libraries, including ggplot2, dplyr, readr, and scales, for data manipulation and visualization. The main objectives are to clean the data, create meaningful subsets, and generate visualizations to provide insights into the demographic characteristics of the surveyed population.

## Steps in the Script


## Loading Libraries and Data:
- The script begins by installing and loading necessary R libraries.
- The data is read into a data frame named data_1.

## Data Cleaning:
- Missing values are removed.
- Categorical variables are converted to numerical ones.
- Columns are renamed for consistency (e.g., "Female" to "Gender" and "Highest Ed" to "Highest_Ed").

## Data Subsetting:
- A subset of the data is created, focusing on key variables: Highest_Ed, Mar_Stat, INC, Gender, and Age.

## Visualizations:
- A bar plot showing "Income by Age" is generated.
- The average income for males and females is calculated and compared.
- A box plot and bar plot comparing income distribution by gender are created.
  - An additional box plot explores age distribution by educational status and gender.

## Further Analysis:
- Counts of males and females with higher education (Bachelor's Degree or higher) are calculated.
- Mean ages for males and females are computed.
- Visualizations are generated to compare the mean ages of males and females and the age distribution by educational status and gender.

## Income by Age:
A bar plot illustrates how income varies across different age groups. This visualization helps identify any age groups that might have higher or lower incomes on average.

## Income Comparison by Gender:
- The script calculates and prints the average incomes for males and females. It then compares these averages to determine if one gender has a higher average income than the other.
- Initial observations suggest that if the average female income exceeds that of males, a message is printed indicating this finding.

## Education Levels:
- Counts of individuals with higher education degrees (Bachelor's or higher) are computed separately for males and females.
- These counts help understand the educational attainment distribution within the population.

##  Age Distribution:
- Mean ages for males and females are calculated and visualized.
- A histogram shows the age distribution by educational status and gender, offering insights into how age varies with education level.

## Conclusion
The project successfully cleans and processes US Census data to reveal important demographic insights. The following conclusions can be drawn from the analysis:

## Income Analysis:
There are significant variations in income across different age groups. Visualizations help pinpoint which age groups tend to earn more.
Gender-based income comparison indicates whether there is an income disparity between males and females.

## Educational Attainment:
A substantial portion of both males and females possess higher education degrees. However, the counts can indicate if one gender is more educated than the other within this dataset.

## Age Distribution:
The mean age for males and females offers a basic demographic snapshot.
Detailed visualizations reveal how age distribution changes with educational attainment and gender.

Overall, the project demonstrates the utility of R for data analysis and visualization, providing a clear picture of demographic trends and disparities within the US Census data. Further analyses could delve into additional variables or more complex statistical methods to uncover deeper insights.
