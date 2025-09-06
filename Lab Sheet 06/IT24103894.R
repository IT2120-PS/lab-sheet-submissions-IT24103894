setwd("C:\\Users\\Hasindu Dinujaya\\Desktop\\PS")
# Binomial Distribution
n <- 50
p <- 0.85

# P(X >= 47)
prob_at_least_47 <- sum(dbinom(47:50, size = n, prob = p))
print(paste("P(X >= 47):", prob_at_least_47))

# Using cumulative distribution function
prob_at_least_47 <- 1 - pbinom(46, size = n, prob = p)
print(paste("P(X >= 47):", prob_at_least_47))
# Poisson Distribution
lambda <- 12

# P(X = 15)
prob_15_calls <- dpois(15, lambda = lambda)
print(paste("P(X = 15):", prob_15_calls))

