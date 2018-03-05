mtCarsShinyApp
========================================================
author: Manoj Krishna
date: 04 March 2018
autosize: true

OBJECTIVE
========================================================

<u><center>**To Develop an interactive Shinyapp for mtCars**</center></u>

*The app can be accessed at:*

<b><a href="https://mkrishna.shinyapps.io/mtCarsShinyApp/", target="_blank">Click here to launch Shinyapp<br> </a></b>

*Documentation and be accessed at:*

<b><a href="https://github.com/mvmanoj/DataProducts/blob/master/README.md", target="_blank">Click here to see Documentation & readme file<br> </a></b>

*Github repo:*

<b><a href="https://github.com/mvmanoj/DataProducts", target="_blank">Access github repository<br> </a></b>

Shiny App - mtcars clustering
========================================================

![RPlot](https://github.com/mvmanoj/DataProducts/blob/master/Rplot.png)

Data Summary for mtcars Data
=============================
<small><small><small>

```r
head(mtcars,1)
```

```
          mpg cyl disp  hp drat   wt  qsec vs am gear carb
Mazda RX4  21   6  160 110  3.9 2.62 16.46  0  1    4    4
```

```r
str(mtcars)
```

```
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```
</small></small></small>


User Inputs Required
========================================================
The user is required to specify:

- X Variable to input paramter
- Y Variable to input parameter
- Number of Clusters to be observed


SUMMARY
==============

- mtcars dataset was used to develope this ShinyApp
- Applies the kmeans algorithm to mtCars dataset
- Analysis of the Data and Prediction based on parameters selected
- Cluster graphics to visualize the data points
- Developed in RStudio and published to shinyapp.io


