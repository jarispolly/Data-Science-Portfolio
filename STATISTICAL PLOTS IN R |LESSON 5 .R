#Lesson 5 Hands-On

rivers

rr = data.frame(rivers)

head(rr)

#create a histogram with suitable bin widths
#trial 1
r=ggplot(rr,aes(x=length))
r+geom_histogram()
#trial 2 - i thought lenght in miles should go in x???
r=ggplot(rr,aes(x=miles))
r+geom_histogram()
#trial 3
rivers <-c(735,320,325, 392,524,450)

rr <- data.frame(rivers)

r=ggplot(rr, aes(x=rivers))
r+geom_histogram(binwidth=50) + ggtitle("Histogram of River Lengths(mi)") +
  xlab("Length (in mi)") 

#a box plot

r <- ggplot(rr, aes(x = "", y = rivers))
r + geom_boxplot() + xlab("")

summary(rr$rivers)

#normal probability plot


ggplot(rr, aes(sample = rivers)) + geom_qq()

#Are there any outliers in this data set? 
#3rd qt -1st qt
505.5 - 341.8
#answer1 * 1.5
163.7*1.5

#answer2 + 3rd qt
245.55+505.5
#751.05

#1st qt-answer2
341.8-245.55
#96.25
#can I change the values shown in the boxplot?*****

#Are they high or low outliers?
#*****there are no outliers in the Head(rivers) dataset above 751 and below 96.25
#Do these data appear to come from a normal distribution?
  
#i would say yes the data comes from a normal distribution because they come close to falling in a straight lin
