# About
This R package contains data sets on German parliamentary elections, from 1949 to 2013. It comprises three seperate data sets: 

- Electoral results, including candidate and party votes (*bt_votes*)
- Candidate information (*bt_candidates*)
- District information
  1. Geographical information. Information about the geographical closeness of electoral districts (*bt_districts_neighbors*), structural information (*bt_districts*)
  of electoral districts
  2. Map information in a polygon format (*bt_districts_maps*)

The information was compiled from open information. The associated scripts have   [https://github.com/crubba/Project-Bundestag](on this Github repo). Comma-separated files can be downloaded from [here](http://www.christianrubba.com/projects/projects.html#bundestagswahl).

# Installation & Usage
The package can be installed from this Github repository:


```r
#install.packages("devtools")
devtools::install_github("crubba/bundestagswahl")
```

To access the data in R type:


```r
library(bundestagswahl)

data(bt_votes)
data(bt_candidates)
data(bt_districts_neighbors)
data(bt_districts)
data(bt_districts_maps)
```

## Example

```r
library(dplyr)
library(ggplot2)
library(crmisc)

bt_votes_spd <- filter(bt_votes, party == "SPD")
gg_df <- left_join(bt_districts_maps, bt_votes_spd, 
by = c("year" = "year", "wk" = "wk"))

ggplot(data = gg_df, aes(x = long, y = lat, group = wk, fill = per)) + 
  geom_polygon(colour = NA) + 
  facet_wrap(~year, ncol = 4) +
  ggtitle("SPD vote shares, 1949-2013") +
  scale_fill_gradient(low = "white", high = "#660000") +
  theme_cr_map()
```

![](README_files/figure-html/unnamed-chunk-3-1.png) 


# License

# Citation
If you use the datasets provided through this package, please consider citing it. Once installed, type


```r
citation("bundestagswahl")
```

to receive citation information.
