library(htmltools)
library(stringr)

# tests/testthat/test-pasteBoxInput.R
context("pasteBoxInput function")

print(pasteBoxInput("testInput", "Test Label"))
test_that("pasteBoxInput returns a list", {
	result <- pasteBoxInput("testInput", "Test Label")
	expect_is(result, "list")
})

test_that("pasteBoxInput includes necessary components", {
	result <- pasteBoxInput("testInput", "Test Label")
	print(result)
	expect_true(result[[2]]$name=="div")
	expect_true(result[[1]]$name=="head")
})
