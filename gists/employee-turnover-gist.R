library(readr)
library(rlang)
library(dplyr)

# Load employee data from GitHub
source_url <- paste0("https://raw.githubusercontent.com/",
                     "teuschb/hr_data/master/datasets/",
                     "turnover_babushkin.csv")
employees <- readr::read_csv(url(source_url), col_types = cols())

# Compute annualized period attrition rate for the full period and for all
# possible combinations of the categorical or integer value columns

## Write a function to compute annualized attrition rate for grouped or
## ungrouped data
compute_annualized_attrition_rate <- function(.data,
                                              employee_months_var,
                                              terminations_var) {
  .data %>%
    dplyr::summarize(employee_months = sum({{employee_months_var}}),
                     number_terminations = sum({{terminations_var}})) %>%
    dplyr::ungroup() %>%
    dplyr::mutate(employee_years = employee_months / 12,
                  annualized_attrition_rate = (number_terminations
                                               / employee_years))
}
compute_easy_annualized_attrition_rate <- function(.data) {
  if (any(names(.data) == "tenure")) {
    .data %>%
      compute_annualized_attrition_rate(
        employee_months_var = tenure,
        terminations_var = left_company
      )
  } else {
    .data %>%
      compute_annualized_attrition_rate(
        employee_months_var = employee_months,
        terminations_var = number_terminations
      )
  }
}


## Use the function to complete the task
attrition_all_vars <- employees %>%
  dplyr::group_by(gender,
                  age,
                  industry,
                  profession,
                  hire_source,
                  manager_gender,
                  commute_type) %>%
  compute_easy_annualized_attrition_rate()

# Because you have access to exact person-years, you can easily compute
# annualized attrition for any arbitrary combination of variables...

## ... either by aggregating the microdata in a different way:
attrition_gender <- employees %>%
  dplyr::group_by(gender) %>%
  compute_easy_annualized_attrition_rate()

## ... or from pre-aggregated data
attrition_all_up <- attrition_all_vars %>%
  compute_easy_annualized_attrition_rate()