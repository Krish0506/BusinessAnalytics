# add 2+2
2+2

a <-LETTERS

a[1:3]
v <- c(1:3, 25:26)
c(1:3,"A")

a[v]

# Data frames, 2 dimentional data structures

data(mtcars)
head(mtcars)

summary(mtcars)

#Subsetting a Dataframe: [row, column]

mtcars[1:3, 1:3]

#Subsetting based on logical criteria: dplyr
#Syntax for Dataframe: filter, summarize, group_by, select, arrange

filter(mtcars, mpg > 25)

summarise(mtcars, mean= mean(mpg))
mean(mtcars$mpg)

#group_by

mtcars %>%
  group_by(cyl, am)%>%
  summarise(mean = mean(mpg),
            sd = sd(mpg),
            min = min(mpg),
            max = max(mpg),
            median = median(mpg))

day <- read.csv("https://raw.githubusercontent.com/jefftwebb/data/main/day.csv")

summary(day$cnt)
sd = sd(day$cnt)
range = range(day$cnt)


library(dplyr)
day %>%
  group_by(season)%>%
  filter(yr == 1)%>%
  summarise(mean = mean(cnt))

day%>%
  group_by(yr) %>% 
  summarise(sum(cnt))

2049576-1243103



