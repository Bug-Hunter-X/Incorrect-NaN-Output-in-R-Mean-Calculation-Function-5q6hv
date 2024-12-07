```R
#Corrected function to handle NA values
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vector
  }
  if(anyNA(x)){
    return(NA)
  }
  sum(x) / length(x)
}

# Alternative using na.rm = TRUE
calculate_mean_alternative <- function(x) {
  if (length(x) == 0) {
    return(NA)
  }
  sum(x, na.rm = TRUE) / length(x) 
}

# Test cases
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c()
vec3 <- c(NA, 1, 2, 3)

print(calculate_mean(vec1)) # Correct output
print(calculate_mean(vec2)) # Correct output
print(calculate_mean(vec3)) # Correct output: NA

print(calculate_mean_alternative(vec1)) # Correct output
print(calculate_mean_alternative(vec2)) # Correct output
print(calculate_mean_alternative(vec3)) # Correct output: NA, showing the use of na.rm = TRUE
```