context("Results with non-numeric values")

test_that("Character type throw errors", {
    expect_error(pop_var(letters))
    expect_error(pop_sd(letters))
})

test_that("Factor type gives warning", {
    expect_warning(pop_var(factor(1:5)))
    expect_warning(pop_sd(factor(1:5)))
})

obj_pop_var_factor <- suppressWarnings(pop_var(factor(1:5)))
obj_pop_sd_factor <- suppressWarnings(pop_sd(factor(1:5)))

test_that("Factor type returns NA", {
    expect_true(is.na(obj_pop_var_factor))
    expect_true(is.na(obj_pop_sd_factor))
})

context("Confirming results on multiple data structures")

obj_small_vector <- 1:10
obj_small_matrix <- matrix(obj_small_vector,
                           ncol = 2)
obj_small_df <- data.frame(x1 = obj_small_vector,
                           x2 = obj_small_vector)

test_that("Variance results", {
    expect_equal(pop_var(obj_small_vector),
                 8.25)
    expect_equal(pop_var(obj_small_matrix),
                 8.25)
    expect_equal(sapply(obj_small_df, pop_var),
                 c(x1 = 8.25, x2 = 8.25))
})

obj_sd_one_to_ten <- sqrt(sum((1:10 - mean(1:10))^2)/length(1:10))

test_that("Standard deviation results", {
    expect_equal(pop_sd(obj_small_vector),
                 obj_sd_one_to_ten)
    expect_equal(pop_sd(obj_small_matrix),
                 obj_sd_one_to_ten)
    expect_equal(sapply(obj_small_df, pop_sd),
                 c(x1 = obj_sd_one_to_ten, x2 = obj_sd_one_to_ten))
})
