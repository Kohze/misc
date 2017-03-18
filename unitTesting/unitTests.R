#loading library
library(testthat)

#the tested function
testedFunction <- function(a, b, c)
{
  result = a*b/c
  if(result < 7){
    result = "to low"
  }
  
  return(result)
}


# Positive test | passing the test
test_that("function test", {
  expect_that(testedFunction(1,2,3), is_a("character"))
  expect_that( testedFunction(10,5,2), equals(25) )
  expect_that( testedFunction("string", 2, 3), throws_error() )
})


# Negative test | producing an error
test_that("function test negative", {
  expect_that(testedFunction(1,2,3), is_a("integer"))
})