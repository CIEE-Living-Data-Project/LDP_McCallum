#I am choosing to not use groundhog so I will load packages without
library(ggplot2)
library(dplyr)

#Viewing my data
GSG.abundance <- read.csv("data/url/PC_GSG_abundance.csv")

#Research question: How many male sage grouse visit the lek sites each year?
#Creating a new dataframe with the three variables of interest excluding the entry without a year

male_GSG_obs<- GSG.abundance[c(2:197,199:205),c(2,6,38)]

#Renaming a heading
table(male_GSG_obs$heading)
colnames(male_GSG_obs)[3]  <- "Observations"

#Created a stacked bar chart
figure_1 <- ggplot(data = male_GSG_obs, aes(x=Year, y=Observations))
figure_1 + geom_bar(stat = "identity", aes(fill=Lek))
