# 1.변수 만들기, 데이터 프레임 만들기
english <- c(90, 80, 60, 70) math <- c(50, 60, 100, 20)
df_midterm ‹- data. frame(english, math)
* 2. 의부 데이터 이용하기
* 엑셀 파일
library(readxl)
df_exam ‹ read_excel("excel_exam.xlsx")
mean (df _ exam {english)
df_csv_exam <- read.csv("csv_exam.csv")
write.csv(df_midterm, file = "df_midterm.csv")|
  8 ROS 파일
load ("df _midterm.rds")
save(df_midterm, file = "df_midterm.rds")
※ 영어 점수 변수 생성 # 수학 점수 변수 생성 # 데이터 프레임 생성
* readxl 패키지 로드
* 역설 파일 불러오기
※ CSV 파일 불러오기
* CSV 파일로 저장하기
# ROS 파일 불러오기
* ROS 파일로 저장하기
앞에서 다른 기능들을 요약해 보겠습니다. 어떤 데이터 분석하든 변수 이름을 바꾸고 파생변수를 추가 작업은 기본적으로 항상 수행하게 됩니다.
# 1. 데이터 준비, 패키지 준비
mpg ‹- as.data.frame(ggplot2: :mpg)
library(dplyr)
library(ggplot2)
# 데이터 불러오기
# oplyr 로드
※ 8gplot2 로드
* 2. 데이터 파악
head(mpg)
tail(mpg)
View(mpg)
dim (mpg)
str(mpg)
summary (mpg)
* Raw 데이터 앞부분 # Raw 데이터 뒷부분 # Ran 데이터 뷰이 창에서 확인
# 차원
# 속성
#요익 통개량
# 3. 연수명 수정
mpg <- rename(mpg,
              company = manufacturer)
* 4. 파생번수 생성
mpg$total <- (mpg$cty + mpgShwy)/2
mpg$test <- ifelse(mpg$total >= 20,
                   "pass",
                   "fail")
* 연수 조합
# 조건은 활용
# 5. 반도 확인
table(mpg$test)
# 빈도표 플럭
qplot(mpgstest) # 막대 그래프 생성
※# 1.조건에 맞는 데이터만 추출하기
exam %>% filter(english >= 80)
# 여러 조건 동시 풍족
exam %>% filter(class == 1 & math >= 50)
# 여러 조건 중 하나 이상 증류
exam *>% filter(math >= 90 | english >= 90) exam %5% filter(class %in% c(1, 3, 5))
유# 2. 필요한 변수만 추출하기
exam %>% select(math)
exam %%% selectclass, math, english) .
## 3. 함수 조합하기, 일부만 력하기
exam %>%
  select(id, math) %% head (10)
#* 4. 순서대로 정렬하기
exam %>% arrange(math)
# 오름자순 정렬
exam %>% arrange(desc(math))
# 내림차순 정렬
exam 9% arrange(class, math) 여러 변수 기준 오름차순 정렬
## 5. 파생수 추가하기
exam %>% mutate(total a math + english + science)
# 여러 파생변수 한 번에 추가하기
exam %>%
  mutate(total = math + english + science,
         mean = (math + english + science)/3)
•# mutate()에 ifelse() 적용하기
exam %>% mutate(test = ifelse(science >= 60,
                              "pass", "fail"))
# 추가한 변수를 dplyr 코드에 바로 활용하기
exam %>%
  mutate (total = math + english + science) %>%
  arrange (total)
#₩ 6. 집단별로 요약하기
exam 2>%
group_by(class) %>%
  summarise(mean_math = mean (math))
# 각 집단별로 다시 집단 나누기
mpg %>%
  group_by (manufacturer,
            drv) %>%
  summarise(mean_cty = mean(cty))
## 7. 데이터 합치기 # 가로로 합치기
total <- left_join(testl, test2, by = "id")
☆ 세로로 합치기
group_all ‹- bind_rows(group_a, group_b)
## 1. 결치 정제하기
# 결죽치 확인
table(is.na(df$score))
# 결축치 제거
df_nomiss <- df %% filter(!is.na(score))
# 여러 변수 동시에 감족치 제거
df_nomiss <- df %>% filter(!is.na(score) & lis.na(sex))
# 함수의 결치 제외 기능 이용하기
mean(df$score, na.rm = T)|
  exam %>% summarise(mean_math = mean(math, na.rm = T))
## 2. 이상치 정제하기
# 이상지 확인
table(outlier$sex)
* 결속 처리
outlier$sex <- ifelse(outlierssex = 3, NA, outlier$sex)
# boxplot으로 극단치 기준 찾기
boxplot (mpg$hwy) $stats
# 극단지 결촉 처리
mpgshwy <- ifelse(mpg$hwy < 12 | mpgShwy > 37, NA, mpg$hwy)
앞에서 다른 ggp1ot2 함수들 요약해 보겠습니다.
값
geor_point
geon_colo
geom_bar)
geom_line()
geor_boxplot()
내용
산점도
막대 그래프 - 요악표 막대 그래프 - 원자료
선 그래프
상자 그림
## 7. 산정도
8gplot(data = mpg, aes(x = displ, y = hwy)) + geom_point)
# 축 설정 추가
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  xlim(3, 6) +
  ylim(10, 30)
*# 2. 평균 막대 그래프
  *:단계, 평균표 만들기
df_mpg <- mpg %>%
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy))
* 2단계. 그래프 생성하기, 크기순 정렬하기
gplot(data = df_mpg, aes(x = reorder (drv, -mean_hwy), y = mean_hwy)) + geom_colC:
  ## 3. 빈도 막대 그래프
  ggplot(data = mpg,
         aes (x = drv)) + geom_bar()
*# 4. 선 그래프
  agplot(data = economics, aes(x = date, y = unemploy)) + geom_line()
#* 5. 상자 그림
8gplot(data = mpg,
       aes (x = drv, y = hwy)) + geom_boxplot)