# Load necessary package
library(dplyr)

# Create an empty data frame
student_data <- data.frame(
  Name = character(),
  Math_Score = numeric(),
  Science_Score = numeric(),
  History_Score = numeric(),
  Attendance = numeric())

# Add a student
add_student <- function(name, math, science, history, attendance) {
  student_data <<- rbind(student_data, data.frame(
    Name = name,
    Math_Score = math,
    Science_Score = science,
    History_Score = history,
    Attendance = attendance
  ))
}
generate_report <- function() {
  # Calculate average scores
  student_data$Average_Score <- (student_data$Math_Score + student_data$Science_Score + student_data$History_Score) / 3
  
  # Create attendance labels
  student_data$Attendance_Label <- ifelse(student_data$Attendance < 70, "NE", student_data$Attendance)
  
  # Select relevant columns for the report
  report <- student_data[c("Name", "Average_Score", "Attendance_Label")]
  
  # Print the report
  print(report)
}


# User interface
repeat {
  choice <- as.integer(readline("\n1. Add Student\n2. Generate Report\n3. Exit\n"))
  
  if (choice == 1) {
    name <- readline("Name: ")
    math <- as.numeric(readline("Math Score: "))
    science <- as.numeric(readline("Science Score: "))
    history <- as.numeric(readline("History Score: "))
    attendance <- as.numeric(readline("Attendance: "))
    add_student(name, math, science, history, attendance)
  } else if (choice == 2) {
    generate_report()
  } else if (choice == 3) {
    cat("Goodbye!\n")
    break
  } else {
    cat("Invalid choice.\n")
  }
}