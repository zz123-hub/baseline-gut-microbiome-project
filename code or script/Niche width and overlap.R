library(vegan) 
library(spaa)
library(psych)
library(ggplot2)
bc <- read.csv("guild_abundance.csv", sep=',', header=TRUE)
niche_width <- niche.width(bc, method = 'levins')
niche_width
boxplot(unlist(niche_width),xlab="Total", ylab = 'niche breadth index')
barplot(unlist(niche_width),xlab="Total", ylab = 'niche breadth index')
my_niche_width<-t(niche_width)
write.csv(my_niche_width, "niche_width.csv")
niche_overlap <- niche.overlap(bc, method = 'levins')
niche_overlap
niche_overlap <- as.matrix(niche_overlap)
write.csv(niche_overlap, "niche_overlap.csv")
###############################################################