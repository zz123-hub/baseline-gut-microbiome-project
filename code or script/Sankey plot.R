library(networkD3)
library(ggplot2)
library(webshot)
links <- read.csv("links.csv",header = T)
nodes <- read.csv("nodes.csv",header = T)
color <- 'd3.scaleOrdinal() .domain(["a", "b", "c","d","e","f","g"])
.range(["xx","xx","xx","xx","xx","xx", "xx"])'
sn <- sankeyNetwork(Links = links, Nodes = nodes,Source = "source", LinkGroup = "group2",NodeGroup = "group",
                    Target = "target",Value = "value", NodeID = "name",fontSize= 12, 
                    colourScale = color,nodePadding = 8,nodeWidth = 30)
saveNetwork(sn, "sn1.html")
webshot("sn1.html","sn1.pdf")

