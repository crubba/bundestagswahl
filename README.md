
# About
This R package contains data sets on German parliamentary elections, from 1949 to 2013. It comprises three seperate data sets: 

- Electoral results, including candidate and party votes (*bt_votes*)
- Candidate information (*bt_candidates*)
- District information
  1. Geographical information. Information about the geographical closeness of electoral districts (*bt_districts_neighbors*), structural information (*bt_districts*)
  of electoral districts
  2. Map information in a polygon format (*bt_districts_maps*)

Comma-separated/JSON files can be downloaded from [here](http://www.christianrubba.com/projects/projects.html#bundestagswahl).

# Installation & Usage
The package can be installed from this Github repository:


```r
#install.packages("devtools")
devtools::install_github("crubba/bundestagswahl")
```

To access the data in R type:


```r
library("bundestagswahl")

data("bt_votes")
data("bt_candidates")
data("bt_districts_neighbors")
data("bt_districts")
data("bt_districts_maps")
```

## Example

```r
library(dplyr)
library(ggplot2)
library(crmisc)

districts1987 <- subset(bt_districts_maps, year == 1987)
bt_votes_spd <- filter(bt_votes, party == "SPD", year == 1987, mandate == "pvote") %>%
  select(., year, wk,  per)

gg_df <- left_join(districts1987, bt_votes_spd, 
                   by = c("year" = "year", "wk" = "wk"))
gg_df$groupid <- paste(gg_df$wk, gg_df$part)

ggplot(data = gg_df, aes(x = long, y = lat, group = groupid, fill = per)) + 
  geom_polygon(colour = "white", size = 0.1) + 
  ggtitle("Party vote shares for SPD in 1987") +
  scale_fill_gradient(low = "white", high = "#660000") +
  xlab("") + ylab("") +
  theme_cr_map() + 
  theme(legend.text = element_text(size = 8),
        panel.border = element_blank(),
        panel.background = element_rect(fill = "#E8E8E8", colour = NA))
```

![](README_files/figure-html/unnamed-chunk-3-1.png) 

# Citation
If you use the datasets provided through this package, please consider citing it. To receive citing information type:


```r
citation("bundestagswahl")
```


