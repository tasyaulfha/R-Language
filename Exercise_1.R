library(Ryacas)
#--------------------------------LIMIT-------------
#no 1
yacas("Limit(o,0)(1-cos(o))/o")
#no.2
yacas("Limit(h,0) (Sin(x+h)-Sin(x))/h")
#no.3
yacas("Limit(h,0)(2*(-3+h)^2-18)/h")
#no.4
yacas("Limit(t,4)(t-sqrt(3*t+4))/4-t")

#----------------------------------DIFFERENTIATION--------------------------------------------
#no 1
simplify(deriv(sqrt(x)*x+1), x)
y1 <- function(x){
  return(((2*x + (x+1))/2*root(x,2)))
}
y1(2)

#no 2
Simplify(deriv((2*x^2 - 3)/sqrt(x)), x)
y2 <- function(x){
  return(((8*x^2 + (-2 * x^2 + 3))/(2 * root(x, 2)*x)))
}
y2(4)

#no 3
Simplify(deriv((x-1)/(x+1)), x)
y3 <- function(x){
  return((2/x^2 + 2 * x + 1))
}
y3(4)


#------------------------------------------INTEGRATION-----------------------------------------
#no 1
Integrate(2*x^3, x)
integrand <- function(x){
  return((x^4)/2)
}
integrate(f=integrand, lower = 0, upper = 3)

#no 2
Integrate(1-5*x^4, x)
integrand <- function(x){
  return(x - x^5)
}
integrate(f=integrand, lower = -1, upper = 2)

#no 3
Integrate(x^4 - 3*x^2 + 5, x)
integrand <- function(x){
  return((x^5)/5 - (x^3) + (5*x))
}
integrate(f=integrand, lower = -2, upper = 2)

#no 4
Integrate(x^2 + 1/2*sqrt(x), x)
integrand <- function(x){
  return(x^3/3 + root(x, 2)^3)
}
integrate(f=integrand, lower = 1, upper = 4)

#no 5
Integrate(x*(2-3*x)^2, x)
integrand <- function(x){
  return((x^2/2)*(2*x - (3*x^2/2))^2)
}