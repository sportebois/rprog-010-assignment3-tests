
library(testthat)


assert.best <- function () {
    message("# Starting to test best(..)")

    expect_equal(expected = "CYPRESS FAIRBANKS MEDICAL CENTER", object = best("TX", "heart attack"))
    expect_equal(expected = "FORT DUNCAN MEDICAL CENTER", object = best("TX", "heart failure"))
    expect_equal(expected = "JOHNS HOPKINS HOSPITAL, THE", object = best("MD", "heart attack"))
    expect_equal(expected = "GREATER BALTIMORE MEDICAL CENTER", object = best("MD", "pneumonia"))

    expect_error(object = best("BB", "heart attack"), regexp = "invalid state")
    expect_error(object = best("NY", "hert attack"), regexp = "invalid outcome")
}

# Automatically run the tests
assert.best()

test.best <- function() {

    best("TX", "heart attack")
    #[1] "CYPRESS FAIRBANKS MEDICAL CENTER"

    best("TX", "heart failure")
    # [1] "FORT DUNCAN MEDICAL CENTER"

    best("MD", "heart attack")
    # "JOHNS HOPKINS HOSPITAL, THE"

    best("MD", "pneumonia")
    # "GREATER BALTIMORE MEDICAL CENTER"

    best("BB", "heart attack")
    # Error in best("BB", "heart attack") : invalid state

    best("NY", "hert attack")
    # Error in best("NY", "hert attack") : invalid outcome
}
