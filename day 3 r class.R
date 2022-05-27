#find the mean

print ("hello world")
v <- c(6, 6.7, 10, 15, 12.5, 8)
sum_v <- 0
for (i in v){
  sum_v <- i + sum_v 
}
mean_value <- sum_v/length(v)
print(mean_value)

s_tring <- "james"
print (nchar(s_tring))

t_vector <- c("kate", "moyes", "judah", "lenin")
#print(length(t_vector))
for (i in t_vector){
  print(nchar(i))
}


data_set <- c(4, 10, 12, 13, 5, 8.9, 1.4, 1.3)
n <- length(data_set)
#print(data_set)
sum_data <-0
for (i in data_set){
  sum_data <- i + sum_data
}
print(sum_data)
mean_data <- sum_data/n
#print(mean_data)
data_i <- c()
for (i in data_set){
  a <- i- mean_data
  data_i <- c(data_i, (a**2))
}
#print(data_i)
sum_idata<-0
for (i in data_i){
  sum_idata<- i+sum_idata
}
#print(sum_idata)
std_dev <- (sum_idata/n)**(1/2)
print(std_dev)


#min value
t <- c(3, 10, 22, 11, 8, 12)
min_val<- t[6]
for (i in t){
  if (i < min_val){
    min_val <- i
  }
}
print(min_val)

#max value
t <- c(3, 10, 22, 11, 8, 12)
max_val <- t[6]
for (i in t){
  if (i > max_val){
    max_val <- i
  }
}
print(max_val)

# diff btw max and min
diff<- max_val-min_val
print(diff)

#diff btw a and b
a<- c(6, 10, 12, 3, 1)
b<- c(4, 13, 8, 9, 5)
c<- (a-b)
print(c)

#find the standard deviation between a and b which is c
C <- c(2, -3, 4, -6, -4)
n <- length(C)
print(C)
sum_C <-0
for (i in C){
  sum_C <- i + sum_C
}
print(sum_C)
mean_C <- sum_C/n
print(mean_C)
data_C <- c()
for (i in C){
  a <- i- mean_C
  data_C <- c(data_C, (a**2))
}
print(data_C)
sum_Cdata<-0
for (i in data_C){
  sum_Cdata<- i+sum_Cdata
}
print(sum_Cdata)
std_dev <- (sum_Cdata/n)**(1/2)
print(std_dev)



#solve this (mean(a)/max(b)) - (mean(b)/min(a))
a<- c(6, 10, 12, 3, 1)
n<- print(length(a))
print <- a
sum_a <- 0
for (i in a){
  sum_a <- i + sum_a
}
print(sum_a)
mean_a <- (sum_a/n) 
print(mean_a)


b<- c(4, 13, 8, 9, 5)
n<- print(length(b))
#print <- a
sum_b <- 0
for (i in b){
  sum_b <- i + sum_b
}
#print(sum_b)
mean_b <- (sum_b/n) 
#print(mean_b)


#min a
a <- c(6, 10, 12, 3, 1)
min_a<- a[1]
for (i in a){
  if (i < min_a){
    min_a <- i
  }
}
print(min_a)


#min b
b<- c(4, 13, 8, 9, 5)
min_b<- b[1]
for (i in b){
  if (i < min_b){
    min_b <- i
  }
}
print(min_b)


#max b
b<- c(4, 13, 8, 9, 5)
max_b <- b[1]
for (i in b){
  if (i > max_b){
    max_b <- i
  }
}
print(max_b)


#mean(a)/max(b)
mean_max<- (mean_a)/(max_b)
print(mean_max)

#mean(b)/min(a)
mean_min<- (mean_b)/(min_a)
print(mean_min)
 
number_2<- (mean_max)-(mean_min)
print(number_2)

#solve for (median a)/(//(min(b) +min(a)))
#median(a)
a <- c(6, 10, 12, 3, 1)
a_2 <- sort(a)
print(a_2)
median<- median(a_2)
print(median)
#min(b)+min(a)
min <- min_b+min_a
print(min)
min_ab<- (min)^2
print(min_ab)
minab <- (min_ab)**(1/2)
print(minab)
question_3<- c(median/minab)
print(question_3)

