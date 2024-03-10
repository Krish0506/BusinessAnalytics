data(data)
head(data)

data(Homes)
head(Homes)


Homes %>%
  
  filter(lot_size > .2)

Homes %>%
  
  group_by(rooms) %>%
  
  summarize(avg_sqft = mean(sqft))

#Identify the dplyr code that would create a summary table showing average price for homes with different numbers of rooms:
  
  #A

Homes %>%
  
  group_by(Homes$rooms) %>%
  
  mutate(avg_price = mean(Homes$price))



#B

Homes %>%
  
  summarize(avg_price = mean(price))

#C

Homes %>%
  
  group_by(rooms) %>%
  
  mutate(avg_price = mean(price))

head(day)

summary(day)

summarise(day, median = median(dteday))

library(dplyr)

median_2011 <- day %>%
  filter(year = dteday) %>%
  summarise(median_ridership_2011 = median(dteday))

median_2012 <- day %>%
  filter(year = dteday) %>%
  summarise(median_ridership_2012 = median(dteday))

median(day$dteday)

max(day$mnth)

mean(day$season)

sd(day$season)
