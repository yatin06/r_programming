#question 1
d=punif(45,min=0,max=60,lower.tail = FALSE)
d

#b
a=punif(30,min=0,max=60,lower.tail=FALSE)
b=punif(20,min=0,max=60,lower.tail = FALSE)
print(b-a)


#question 2
d=dexp(3,rate=0.5)d

#b
x<-seq(0,5,by=0.02)
fx<-dexp(x,rate=0.5)
plot(x,fx,xlab="x" ,ylab="f(x)",main="pdf of exp dist at lambda=1/2", type='l')


#c
t<-pexp(3,0.5)
t
#d
x<-seq(0,5,by=0.02)
fx<-pexp(x,rate=0.5)
plot(x,fx,xlab="x",ylab="f(x)",main="CDF of exp dist at lambda=1/2",type='l')

#e
n<-1000
x_sim<-rexp(n,rate=0.5)
x_sim


#question 3
d=pgamma(1,shape=2,scale=1/3,lower.tail=FALSE)
d


c=qgamma(0.7,shape=2,scale=1/3)
c