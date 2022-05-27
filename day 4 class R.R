d <-  c('a', 'b', 'c', 'e', 'j')
t <- c('g', 'k', 'l', 'a', 'e','c')
for (i in d){
  if (i %in% t){
    print(i)
  }
}
'%!in%' <- Negate('%in%')
for (y in d){
  if (y %!in% t){
    print(y)
  }
}
d[!(d %in% t)]


d <- c('jamie', 'kate', 'pogba')
t <- c('kate', 'john', 'jamie')
'%!in%' <- Negate('%in%')
for (i in d){
  if (i %!in% t){
    l <- nchar(i)
    print(l)
  }
}
p <- d[!(d %in% t)]
for (i in p){
  print(nchar(i))
}


value <- readline(prompt="Enter your numbeer")
value2 <- readline(prompt="Enter your numbeer")
print (as.integer(value) + as.integer(value2))

arr <- c()
range_arr <- as.integer(readline(prompt="Enter range  for array:  "))
for (i in 1:range_arr){
  enter_val <-as.integer(readline(prompt="Enter value for array: "))
}
print(arr)


perm <- readline(prompt="enter value: ")
count <- nchar(perm)
print(count)
def_count <- 1
  for (i in 1:count){
    def_count <- i* def_count
  }
print(paste(perm, "can be arranged", def_count, "time", sep=" "))


temp <- as.numeric(readline(prompt="enter temperature value: "))
unit <- tolower(readline(prompt="enter unit(F/C): "))
if (unit == 'f'){
  celcius <- (9/5) * (temp - 32)
  print(paste("the temperature value is ", celcius, "degrees celcium", sep=" "))
} else if (unit == 'c'){
  fahr <- (5/9) * (temp + 32)
  print(paste("the temperature value is ", fahr, "degrees fahrenheit", sep=" "))
}else {
  print("invalid input!!")
}

range_max <- as.integer(readline(prompt = 'enter max range: '))
arr_val <- c()
for(i in 1:range_max){
  arr_val<- c(arr_val, readline(prompt = "enter array values: "))
}


for (i in arr_val){
  k <- 1
  b <- nchar(i)
  for (n in  1:b){
  k<- k* n  
  }
  print(paste("the permutation of ", i, "is", k, sep=" "))
}

