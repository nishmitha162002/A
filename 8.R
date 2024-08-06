library(ggplot2)


# Create a simple data frame
data <- data.frame(
  Sales = c(150, 200, 250, 300, 350, 400, 450, 500, 550, 600,
            650, 700, 750, 800, 850, 900, 950, 1000, 1050, 1100),
  Engagement = c(20, 30, 40, 50, 60, 70, 80, 90, 100, 110,
                 120, 130, 140, 150, 160, 170, 180, 190, 200, 210),
  Category = c('A', 'B', 'A', 'B', 'A')
)


# Scatter plot of Sales vs Engagement, colored by Category
ggplot(data, aes(x = Sales, y = Engagement, color= Category)) +
  geom_point(size = 3) +  
  labs(
    title = "Sales vs Engagement", 
    x = "Sales",                   
    y = "Engagement"                
  )

# Create a line plot for Sales
ggplot(data, aes(x = Sales, y = Engagement)) +
  geom_line(size = 1) +  
  labs(
    title = "Sales Over Index",  
    x = "Index",                 
    y = "Sales"                  
  )

#Histogram
ggplot(data, aes(x=Sales)) +
  geom_histogram(binwidth = 30, color = "blue") +
  labs(
    title = "qwerty",
    x  = "qwerty",
    y = "qwerty"
  )
# Box plot of Sales by Category
ggplot(data, aes(x = Category, y = Sales, fill = Category)) +
  geom_boxplot() +
  labs(
    title = "Box Plot of Sales by Category",  # Title of the plot
    x = "Category",                           # X-axis label
    y = "Sales"                               # Y-axis label
  )

ggplot(data, aes(x = "", y = Sales, fill = Category)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Sales by Category")