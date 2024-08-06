# Number of students and courses
num_students <- 5
num_courses <- 5

# Student names
student_names <- c("Arun Rahul", "Bheem Kumar", "Raj Kumar", "Jahal A R", "Suresh")

# Matrix of course marks
course_marks <- matrix(c(
  85, 92, 78, 88, 95,
  75, 80, 85, 70, 60,
  100, 78, 56, 34, 56,
  78, 45, 67, 89, 90,
  89, 80, 67, 78, 90
), nrow = 5, byrow = TRUE)

# Create a data frame to store student records
student_records <- data.frame(
  Name = student_names,
  Total_Marks = rowSums(course_marks),
  Average_Marks = rowMeans(course_marks)
)

# Add grades based on average marks
student_records$Grade <- ifelse(
  student_records$Average_Marks >= 90, "A",
  ifelse(student_records$Average_Marks >= 80, "B",
         ifelse(student_records$Average_Marks >= 70, "C",
                ifelse(student_records$Average_Marks >= 60, "D", "F")))
)

# Print student grade report
cat("\nStudent Grade Report:\n")
print(student_records)

