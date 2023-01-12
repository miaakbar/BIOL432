# BIOL432 A1 
## Mia Akbar
## Volume Estimator 

#libraries 
library(dplyr)
library(tidyverse)
library(ggplot2)

getwd()
setwd("./")

#read dat
dat2 <- read.csv("./measurements.csv")

#write a function for volume 
limbvol <- function(length, width){
  volume <- pi * (((1/2)*width)^2) * length
  return(volume)
}

#add volume to the data
voldat <- dat2 %>%
  mutate(volume= limbvol(Limb_length, Limb_width)) %>%
  write.csv('measurements.csv', row.names = FALSE)


