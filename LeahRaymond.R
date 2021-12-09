png(filename="LeahRaymond.png")

Xbar <- numeric(10000)
#set.seed(300)
for (i in 1:10000)
{
  x <- rexp(1000, rate = 1/15)
  Xbar[i] <- mean(x)
}
hist(Xbar, col= "yellow", ylim=c(0,1),main="Simulated sampling distribution", xlab="means", freq=FALSE)
lines(10:20, dnorm(10:20, mean(Xbar), sd(Xbar) ), col="orange",type = "b") #overlay pmf for Normal(17)

Dev.off()
