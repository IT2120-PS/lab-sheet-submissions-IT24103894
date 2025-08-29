#1
setwd("C:\\Users\\it24103894\\Desktop\\IT24103894")
getwd()

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep=",")
print(Delivery_Times)

#2
hist(Delivery_Times$Delivery_Time,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time(minutes)",
     ylab = "Frequency",
     breaks=seq(20, 70, by=5),
     right=FALSE)
#3
# The distribution appears to be right -skewd, with the majority odf delivery time
# clustered between 20 and 40 minutes

#4
cum_freq <- cumsum(table(cut(Delivery_Times$Delivery_Time, breaks=seq(20, 70, by=5), right = FALSE)))


plot(seq(20, 65, by=5), cum_freq, type='o',
     main = "Cumulative Frequency Polygon(ogive) for Delivery Times",
     xlab="Delivery Time(minutes)",
     ylab="Cumulative Frequency",
     ylim=c(0, max(cum_freq)),
     pch=16)

