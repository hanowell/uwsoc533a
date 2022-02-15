library(dplyr)
library(ggplot2)
library(HMDHFDplus)
library(keyring)
library(plotly)

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
read_hfd_country <- function(CNTRY, item) {
  HMDHFDplus::readHFDweb(
    CNTRY = CNTRY,
    item = item,
    username = keyring::key_list("human-fertility-database")$username,
    password = keyring::key_get(
      service = "human-fertility-database",
      username = keyring::key_list("human-fertility-database")$username
    )
  )
}
asmr_us <- read_hmd_country("USA", "Mx_1x1") %>%
  dplyr::filter(Year == 2000) %>%
  dplyr::rename(age = Age, rate = Female) %>%
  dplyr::mutate(decrement = "death") %>%
  dplyr::select(decrement, age, rate)
asfr1_us <- read_hfd_country("USA", "pft") %>%
  dplyr::filter(Year == 2000, !(x %in% c("12-", "55+"))) %>%
  dplyr::rename(age = x, rate = m1x) %>%
  dplyr::mutate(decrement = "first birth", age = as.integer(age)) %>%
  dplyr::select(decrement, age, rate)
asr_us <- dplyr::bind_rows(asmr_us, asfr1_us) %>%
  dplyr::filter(age %>% dplyr::between(13, 54))
asr_us_plot <- ggplot2::ggplot(asr_us) +
  ggplot2::aes(x = age, y = rate, color = decrement) +
  ggplot2::geom_line() +
  ggplot2::scale_x_continuous(breaks = seq(15, 50, 5), labels = seq(15, 50, 5))
plotly::ggplotly(tooltip = NULL)
