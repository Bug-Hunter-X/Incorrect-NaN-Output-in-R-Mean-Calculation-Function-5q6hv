```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vector
  }
  sum(x) / length(x)
}

# Test cases
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c()
vec3 <- c(NA, 1, 2, 3)

print(calculate_mean(vec1)) # Correct output
print(calculate_mean(vec2)) # Correct output
print(calculate_mean(vec3)) # Incorrect output: NaN instead of NA
```