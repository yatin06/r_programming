x<-c(0,1,2,3,4)
px<-c(0.41,0.37,0.16,0.05,0.01)
sum(x*px)

weighted.mean(x*px)
c(x%*%px)


#question 2
ft<-function(t){t*(0.1*exp(-0.1*t))}
integrate(ft,0,Inf)$value

#question 3
x<-c(0,1,2,3)
px<-c(0.1,0.2,0.2,0.5)

f2<-function(x){
  -18+12*x+(3-x)*2
}
v=sum(x*px)
f2(v)


#question 4

f3<-function(x){
  x*(0.5*exp(-abs(x)))
}
first<-integrate(f3,1,10)
first

f4<-function(x){
  (x^2)*(0.5*exp(-abs(x)))
}
second<-integrate(f4,1,10)
second
mean<-first$value
print(mean)
var<-second$value-(mean*mean)
print(var)


#question 5
f1<-function(y) (3/4)*(1/4^(sqrt(y)-1))
f2<-function(y) (3/4)*(1/4^(sqrt(y)-1))
x<-c(1,2,3,4,5)
y<-x^2

ans=sum((y)*f1(y))
ans
ans3=sum((y^2)*f1(y))
ans3

#variance
var<-ans3-ans^2
var
