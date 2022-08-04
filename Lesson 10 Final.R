install.packages("Ecdat")

library("Ecdat")

library("dplyr")

library("tidyr")

library("ggplot2")

head(Cigarette)

ggplot(Cigarette, aes(x=state, y=packpc)) +geom_boxplot() 

Cigarette %>% group_by(state) %>% summarise(mean(packpc))

Cigarette %>% group_by(state) %>% summarise(max(packpc))

Cigarette %>% group_by(state) %>% summarise(min(packpc))

Cigarette %>% group_by(year) %>% summarise(mean(packpc))

MedianDF <-Cigarette %>% group_by(year) %>% summarise(median = median (packpc)) 

unique(Cigarette$year)

ggplot(MedianDF, aes(x=year, y=median)) + geom_point(t_cig <- t.test(Cig1995$packpc, Cig1985$packpc, paired = TRUE))

ggplot(Cigarette, aes(x=avgprs, y=packpc)) + geom_point()

#Are the price and the per capita packs positively correlated, negatively correlated, or uncorrelated? Explain why your answer would be expected.
# the price per capita is negatively correlated from the points doig doen from right to left and cigarette use becming more common

avgprsInflate <- Cigarette %>% mutate(Price = avgprs / cpi)
ggplot(avgprsInflate, aes(x= Price, y = packpc, color = year)) +
  geom_point() + geom_smooth(method = lm) +
  ylab("Packs per Capita") + xlab("Adjusted Price per Pack")
regression2 <- lm(packpc ~ Price, Cigarette)



