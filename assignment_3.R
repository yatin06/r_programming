#question 1

a<-dbinom(7,12,1/6)
b<-dbinom(8,12,1/6)
c<-dbinom(9,12,1/6)
print(a+b+c)

a<-pbinom(9,12,1/6)
b<-pbinom(6,12,1/6)
print(a-b)


#question 2

a<-pnorm(84,72,15.2,lower.tail=FALSE)
print(a)

#alternale
a<-pnorm(84,72,15.2)
print(1-a)


#question 3
a<-dpois(0,5)
print(a)

print(sum(dpois(48:50,50)))


#question 4
a<-dhyper(3,17,233,5)
print(a)

#question 5
#a
x ~binom(21,0.477)
#b
a<-dbinom(x,31,0.477)
print(a)
plot(x,a,type='l')


#c using pbinom
x<-c(0:31)
a<-pbinom(x,31,0.477)
print(a)
plot(a,a,type='l')


#d
x<-c(0:31)
a<-dbinom(x,31,0.477)
meanx<-sum(x*a)
varx<-sum(((x-meanx)^2)*a)
sdx<-sqrt(varx)
print(meanx)
print(varx)
print(sdx)
