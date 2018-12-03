apbn <- read.csv(file="investasi.csv", header=TRUE, sep=",")
apbn


org <- read.csv(file="sample.csv", header=TRUE, sep=",")
org

model <-lm(tahun ~ jumlah_proyek, data=apbn)
summary(model)

plot(tahun ~ jumlah_proyek, data=apbn)
abline(model, col = "red", lwd = 1)


plot(X1 ~ X3, data = org)
lines(x, y, col = "red")

poly_model <- lm(org$X1 ~ poly(X3,degree=2), data = org)
poly_model
x <- with(org, seq(min(X3), max(X3), length.out=2000))
y <- predict(poly_model, newdata = data.frame(X3 = x))
lines(x, y, col = "red")

