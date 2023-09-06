#QUESTION 1
# A) Create a vector with value 5,10,15,20,25,30 and write code to print values greater than 20
v <- c(5,10,15,20,25,30)
vec_greater_than_20 <- c()
for(num in v) {
  if(num > 20) {
    vec_greater_than_20 <- c(vec_greater_than_20, num)
  }
}
vec_greater_than_20

# B) Create logical vector TRUE, FALSE, TRUE, FALSE, FALSE, TRUE and write code to print values of vector 
# provided in Q-1A by applying given logical vector.
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, FALSE, TRUE)
vec_true <- v[logical_vector]
vec_true

# C) Create a list from vectors in Q-1 A & B, write a code to access 3rd value of 2nd member in the list.
list_of_vectors <- list(vec_greater_than_20, vec_true)
list_of_vectors
list_of_vectors[[2]][3]


#QUESTION 2
# A) Create user define a function which matrix as an input. Transpose input matrix, 
# multiply the matrix by 3 and output matrix
matrix_manipulation <- function(matrix) {
  new_matrix <- 3*t(matrix)
  return(new_matrix)
}
A = matrix(c(2,4,3,1,5,7), nrow=2, ncol=3, byrow=TRUE)
A
matrix_manipulation(A)

# B)  Create user define a function in R which takes a numeric vector as an input and print output as 
# sum, mean, median and standard deviation. Add a logical variable as “vector length”.
statistics <- function(num_vector) {
  sum <- sum(num_vector)
  mean <- mean(num_vector)
  median <- median(num_vector)
  stdev <- sd(num_vector)
  cat(sum, mean, median, stdev)
}
v = c(1,2,3,4,5,6,7,8)
statistics(v)


#QUESTION 3
# A) Read csv file Assignment4.csv and draw a heatmap. (Hint: reading file use row.names = 1 and 
# Converting data.frame to numeric matrix use function “as.matrix” or “data.matrix”)
setwd('/Users/sahitisomalraju/Downloads')
data <- read.csv('Assignment4.csv')
updated_data <- data[-1]
updated_data
data_frame <- data.frame(updated_data)
data_frame
heatmap(as.matrix(data_frame))

# B) By using ggplot and preloaded midwest data. By limit your axis xlim=c(0,0.1), ylim=c(0, 500000) 
# Plot area vs popadults and color points by states with size = 2.
library(ggplot2)
data('midwest', package='ggplot2')
g <- ggplot(midwest, aes(x=area, y=poptotal)) + geom_point(aes(col=state), size=2) + geom_smooth(method='lm')
g + xlim(c(0,0.1)) + ylim(c(0,500000))
plot(g)

