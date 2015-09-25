# About
This R package contains data sets on German parliamentary elections, from 1949 to 2013. It comprises three seperate data sets: 

- Electoral results, including candidate and party votes (*bt_votes*)
- Candidate information (*bt_candidates*)
- District information 
  1. Geographical information. *bt_districts_neighbors* contains information about 
  the closeness of electoral districts, *bt_districts* contains structural information
  for electoral districts
  2. Map information in a polygon format are saved in *bt_districts_maps*

The information was compiled from open information. The associated scripts have   [https://github.com/crubba/Project-Bundestag](on this Github repo). Comma-separated files can be downloaded from [here](http://www.christianrubba.com/projects/projects.html#bundestagswahl).

# Installation & Usage
The package can be from this Github repository:

```{r, eval = F}
install.packages("devtools")
devtools::install_github("crubba/bundestagswahl")
```

To access the data in R type:

```{r, eval = F}
library(bundestagswahl)

data(bt_votes)
data(bt_candidates)
data(bt_districts_neighbors)
data(bt_districts)
data(bt_district_maps)
```

# Helper scripts
Alongside the data, the package also provides convenience functions for producing data frames that are suitable for certain kinds of statistical analysis

- big merge

# License

# Citation
If you use the datasets provided through this package, please consider citing it. Once installed, type

```{r, eval = F}
citation("bundestagswahl")
```

to receive citation information.
