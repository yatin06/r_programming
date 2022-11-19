#question 1
n=100
df=n-1
x<-rt(n,df)
hist(rt(n,df),breaks ="sturges")


#question 2
df1<-c(2,10,25)
rchisq(n,df1)
hist(rchisq(n,df1),breaks="sturges")


#question 3
x=seq(-6,6, length=100)
df=c(1,4,10,30)
a<-dt(x,df[1])
b<-dt(x,df[2])
c<-dt(x,df[3])
d<-dt(x,df[4])
plot(dt(x,30),type='l')
lines(a,col="green")
lines(b,col="red")
lines(c,col="blue")
lines(d,col="pink")



#question 4
qf(0.95,10,20)
pf(1.5,10,20)
pf(1.5,10,20,lower.tail=FALSE)
qf(0.25,10,20)
qf(0.5,10,20)
qf(0.75,10,20)
qf(0.99,10,20)
a<-rf(1000,10,20)
hist(a)
