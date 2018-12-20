library("polynom")
library("ggplot2")

f1 <- function(x) {
  return(x*sin(x))
}

df <- data.frame(cbind(c(0, 1, 1, 0), c(0, pi/2, 0, 0)))
curvedf <- data.frame(cbind(c(0, pi/8, pi/4), c(0, f1(pi/8), f1(pi/4))))
poly.calc(curvedf$X1, curvedf$X2)


ggplot(data = data.frame(x = 0), mapping = aes(x = x)) + 
  stat_function(fun = f1, size = 1.05, alpha = 0.75, color='blue') + 
  geom_segment(aes(x = 0, y = 0, xend = 1, yend = f1(1))) + 
  geom_segment(aes(x = 1, y = 0, xend = 1, yend = f1(1))) + 
  geom_polygon(data = df, aes(x=X1, y=X2), fill = 'blue', alpha = 0.2) + 
  geom_area(stat = 'function', fun = f1, fill = 'black', alpha = 0.2, xlim = c(0, 1)) + 
  xlim(c(0,1))

trapezoid <- function(f, a, b) {
  if (is.function(f) == FALSE) {
    stop('f must be a function with one parameter (variable)')
  }
  
  h <- b - a
  
  fxdx <- (h / 2) * (f(a) + f(b))
  
  return(fxdx)
}
trapezoid(f1, 0, 1)

simpsons.rule <- function(f, a, b) {
  if (is.function(f) == FALSE) {
    stop('f must be a function with one parameter (variable)')
  }
  
  h <- (b - a) / 2
  x0 <- a
  x1 <- a + h
  x2 <- b
  
  s <- (h / 3) * (f(x0) + 4 * f(x1) + f(x2))
  
  return(s)
}
simpsons.rule(f1, 0, 1)






