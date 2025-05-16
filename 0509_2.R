install.packages("dplyr")
install.packages("readxl")
library(readxl)
library(dblyr)
exam <- read_excel("excel_exam.xlsx")
exam %>% filter(class == 1)
exam %>% filter(class == 2)
exam %>% filter(class != 1)
exam %>% filter(math >= 80)
exam %>% filter(class == 1 & math >= 50)
exam %>% filter(math >= 90 | english >= 90)
class1 <- exam %>% filter(class == 1)
mean(class1$math)

exam %>% select(class,math,english)
exam %>% selec(-math, -english)

exam %>%
  select(id, math) %>%
  head()