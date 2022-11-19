#question 1
chest=c(rep("GOld,20"), rep("Silver, 30"), rep("Bronze",50))
print(sample(chest,10))


chance=c("Success","Faliure")
print(sample(chance,10,replace=TRUE,prob=c(0.9,0.1)))

#question 2

n=as.integer(readline("enter the number of:"))
print("proablilty that two people in the room have the same birthday:")
print(pbirthday(n,classes = 365, coincident = 2))


print("the smallest value of n for which tje probability of a match is greater thab 0.5: ")
print(qbirthday(prob=0.5,classes =365, coincident = 2))

#question 3
cloudy=0.4
rain=0.2
cloudy_when_rain=0.85
bayesTherom<-function(cloudy_when_rain,cloudy,rain){
  rain_when_cloudy=cloudy_when_rain*rain/cloudy
}
print(bayesTherom(cloudy_when_rain,cloudy,rain))

#question 4
head(x=iris,3)  #first few rows

str(iris)


print(range(iris$Sepal.Length))

print(mean(iris$Sepal.Length))

print(median(iris$Sepal.Length))

print(quantile(iris$Sepal.Length,probs=c(0.25,0.75)))
print(IQR(iris$Sepal.Length))

print(sd(iris$Sepal.Length))
print(var(iris$Sepal.Length))

print(summary(iris))


