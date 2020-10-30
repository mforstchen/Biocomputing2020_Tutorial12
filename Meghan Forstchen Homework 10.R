#Homework 10

#Load the ggplot library
library(ggplot2)

#Set the working directory to where files are saved
setwd("~/Desktop/Biocomputing2020_Tutorial12-main")

#Question 1
#Load in the dataset, I am using the "cars" dataset from R
#This data looks at the distance cars took to stop after going a certain speed (mph)
#This can be viewed through data("cars")

#Read in the dataset that I have saved
cars = read.csv("Cars.csv", header=TRUE, stringsAsFactors=FALSE)

#Plot comparing stopping distance based on speed of car
ggplot(data = cars, aes(x = speed, y = dist)) + 
  geom_point() +
  stat_smooth(method="lm") + 
  xlab("speed (mph)") +
  ylab("stopping distance (ft)") + 
  theme_classic()

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


#Compare the barplot and the scatterplot:
#The bar plot presents the data with the mean with all bars looking to be pretty similar with
#a mean around 15 observations. However, the scatterplot shows that while each of the regions
#may have a similar mean the distributions of the data points differ quite a bit by region.
