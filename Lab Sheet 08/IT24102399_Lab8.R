setwd("C:\\Users\\IT24102399\\Downloads\\Lab 08-20250926")
#importing the data set
data <- read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

# Question 01
# Calculating population mean & standard deviation
pop_mean_laptop <-mean(Weight.kg.)
pop_sd_laptop <-sd(Weight.kg.)

# Question 02
# Creating null vectors to store sample data sets
samples_laptop <- c()
n_laptop <- c()

# Drawing 25 sample of size 6 
for (i in 1:25){
  s_laptop <- sample(Weight.kg.,6,replace = TRUE)
  samples_laptop <-cbind(samples_laptop,s_laptop)
  n_laptop <-c(n_laptop,paste('S',i))
}

#Assigning column names
colnames(samples_laptop) =n_laptop

#calculating sample means and standard deviations
s.mean_laptop <- apply(samples_laptop,2,mean)
s.sd_laptop <- apply(samples_laptop,2,sd)

# Question 03
#calculating the mean and standard deviation of the sample means
mean_of_s_means <- mean(s.mean_laptop)
sd_of_s_means <- sd(s.mean_laptop)

# comparing the values
pop_mean_laptop
mean_of_s_means

pop_sd_laptop
sd_of_s_means