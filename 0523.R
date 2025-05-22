install.packages("readxl")
instaall.packages("dpylr")

library(readxl)
library(dplyr)

exam <- read_excel("excel_exam.xlsx")

mpg <- data.frame(gglot2::mpg)
mpg %>%
  group_by(manufacturer, drv) %>%
  summarise(mean_cty = mean(cty)) %>%
  head(10)
