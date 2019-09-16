# Geoscripting 2020 
# Lesson 1, Exercise 1
# Age calculator
# Tests
# 28/05/2019

# Load testing package
suppressWarnings(library('testthat'))
library('testthat')

# Source main.r
cat('Running main.R...\n')  
cat('Log of main.R:\n\n')
try(source('main.R'))

cat('\nmain.R runs without interruption\n')

# Start tests
cat('\nChecking functions...\n')

# Test if required functions exist
fun_req <- c("ageCalculator")
fun_found <- c(lsf.str())

# If the required functions do not exists, stop testing
for (fun in fun_req){
  new_fun <- paste0("^", fun, "$")
  if (Vectorize(grepl, USE.NAMES = FALSE)(new_fun, fun_found) == FALSE){
    stop(paste0("No function found called ", fun, ". Aborting tests."))
  }
  else{
    cat(paste0('\nFunction ', fun, ' successfully created\n'))
  }
}

cat('\nRunning tests for ageCalculator...\n')

# Test some outcomes
passed_true <- 0
years <- c(1995, 2002, 1850)
ages <- c(24, 17, 169)

for (year in years){
  if (class(ageCalculator(year)) != "numeric"){
    warning(paste0("numeric output expected, got output of class ", class(ageCalculator(year)), " instead"))
  }
  else{
    if (ageCalculator(year) == ages[match(year, years)]){
      passed_true = passed_true + 1
    }
    else{
      cat(paste0("\n", ages[match(year, years)]," expected but not returned for ", year, "\n"))
    }
    
  }
}

cat(paste0("\n", passed_true,"/", length(years), " ages correctly calculated\n"))

cat('\nTesting warnings and error handling...\n')

# Error handling for non-numeric input
expect_error(ageCalculator(TRUE))
expect_error(ageCalculator('string'))

# Warning for ages not yet born
expect_error(ageCalculator(2100))
expect_error(ageCalculator(2030))

cat("\nAll warnings and errors well-handled\n")
cat("\nDone testing\n")

if (passed_true != 3){
  stop("Build failed: not all ages correctly calculated")
}

