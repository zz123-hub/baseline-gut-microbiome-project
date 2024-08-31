library(lattice)
library(permute)
library(vegan)
library(dplyr)

df <- read.table("cags_abundance.txt",sep="\t",header = T,row.names = 1,check.names = F)
env <- read.table("index_level.txt",sep="\t",header = T,row.names = 1,check.names = F)

env2<-scale(env, center = TRUE, scale = TRUE)
df.dist<- vegdist(df, method="bray")

env.dist<- vegdist(env2, method="euclidean")
set.seed(520)
mantel(df.dist, env.dist, method="spearman", permutations = 999)

