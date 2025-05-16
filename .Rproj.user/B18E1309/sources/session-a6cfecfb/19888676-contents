install.packages("dplyr")
library(dplyr)
install.packages("ggplot2")
library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)
head(mpg, 10)
tail(mpg, 9)
dim(mpg)
str(mpg)
summary(mpg)
mpg <- rename(mpg, city = cty)

mpg$total <- (mpg$city + mpg$hwy) / 2

mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")

mpg$grade <- ifelse(mpg$total >= 30, "A", 
                    ifelse(mpg$total >= 25, "B",
                           ifelse(mpg$total >= 20, "C", "D")))

