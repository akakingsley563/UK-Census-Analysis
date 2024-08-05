install.packages("ggthemes")
library(tidyverse)
library(ggplot2)
library(ggthemes)
library(dplyr)
library(readr)
library(scales)


# Read the CSV file into a data frame
data_1 <- read_csv("~/data_1.csv")

# View the original data frame
View(data_1)

# Clean the data: Remove missing values and convert categorical data to numerical data
# Rename the column "Female" to "Gender" and "Highest Ed" to "Highest_Ed"
New_data <- data_1 %>%
  mutate(Female = ifelse(Female == 0, "female", "male")) %>%
  rename(Gender = Female, Highest_Ed = `Highest Ed`)

# View the cleaned data frame
View(New_data)

# Create a subset of the data
df <- New_data %>%
  select(Highest_Ed, Mar_Stat, INC, Gender, Age)

# Create a bar plot using ggplot2 with formatted axis labels
df %>%
  ggplot(aes(x = Age, y = INC)) +
  geom_col() + 
  labs(title = "Income by Age", x = "Age", y = "Income") +
  scale_y_continuous(labels = scales::comma) +  # Format y-axis labels
  theme_minimal()

library(dplyr)

# Clean the data
New_data <- data_1 %>%
  filter(!is.na(Mar_Stat), !is.na(INC), !is.na(`Highest Ed`)) %>%
  mutate(Gender = ifelse(Female == 0, "female", "male")) %>%
  rename(Highest_Ed = `Highest Ed`)

# View the cleaned data
View(New_data)

# Create a subset of the data
df <- New_data %>%
  select(Highest_Ed, Mar_Stat, INC, Gender, Age)

# Create a bar plot using ggplot2 with formatted axis labels
df %>%
  ggplot(aes(x = Age, y = INC)) +
  geom_col() + 
  labs(title = "Income by Age", x = "Age", y = "Income") +
  scale_y_continuous(labels = scales::comma) +  # Format y-axis labels
  theme_minimal()

number_of_males <- sum(df$Gender == "male")


# Calculate the average incomes for males and females

mean_male_income <- df |>
  filter(Gender == "male") |>
  summarize(mean_income = mean(INC))

mean_Female_income <- df |>
  filter(Gender == "female") |>
  summarize(mean_income = mean(INC))

print(mean_male_income)
print(mean_Female_income)


number_of_females <- sum(df$Gender == "female")

cat("Number of males:", number_of_males, "\n")

if (mean_Female_income > mean_male_income){
  print("The average female make more money than the average male in this community.\n")
}else if (avg_male_income < avg_female_income) {
  cat("The average female makes more money than the average male.\n")
}


#FINAL_VISUALISATION
ggplot(df, aes(x = Gender, y = INC, fill = Gender)) +
  geom_boxplot() +
  labs(title = "Income Distribution Comparison", x = "Gender", y = "Income")


ggplot(df, aes(x = Gender, y = INC, fill = Gender)) +
  geom_bar(stat = "identity") +
  labs(title = "Average Income Comparison", x = "Gender", y = "Income")

# Create a box plot using ggplot2
ggplot(df, aes(x = Highest_Ed, y = Age, fill = Gender)) +
  geom_boxplot() +
  labs(title = "Age Distribution by Educational Status and Gender", x = "Educational Status", y = "Age") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))



ggplot(aes(x = mean_female_age, mean_male_age ))





male_Education <- df |>
  filter(Gender == "male") |>
  summarize(male_Education = sum(
    df$Highest_Ed == "Bachelors Degree" | "Masters or higher"))

male_education_count <- df |>
  filter(Gender == "male") |>
  summarize(male_Education = sum(
    Highest_Ed == "Bachelors Degree" | Highest_Ed == "Masters or higher"))



print(male_education_count)



female_education_count <- df |>
  filter(Gender == "female") |>
  summarize(female_Education = sum(
    Highest_Ed == "Bachelors Degree" | Highest_Ed == "Masters or higher"))



print(female_education_count)



mean_male_age <- df |>
  filter(Gender == "male") |>
  summarize(mean_age = mean(Age))

print(mean_male_age)




mean_female_age <- df |>
  filter(Gender == "female") |>
  summarize(mean_age = mean(Age))

print(mean_female_age)



df <- df |>
  group_by(Gender) |>                  # Group by gender
  mutate(Mean_Age = mean(Age)) |>       # Calculate the mean age for each group
  ungroup() 
View(df)


ggplot(df, aes(x = Gender, y = Mean_Age, fill = Gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(
    title = "Mean Age of Males and Females",
    x = "Gender",
    y = "Mean Age"
  )


ggplot(df, aes(x = Age, fill = Gender)) +
  geom_histogram(binwidth = 5, position = "dodge", alpha = 0.7) +
  facet_wrap(~ Highest_Ed, scales = "free_y") +
  labs(
    title = "Age Distribution by Educational Status and Gender",
    x = "Age",
    y = "Count"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))