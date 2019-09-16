# Exercise 1: Carrying out an R project

## Age calculator

### Your task
Write a simple function `ageCalculator` in a file `R/ageCalculator.R`. The function should take a year as input, and return the age of someone born in that year. Use control flow, and provide some examples of how the function works in the file `main.R`. The function should behave as follows:

    > ageCalculator(1995)
    [1] 24

    > ageCalculator(2050)
    Error: You aren't born yet

    > ageCalculator('how old am I?')
    Error: x must be of class numeric

### Requirements
- The `ageCalculator` should take a year as numeric input and return the age of someone born in that year
- Error handling needs to be implemented for non-numeric input and years beyond the current year
- Demonstrate the error handling in your `main.R` using the `try()` statement
- Proper Git use: both team members have to contribute to the Git repository, with a minimum of 3 commits in total.
- Use the correct project structure as explained in the [tutorial](http://geoscripting-wur.github.io/RProjectManagement/)
