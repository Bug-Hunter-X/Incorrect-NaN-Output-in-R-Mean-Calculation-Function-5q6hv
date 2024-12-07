# R Mean Calculation Bug
This repository demonstrates a common, yet subtle bug in R related to calculating the mean of a vector containing NA values. The initial code incorrectly handles NA values, resulting in NaN output. The solution provides a corrected version that returns NA as expected when the input contains NA values. The provided tests show both the bug and the corrected behavior. 

## Bug Description
The `calculate_mean` function fails to produce NA when dealing with vectors containing NA values, instead producing NaN due to `sum()`'s coercion of NA to 0.

## Solution
The corrected function uses `na.rm = TRUE` in `sum()` to ignore NA values in calculating the mean, ensuring the proper handling of missing data.