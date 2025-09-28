setwd("C:\\Users\\Hasindu Dinujaya\\Desktop\\PS\\Lab 08")

weights <- scan("Exercise - LaptopsWeights.txt", what = numeric(), skip = 1)

### 1. 
pop_mean <- mean(weights)
pop_var  <- sum((weights - pop_mean)^2) / length(weights)   
pop_sd   <- sqrt(pop_var)                                  

cat("Population Mean:", pop_mean, "\n")
cat("Population Variance:", pop_var, "\n")
cat("Population SD:", pop_sd, "\n")

### 2. 
set.seed(123)
sample_mean <- replicate(25, mean(sample(weights, size = 6, replace = TRUE)))
sample_sd   <- replicate(25, sd(sample(weights, size = 6, replace = TRUE)))

cat("\nSample Means:\n"); print(sample_mean)
cat("\nSample SDs:\n");   print(sample_sd)

### 3.
mean_sample_means <- mean(sample_mean)
sd_sample_means   <- sd(sample_mean)

cat("\nMean of Sample Means:", mean_sample_means, "\n")
cat("SD of Sample Means:", sd_sample_means, "\n")

# Theoretical standard error
theoretical_se <- pop_sd / sqrt(6)
cat("Theoretical SE (σ/√n):", theoretical_se, "\n")


# Comparison
cat("\nTrue Mean:", pop_mean, "vs Mean of Sample Means:", mean_sample_means, "\n")
cat("True SD:", pop_sd, "vs SD of Sample Means:", sd_sample_means, "\n")
