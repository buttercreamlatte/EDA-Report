getwd()

setwd('/Users/najwamahmood/Desktop/May 2024/Data Science/Lab/Lab 2')

list.files()

churn = read.csv('Churn_Train.csv', header = TRUE)

view(churn)

install.packages(c("tidyverse", "dplyr", "dlookr"))

library(tidyverse)
library(dplyr)
library(dlookr)

descriptive_stats <- describe(churn)
print(descriptive_stats)

normality_test <- normality(churn)
print(normality_test)

plot_normality(churn)

correlation_matrix <- correlate(churn)
print (correlation_matrix)

# Visualization of the correlation matrix using plot.correlate ()
plot.correlate(correlation_matrix)

categ <- target_by(churn, Internet.Service)
cat_num <- relate(categ, Tenure)
summary(cat_num)

plot(cat_num)

# Assuming 'churn' is your dataset and 'PredictorVariable' is your categorical predictor variable 
install.packages ('vcd')
# Load necessary library
library (vcd)
mosaic (Internet.Service ~ Gender, data = churn)


install.packages("extrafont")
library(extrafont)

font_import(paths = NULL, recursive = TRUE, prompt = FALSE)

loadfonts(device = "win")  # Use "win" for Windows; for other OS, use the appropriate device (e.g., "pdf" for macOS)

fonts()

library(ggplot2)

ggplot(data, aes(x, y)) +
  geom_point() +
  theme(text = element_text(family = "Roboto Condensed Light"))

eda_paged_report(churn)

eda_web_report(churn)