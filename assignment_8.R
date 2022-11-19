library(readr)
data=read.csv(file.choose())
dim(data)
head(data,10)
nrow(data)
mean(data$Wall.Thickness)
x<-hist(data$Wall.Thickness)
abline(v=mean(data$Wall.Thickness),col="red",lty=2)


# Loading packages
library(ggplot2)
y=rnorm(data$Wall.Thickness,mean(data$Wall.Thickness),sd(data$Wall.Thickness))
plot(data$Wall.Thickness,y)




hist(y, prob = TRUE) 

lines(density(y), col = "red")

ggplot(data, aes(Wall.Thickness)) +geom_histogram(aes(y = stat(density)),color = 'black', fill = 'yellow') +  geom_density(col = "red")+geom_vline(aes=)


#a
data<- read.csv(file.choose())
#b
head(data$Wall.Thickness, 10)

dim(data)
#c
mean_data<-mean(data$Wall.Thickness)

hist(data$Wall.Thickness)

#d
abline(v=mean_data, col = "Red", lty = 2)

#Qn2
par(mfcol = c(2,2))
s10 = c()
for(i in 1:9000){
  s10[i] = mean(sample(data$Wall.Thickness, 10, replace = T))
}
hist(s10, col="Red")
abline(v=mean(s10), col = "Red", lty = 2)
#b
s50 = c()
for(i in 1:9000){
  s50[i] = mean(sample(data$Wall.Thickness, 50, replace = T))
}
hist(s50, col = "Green")
abline(v=mean(s50), col = "Red", lty = 2)
s500 = c()
for(i in 1:9000){
  s500[i] = mean(sample(data$Wall.Thickness, 500, replace = T))
}
hist(s500, col = "Blue")
abline(v=mean(s500), col = "Red", lty = 2)
s9000 = c()
for(i in 1:9000){
  s9000[i] = mean(sample(data$Wall.Thickness, 9000, replace = T))
}
hist(s9000, col = "Yellow")
abline(v=mean(s9000), col = "Red", lty = 2)
