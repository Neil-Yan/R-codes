# X ~ Hyper(N1, N2, n),
# -PMF, P(X=x)
dhyper(x, N1, N2, n)

# -list P(X=x) from [0:5] (6 values)
dhyper(0:5,20,80,5)

# -CDF, P(X<=x)
phyper(x, N1, N2, n)

# -Mean, Expected value of x
# E(x) = x*f(x) = x*P(X=1)
sum((0:5)*dhyper(0:5,20,80,5))

# -Second Moment
# E(X^2) = x^2 * f(x)
sum((0:5)^2*dhyper(0:5,20,80,5))

# -Variance
# Var(x) = E(x^2) - [E(x)]^2
sum((0:5)^2*dhyper(0:5,20,80,5)) - (sum((0:5)*dhyper(0:5,20,80,5)))^2

# -Plot pmf of x
# plot(x, f(x))
# "h" for histogram-like vertical lines.
# main = "" is the main title
plot(0:5, dhyper(0:5,20,80,5),
        type="h", xlab="x", ylab="P(X=x)", main="pmf of X")

# -Simulation of hypergeometric, generate independent observations
rhyper(nn, N1, N2, n) # nn, the # of simuations
# e.g
r <- rhyper(10000, 20, 80, 5)

# -Simulation of 4 sides dice
# Sx = [1:4] and make 10000 simulations with replacement
x1 <- sample(1:4, size=10000, replace=T)

# -Simulation example
x <- 2:8
pmf <- c(1,2,3,4,3,2,1)/16
x.sum1 <- sample(x, size = 10000, replace = T, prob = pmf)
table(x.sum1)/10000 # calculate the frelative frequency for each group
# table (x.sum1) like a counter for each group

# -compare the results of simulation with true probabilities using a histogram
breaks <- (0:6) - 0.5 # from [-0.5, 5.5]
# draw the histogram
hist(r, breaks, probability = TRUE,
     xlab = "Number of Defective Fuses Found",
     main = "Simulated Results vs True Probabilities of X")
# draw a sequence of points for true probability
points(0:5, dhyper(0:5,20,80,5))

# -example of drawing a pmd of x
x <- 2:8
pmf <- c(1,2,3,4,3,2,1)/16
# draw a verticle bar
plot(x, pmf, type='h', ylab='P(X=x)', xlab='x', main='pmf of x')

