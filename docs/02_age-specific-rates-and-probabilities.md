# Age-specific rates and probabilities

:::{.rmdcaution}
<center>
**CAUTION**

The complete version of these notes hasn't been released.
</center>
:::

:::{.rmdimportant}
## Notes for 502 instructor Phil Hurvitz {.unnumbered}

### Human Mortality Database (HMD) and the `HMDHFDplus` package {.unnumbered}

HMD is a web page where researchers can access national mortality datasets, including lifetables. The `HMDHFDplus` package facilitates access to HMD, as well as the Human Fertility Database (HFD) and other demographic databases.

Both HMD and `HMDHFDplus` should be introduced in week 2 (concurrent with this age-specific rates and probabilities material) along with R data types, R data structure, R native pipes, and data manipulation in the `tidyverse`.

* Link to HMD website here: https://www.mortality.org/
* Link to HMD user registration here: https://www.mortality.org/mp/auth.pl
* Gist for basic usage of `HMDHFDplus`: https://github.com/hanowell/uwsoc533a/blob/main/gists/HMDHFDplus-gist.R

The gist above uses `keyring`, a package that securely stores secrets, such as usernames and passwords for databases, so you don't have to hard-code them into R scripts or (just as bad) load them in from an un-encrypted configuration file.

* Gist for storing HMD credentials with `keyring`: https://github.com/hanowell/uwsoc533a/blob/main/gists/keyring-gist.R

The `HMDHFDplus` gist also uses `purrr` from the `tidyverse`. I notice your `tidyverse` introduction doesn't include `purrr`. You may want to give a brief introduction to interation in your course, perhaps using lessons from the [*R for Data Science* Iteration chapter](https://r4ds.had.co.nz/iteration.html) relevant to the task at hand.

`HMDHFDplus` uses standardized country codes, but they aren't ISO standards.

* Mapping of country codes used in `HMDHFDplus` to country names: https://www.fertilitydata.org/cgi-bin/country_codes.php

## Notes for 502 instructor Phil Hurvitz {.unnumbered}

### Human Fertility Database (HFD) and `HMDHFDplus` package {.unnumbered}

Students should become familiar with the HFD this week, too, which we will use when studying international patterns of age-specific fertility, as well as summary indicators of fertility.

* HFD website: https://www.humanfertility.org/cgi-bin/main.php
* Many students will need to login as new users: https://www.humanfertility.org/cgi-bin/registration.php
* Recall my `keyring` gist for securely storing login credentials. Students will also need to create a new keyring for HFD, which they should call "human-fertility-database" if they want it to conform to my naming convention. The gist already contains code for this.
* The use of the `HMDHFDplus::readHFDweb` function is similar to the `HMDHFDplus::readHMDweb` function covered in my `HMDHFDplus` gist here: https://github.com/hanowell/uwsoc533a/blob/main/gists/HMDHFDplus-gist.R
* This week, we'll be looking at period age-specific birth counts, female population exposure, and age-specific fertility rates for all birth orders combined, such as those in the top table for the USA in this link (click on a dataset you want to show them to see its item naming convention, which is the suffix of the file name after the country code): https://www.humanfertility.org/cgi-bin/country.php?country=USA&tab=asfr
:::

## Period age-specific rates

:::{.rmdtip}
**DEMOGRAPHY & DATA SCIENCE**

### Period tenure-specific rates
:::

## Age-standardization

:::{.rmdtip}
**DEMOGRAPHY & DATA SCIENCE**

### Marketing-channel-standardization

Age groups are just a number... or rather just another discrete variable
:::

## Decomposition of differences between rates or proportions

:::{.rmdtip}
**DEMOGRAPHY & DATA SCIENCE**

### Customer analytics

"How much of that customer conversion delta is due to channel mix differences?"

### Employee analytics

"How much of that attrition rate delta is due to tenure mix differences?"
:::

## The Lexis diagram

## Age-specific probabilities

:::{.rmdtip}
**DEMOGRAPHY & DATA SCIENCE**

### More corporate confusion, tenure-specific rates vs. probabilities edition
:::

## Probabilities of death based on mortality experience of a single calendar year

:::{.rmdtip}
**DEMOGRAPHY & DATA SCIENCE**

### Funky new hire turnover metrics and how to avoid them
:::


