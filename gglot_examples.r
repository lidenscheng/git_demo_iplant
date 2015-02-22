#Lidens Cheng
#Feb 21, 2015

install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

library("ggplot2")
library("reshape2")
library("ggthemes")
library("reshape2")

myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point(size=3) #separae species by different colors
myplot

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point(aes(shape= Species), size = 3) #separate species by different shapes also

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ] #samples a random group from diamonds
ggplot(d2, aes(x= carat, y = price, color = color))+ 
  geom_point()

library(MASS)
myplot <- ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
summary(myplot)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point()+ facet_grid(. ~ Species)
#facet grid 
#facet wrap 

library(RColorBrewer)
display.brewer.all()

df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill=variable))+
  geom_bar(stat= "identity", position="dodge")+
  scale_fill_brewer(palette ="Set1")
