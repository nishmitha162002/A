#Matrix Creation
matrix_A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3)
matrix_B <- matrix(c(9, 8, 7, 6, 5, 4, 3, 2, 1), nrow = 3)
print(matrix_A)
print(matrix_B)

#Matrix Manipulation
sum_matrix <- matrix_A + matrix_B
scaled_matrix <- matrix_A * 2

#Matrix Operations
transposed_A <- t(matrix_A)
product_matrix <- matrix_A * matrix_B
print(product_matrix)

#Matrix Statistics
sum_matrix_A <- sum(matrix_A)
mean_matrix_B <- mean(matrix_B)
sd_matrix_B <- sd(matrix_B)

#Visualization
library(ggplot2)

#Create a heatmap of matrix_A
library(ggplot2)
library(reshape2)
heatvalue <- melt(matrix_A)

# Create the heatmap
ggplot(heatvalue, aes(x = Var2, y = Var1, fill = value)) +
  geom_tile()

# Calculate row sums
row_sums_B <- rowSums(matrix_B)

# Create a data frame for plotting
df_B <- data.frame(Row = factor(1:3), Sum = row_sums_B)

# Create the bar plot
ggplot(df_B, aes(x = Row, y = Sum)) +
  geom_bar(stat = "identity")
#Display the visualizations
print(heatmap_plot)
print(barplot_plot)