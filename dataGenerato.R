# BIOL432 A1 
## Mia Akbar
## Data Generator 
getwd()
setwd("./")

#1. generate species names
Species <- sample(c("Lythrum salicaria","Amaranthus palmeria","Pinus contorta", 
                    "Pinus banksiana","Allaria petiolata"), 100, TRUE)
#2. generate limb widths
Limb_width <- runif(100,0,4)

#3. generate limb lengths
Limb_length <- runif(100,0,4)

#4. generate observer names
Observer <- sample(c("Mia","Maria Jose","Mabel"), 100, TRUE)

#5. combine to data frame and export to csv 
dat1 <- data.frame(Species, Limb_width, Limb_length, Observer)
write.csv(dat1,"./measurements.csv", row.names=FALSE)

