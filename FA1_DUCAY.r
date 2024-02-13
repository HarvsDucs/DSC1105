# Load necessary package
library(ggplot2)

# Read the CSV file
data <- read.csv("C:/Users/Harvey/Downloads/cytof_one_experiment.csv")

# FA 1 Number 2
column1 <- data[[1]]

# Create a histogram for the first column
hist(column1, main="Histogram of the First Column", xlab="Values", breaks=30, col="blue")

# Create a Q-Q plot for the first column to check if it fits normal distribution
qqnorm(column1, main="Q-Q Plot of the First Column")
qqline(column1, col="red")

# Visually, we can say that the plot is sort of normally distributed
# same goes for the QQ plot visually.



# FA 1 Number 3

# Select the first two columns
column1 <- data[[1]] # First column
column2 <- data[[2]] # Second column

# Generate the Q-Q plot comparing the two columns
qqplot(column1, column2, main = "Q-Q Plot of the First Two Columns", xlab = "Column 1 Quantiles", ylab = "Column 2 Quantiles")
abline(0, 1, col = "red") # Adds a y=x reference line

# A straight line means that the two distributions follow a similar distribution.
# Knowing that it at the lower values of column 2, the column 1 deviates towards the 
#right side, it means that the column 1 are of higher values at this point relatively. 
# At higher column 2 values, column 1 seemed to be relatively follow a similar distribution
# as it heads into a straight diagonal line.



