# load required packages
library(HMDHFDplus)
library(keyring)
library(tidyverse)

# Running for a single country with item left NULL lists available series
# for that country and ask for user entry of desired item
# HMDHFDplus::readHMDweb(
#   CNTRY = "USA",
#   username = keyring::key_list("human-mortality-database")$username,
#   password = keyring::key_get(
#     service = "human-mortality-database",
#     username = keyring::key_list("human-mortality-database")$username
#   )
# )

# Function to download a specified HMD dataset item for a single county
read_hmd_country <- function(CNTRY, item) {
  HMDHFDplus::readHMDweb(
    CNTRY = CNTRY,
    item = item,
    username = keyring::key_list("human-mortality-database")$username,
    password = keyring::key_get(
      service = "human-mortality-database",
      username = keyring::key_list("human-mortality-database")$username
    )
  )
}

# Help function to list the available countries
countries <- HMDHFDplus::getHMDcountries()

# Download a dataset iteratively for all countries using purrr::map()
# In this case, age-specific mortality in 1-year periods x 1-year age groups
# for all 1-year periods available
mx_1x1 <- countries %>%
  # Returns a list of data.frames, adding a column for country code to each
  purrr::map(function(country) {
    read_hmd_country(country, "Mx_1x1") %>%
      dplyr::mutate(country = country)
  }) %>%
  # Combines the data.frames into a single data.frame
  dplyr::bind_rows()
