# Concepts and measures

:::{.rmdcaution}
<center>
**CAUTION**

The complete version of these notes hasn't been released.
</center>
:::

:::{.rmdimportant}
## Notes for 502 instructor Phil Hurvitz {.unnumbered}

### Explicit cross-references {.unnumbered}

The following sections of this week's notes need cross references in 502. Notes for you at the sections below:

* [Employee balancing equation]
* [Why is demography important?]
:::

## What is demography anyway, and why should I care?

:::{.rmdnote}
### Definitions of demography {.unnumbered}
:::

### Okay so what's a "population" then?

### Why is demography important?

:::{.rmdimportant}
## Notes for 502 instructor Phil Hurvitz {.unnumbered}

In this section I will include:

### Usage of `tidycensus` and `idbr` {.unnumbered}

* Perhaps go through Walker's walkthrough of basic `tidycensus` usage since it is a fairly complex and feature-ful API
* I'll include a few examples that use PUMS data, which is now available through `tidycensus`, so it would be a good idea to show them how to access that data and clean some of it; luckily Walker has great documentation here: https://walker-data.com/tidycensus/articles/pums-data.html
* See population pyramid notes below for info about the `idbr` package

### Choropleth maps {.unnumbered}

* I'm using `tidycensus`, `sf`, and `mapview` following this basic setup here: https://map-rfun.library.duke.edu/02_choropleth.html.
* Maybe you'd like to show them how do the above with the `leaflet` package, too, which the `mapview` package depends on.

### International population pyramids {.unnumbered}

* I'm going to use Walker's `idbr` package to access the U.S. Census Bureau Internation Data Base (IDB) instead of scraping it; check out the `README`, which describes both how to access the IDB data, and gives an example of using it to draw a population pyramid for a single country: https://cran.r-project.org/web/packages/idbr/readme/README.html

Seems like both of these topics would be appropriate to include in your week 3, where you cover graphs and tables in R Markdown, and where you have already taught the `tidyverse`.
:::

## The balancing equation of population change

### Visualizing the balancing equation: Sweden in 1988

:::{.rmdtip}
**DEMOGRAPHY & DATA SCIENCE**

### Balancing equation for customers and employees

#### Customer balancing equation

#### Employee balancing equation

:::{.rmdimportant}
## Notes for 502 instructor Phil Hurvitz {.unnumbered}

This section will introduce a data on actual employee turnover. Introduce the material below during the same week you introduce `tidyverse`, if possible.

* Kaggle documentation of data: https://www.kaggle.com/davinwijaya/employee-turnover
* Data available from Ben Teusch's GitHub page: https://github.com/teuschb/hr_data/blob/master/datasets/turnover_babushkin.csv
* Gist for accessing the data that demonstrates the power of having access to exact person-years when computing demographic rates (in this case an attrition rate, which is analogous to a mortality rate): https://github.com/hanowell/uwsoc533a/blob/main/gists/employee-turnover-gist.R
:::
:::

## The structure of demographic rates

## Period rates and person-years

## Principal period rates in demography

:::{.rmdtip}
**DEMOGRAPHY & DATA SCIENCE**

### Principal period rates for customers and employees

#### Customer analytics

#### Employee analytics
:::

## Growth rates in demography

### Crude growth rate

### Instantaneous growth rate

### Doubling time

### Comparison of crude growth rate and mean annualized growth rate

:::{.rmdtip}
**DEMOGRAPHY & DATA SCIENCE**

### Customer and employee headcount growth rates

#### Customer analytics

#### Employee analytics
:::

## Estimating period person years

:::{.rmdtip}
**DEMOGRAPHY & DATA SCIENCE**

### The promise (and peril) of knowing exact person years
:::

## The concept of a cohort

:::{.rmdtip}
**DEMOGRAPHY & DATA SCIENCE**

### The use and misuse of the term "cohort" in the corporate world

### Teach your boss the difference between age, period, and rate ASAP
:::

## Probabilities of occurrence of events

:::{.rmdtip}
**DEMOGRAPHY & DATA SCIENCE**

### Confusion between rates and probabilities in the corporate world
:::
