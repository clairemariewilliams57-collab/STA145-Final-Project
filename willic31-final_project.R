###Load Packages
library(readr)
library(dtplyr)
#Load the dating  
data <- read_csv("data.csv")

#Step 7: load data.csv from the working directory 
data <- read_delim("data.csv")

#Step 8: run three checks
dim(data)
names(data)
summary(data)

# Descriptive Statistics for table 1 

# summary (gdp_per_capita)
sd(data$gdp_per_capita)
mean(data$gdp_per_capita)
min(data$gdp_per_capita)
max(data$gdp_per_capita)

# summary for party control
table(data$party_control)

#linear regression
lm <- lm(gdp_per_capita~ as.factor(party_control), data = data)
summary(lm)

# box plot
boxplot(data$gdp_per_capita ~ data$party_control)

