context("btw_districts_neighbors")

test_that("Test for correct neighbors", {
  
  data("btw_districts_neighbors")

  # Flensburg-Schleswig 2013  
  x <- subset(btw_districts_neighbors, year == "2013" & 
                district_from == "Flensburg-Schleswig" & 
                neighbor == 1)
  neighbors <- x$district_to
  
  real_neighbors <- c("Flensburg-Schleswig", "Nordfriesland-Dithmarschen Nord",
                      "Rendsburg-Eckernförde")
  
  expect_that(all(neighbors %in% real_neighbors), is_true())
  
  
  # Altmark 2013
  x <- subset(btw_districts_neighbors, year == "2013" & 
                district_from == "Altmark" & 
                neighbor == 1)
  neighbors <- x$district_to
  
  real_neighbors <- c("Altmark", "Börde-Jerichower Land", "Helmstedt-Wolfsburg",
                      "Gifhorn-Peine", "Celle-Uelzen", "Lüchow-Dannenberg-Lüneburg",
                      "Prignitz-Ostprignitz-Ruppin-Havelland I", "Brandenburg an der Havel-Potsdam-Mittelmark I-Havelland III-Teltow-Fläming I")
  
  expect_that(all(neighbors %in% real_neighbors), is_true())
  
  
  # Dortmund 1 2013
  x <- subset(btw_districts_neighbors, year == "2013" & 
              district_from == "Dortmund I" & 
              neighbor == 1)
  neighbors <- x$district_to
  
  real_neighbors <- c("Dortmund I", "Dortmund II", "Ennepe-Ruhr-Kreis II",
                    "Recklinghausen I", "Hamm-Unna II", "Herne-Bochum II",
                    "Ennepe-Ruhr-Kreis II")
  
  expect_that(all(neighbors %in% real_neighbors), is_true())
  
  
  # Bad Kissingen 2013
  x <- subset(btw_districts_neighbors, year == "2013" & 
              district_from == "Bad Kissingen" & 
              neighbor == 1)
  neighbors <- x$district_to
  
  real_neighbors <- c("Bad Kissingen", "Fulda", "Main-Spessart",
                    "Schweinfurt", "Bamberg", "Kulmbach", 
                    "Coburg", "Suhl-Schmalkalden-Meiningen-Hildburghausen",
                    "Main-Kinzig-Wetterau II-Schotten")
  
  expect_that(all(neighbors %in% real_neighbors), is_true())

  })




test_that("Test for symmetry", {
  
  data("btw_districts_neighbors")
  
  sym_df <- left_join(btw_districts_neighbors, btw_districts_neighbors, 
                     by = c("district_from" = "district_to", 
                            "district_to" = "district_from",
                            "year" = "year"))
  
  sym_df$issame <- ifelse(sym_df$neighbor.x == sym_df$neighbor.y, 1, 0)

  expect_that(is.na(table(sym_df$issame)["0"]), is_true())
})


