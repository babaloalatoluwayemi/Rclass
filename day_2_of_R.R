index_val substr(name, 1,1)
print(index_val)


name_v <- c("janeth", "kola", "nemii", "bolaji")
for(i in name_v){
  y <- substr(i, 1,1)
  b <- substr(i, 2, nchar(i))
  cap <- toupper(y)
  print(cap)
  print(b)
}

name_v <- c("janeth", "kola", "nemii", "bolaji")
new_name <- c()
for(i in name_v){
  y <- substr(i, 1,1)
  b <- substr(i, 2, nchar(i))
  cap <- toupper(y)
  fullname <- paste(cap, b, sep="")
  new_name <- c(new_name, fullname)
}
print(new_name)


name_v <- c("janeth", "kola", "nemii", "bolaji")
new_name <- c()
for(i in name_v){
  y <- substr(i, 1,1)
  b <- substr(i, 2, nchar(i))
  cap <- toupper(y)
  fullname <- paste(cap, b, sep=" ")
  new_name <- c(new_name, fullname)
}
print(new_name)


f_name <- c("jane", "kurt", "gerald")
l_name <- c("matt", " boolean", "celcuis")
if (length(f_name) == length(l_name)){
  for (i in 1: length(f_name)){
    full_name <- paste(f_name[i], l_name[i], sep=" ")
    print(full_name)
  }
} else {
  print ("no can't print")
}


array <- c(3, 5, 1, 9, 2, 10, 11)
new_array <- sort(array)
mid <- length(new_array)/2
index <- round(mid)
a_index <- index + 1
if (length(array)%%2!=0){
  med <- new_array[index]
  print(new_array)
  print(paste("the median of the list is", med, sep=""))
}else if (length(array)%%2==0) {
  med <- (new_array[index] + new_array[a_array])/2
  print(new_array)
  print(paste("the median of the list is", med, sep=" "))
} else {
  print ("array cant be manipulated")
}
