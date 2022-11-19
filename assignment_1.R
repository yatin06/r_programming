d<-c(1,2,4,5,3,22)
max(d)
min(d)

#q2
ab=as.integer(readline())
facto <- function(){
  no = as.integer( readline(" Input a number to find factorial : "))
  fact = 1
 
  if(no < 0) {
    print(" The number is negative the factorial  ")
  } else if(no == 0) {
    print("  1 ")
  } else {
    for( i in 1:no) {
      fact = fact * i
    }
    print(paste(" The factorial result is ", no ,"is", fact ))
  }
}
facto()


#q3
# take input from the user
nterms = as.integer(readline(prompt="How many terms? "))
# first two terms
n1 = 0
n2 = 1
count = 2

if(nterms <= 0) {
  print("Plese enter a positive integer")
} else {
  if(nterms == 1) {
    print("Fibonacci sequence:")
    print(n1)
  } else {
    print("Fibonacci sequence:")
    print(n1)
    print(n2)
    while(count < nterms) {
      nth = n1 + n2
      print(nth)
      # update values
      n1 = n2
      n2 = nth
      count = count + 1
    }
  }
}