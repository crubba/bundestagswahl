---
output: 
  html_document: 
    highlight: pygments
    theme: readable
---


# About
This R package contains data sets on German parliamentary elections , from 1949 to 2013. It comprises three seperate data sets: 

- Electoral results -- contains first and second (*bt_election*)
- Candidate information -- *bt_candidate* -- 
- District information -- *bt_district* 
  1. Geographical information. *bt_district_neighbors*, *bt_district_poly* polygon information on the district shapes.
  2. Structural information *bt_district_structural*

The information was compiled from open information. The associated scripts have   [https://github.com/crubba/Project-Bundestag](on this Github repo). 

# Installation
The package can be installed from CRAN, as well as this Github repository:

````{r, eval = F}
install.packages("bundestagswahl")
# or
install.packages("devtools")
devtools::install_github("crubba/bundestagswahl")
````

# Helper scripts
Alongside the data, the package also provides convenience functions for producing data frames that are suitable for certain kinds of statistical analysis

- big merge

# License

# Citation
If you use the datasets provided through this package, please consider citing it. Once installed, type

````{r, eval = F}
citation("bundestagswahl")
````

to receive citation information.
