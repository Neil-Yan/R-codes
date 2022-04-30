# X ~ b(n,p)
# P(X=x) = dbinom(x,n,p) 
x <- 0:10 
dist <- dbinom(x,10,0.4)

# -General Templet of MGF,
# k: the number of moment
X.moment <- function(x, pmf, k) {
    sum(x^k*pmf) # e.g pmf = dbinom(x,10,0.4)
}
# how to use
x <- (0:10)
pmf = dbinom(x, 10, 0.4)
X.moment(x, pmf, 2) - X.moment(x, pmf, 1)^2

# Example of MGF
# moment generating function of bonomial
X.moment <- function(k) {
  x <- 0:10
  sum(x^k*dbinom(x,10,0.4))
}