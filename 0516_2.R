install.packages("ggplot2")
install.packages("dpylr")

library(ggplot2)
library(dplyr)

# 1. 복사본 만들고 'total' 변수 추가
mpg_new <- mpg %>%
  mutate(total = cty + hwy)

# 2. 'mean' 변수 추가 (평균 연비)
mpg_new <- mpg_new %>%
  mutate(mean = total / 2)

# 3. 평균 연비가 가장 높은 자동차 3종 출력
mpg_new %>%
  arrange(desc(mean)) %>%
  slice(1:3)
