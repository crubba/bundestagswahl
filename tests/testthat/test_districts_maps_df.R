context("bt_districts_maps")

test_that("Number of districts is correct", {

  districts_info <- list(
    c(1949, 242), 
    c(1953, 242), 
    c(1957, 247),
    c(1961, 247),
    c(1965, 248), 
    c(1969, 248), 
    c(1972, 248), 
    c(1976, 248), 
    c(1980, 248), 
    c(1983, 248), 
    c(1987, 248), 
    c(1990, 328), 
    c(1994, 328), 
    c(1998, 328), 
    c(2002, 299),
    c(2005, 299),
    c(2009, 299),
    c(2013, 299)
    )
  districts_info <- as.data.frame(do.call("rbind", districts_info))
  colnames(districts_info) <- c("year", "ndistricts")

  data("bt_districts_maps")
  library(dplyr)
  
  bt_districts_maps <- group_by(bt_districts_maps, year)
  districts_lenght <- summarise(bt_districts_maps, 
                                n = length(unique(wk)))
  
  districts_info <- left_join(districts_info, districts_length, by = c("year" = "year"))
  
  expect_that(all(districts_info$n == districts_info$ndistricts), is_true())
})
