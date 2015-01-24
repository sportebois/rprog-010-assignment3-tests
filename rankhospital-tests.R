

library(testthat)


assert.rankhospital <- function () {
    message("# Starting to test rankhospital(..)")

    expect_equal(expected = "DETAR HOSPITAL NAVARRO", object = rankhospital("TX", "heart failure", 4))
    expect_equal(expected = "HARFORD MEMORIAL HOSPITAL", object = rankhospital("MD", "heart attack", "worst"))
    expect_that(is.na(rankhospital("MN", "heart attack", 5000)), is_true())

}

# Automatically run the tests
assert.rankhospital()

test.rankhospital <- function() {
    rankhospital("TX", "heart failure", 4)
    # [1] "DETAR HOSPITAL NAVARRO"

    rankhospital("MD", "heart attack", "worst")
    # [1] "HARFORD MEMORIAL HOSPITAL"

    rankhospital("MN", "heart attack", 5000)
    # [1] NA
}
