
f<-function(x){
  fx<-sin(x)
  return(fx)
}
input<-seq(0,5,4)
plot(input,
     sapply(input, f),
     type="l",
     xlab="x",
     ylab ="f(x)")

f<-function(x){
  fx<-log(x)
  return(fx)
}
input<-(1:5)
plot(input,
     sapply(input, f),
     type="l",
     xlab="x",
     ylab ="f(x)")

f<-function(x){
  fx<-sqrt(x)-2
  return(fx)
}
input<-(1:5)
plot(input,
     sapply(input, f),
     type="l",
     xlab="x",
     ylab ="f(x)")

f<-function(x){
  fx<-sqrt(x)-2
  return(fx)
}
input<-(1:5)
plot(input,
     sapply(input, f),
     type="l",
     xlab="x",
     ylab ="f(x)")

f<-function(x){
  fx<-sqrt(x-2)
  return(fx)
}
input<-(1:5)
plot(input,
     sapply(input, f),
     type="l",
     xlab="x",
     ylab ="f(x)")
