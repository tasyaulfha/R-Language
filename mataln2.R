print("no.1")
x<-seq(-4*pi,4*pi,length.out = 500)
y<-sin(x)
plot(x,y,type = "l")
print("no.2")
X<-1:10
plot(x,y,log = "y")
f<-function(x){
  result<-sqrt(x)-2
return(result)}
f(9)
f<-function(x){
  result<-sqrt(x-2)
  return(result)
}
f(11)