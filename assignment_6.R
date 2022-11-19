library("pracma")
f <- function(x,y){
  2*(2*x+3*y)/5
}
ans<-intgral(f,0,1,0,1)
g <- function(y){
  2*(2+3*y)/5
}
h <- function(x){
  2*(2*x)/5
}
e <- function(x,y){
  2*x*y*(2*x+3*y)/5
}
val <- integral(f,0,1,0,1)
if(val == '1'){
  sprintf('Yes it is a joint pdf');
}else{
  sprintf('No, it is not a joint pdf');
}

g_x <- integral(g,0,1);
print(g_x)
h_y <- integral(h,0,1);
print(h_y)
E_xy <- integral2(e,0,1,0,1)$Q;
print(E_xy)





#question 2


f <- function(x,y){
  (x + y)/30;
}
p <- function (x,y){
  x*y*(x+y)/30
}
m <- matrix(c(f(0,0:2),f(1,0:2),f(2,0:2),f(3,0:2)),nrow=4,ncol=3,byrow = TRUE);
m;
if(sum(m)==1){
  sprintf('It is a joint mass function\n');
}else{
  sprintf('It is not a joint mass function');
}
g_x <- apply(m,1,sum);
g_x;
h_y <- apply(m,2,sum);
h_y;
cond_prob = m[1,2]/h_y[2];
cond_prob;
x <- c(0:3);
E_x <- sum(x*g_x);
E_x;
E_x_2 <- sum(x*x*g_x);
var_x <- E_x_2 - E_x^2;
var_x;
y <- c(0:2);
E_y <- sum(y*h_y);
E_y;
E_y_2 <- sum(y*y*h_y);
var_y <- E_y_2 - E_y^2;
var_y;
E_xy <- sum(matrix(c(p(0,0:2),p(1,0:2),p(2,0:2),p(3,0:2)),nrow=4,ncol=3,byrow = TRUE));
E_xy;
cov_xy = E_xy - E_x*E_y;
cov_xy;
correlation_coeff = cov_xy/(sqrt(var_x*var_y));
correlation_coeff


