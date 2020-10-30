#Homework 10

#Load the ggplot library
library(ggplot2)

#Set working directory
setwd("~/Desktop/Biocomputing2020_Tutorial12-main/")


#Question 2
#Read in the data.txt file
data = read.table("data.txt", header=TRUE, sep=",", stringsAsFactors=FALSE)

#Barplot of the mean of the four populations
ggplot(data, aes(x = region, y = observations, fill=region)) + 
  stat_summary(fun = mean, geom= "bar") + 
  xlab("Region") +
  ylab("Observations") + 
  theme_classic()

#Scatterplot of the observations within the four populations
ggplot(data = data,aes(x = region, y = observations, color=region)) +
  geom_jitter()+
  xlab("Region") + 
  ylab("Observations") + 
  theme_classic()

