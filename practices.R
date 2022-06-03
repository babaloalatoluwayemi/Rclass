a<- 1
b<- 1
c<- -1

(-b  + sqrt(b^2-4*a*c))/(2*a)
(-b - sqrt( b^2-4*a*c))/(2*a)
log(8)
log(a)
log(c)
args(log)
log(8, base=2)
log(8,2)
help("+")
a<- 3
b<- 2
c<- -1
(-b+ sqrt(b^2-4*a*c))/(2*a)
(-b - sqrt(b^2-4*a*c))/(2*a)
x<- 4
log(10^x)
log10(x^10)
log(exp(x))
exp(log(x, base= 2))
mat<- matrix(1:20, 5,4)
print(mat)
mat[4, 3]
mat[ , 3]
mat[5, ]
mat[, 2:4]
as.data.frame(mat)
View(df)
data("Diabetes")
a<- c(10, 4, 2, 4)
print(a)
a
name<- c(tolu = 50, yemi= 70, sayo= 90)
name
class(name)
seq(1:20)
seq(1,20,10)
name[2]
name[c(1,3)]
name[1:2]
name[1:3]
b<- c(1, "hellen", 3)
b
january<- c(Beijing = 35, Lagos = 88, Paris= 42, Rio_de_Janeiro= 84, San_Juan= 81, Toronto=30) 
january
january[1:3]
january[3:4]
12:78
seq(1,100, 2)
seq(6,55,4/7)
a<- seq(1,10,0.5)
class(a)
b<- seq(1,10)
class(b)
c<- c(3, 5, 6, 3, 1)
sort(c)
index<- order(c)
c[index]
max(c)
min(c)
i_max<- which.max(january)
i_max
january[i_max]
rank(c)
tolu<- c(23, 45, 55, 78, 34, 10)
tolu*2
tolu-10
t<- c(2, 4,6,8, 10, 12)
o<- c(1, 3, 5, 7, 9, 11)
l<- t*o
l
temp <- c(35, 88, 42, 84, 81, 30)
city<- c("Beijing", "Lagos", "Paris", "Rio_de_Janeiro", "San_Juan", "Toronto") 
city_temp<- data.frame(name= city, temperature= temp)
city_temp
for(i in temp){
  (5/9*(temp -32))
  print(temp)
  }
for (i in 1:5){
  print(i, i^2)
}

for ( i in temp){
  print (c(i, i-10))
}
b<- numeric(10)
for (i in 1:10){
  b[i] <-i^2
}
b
mean(b)
median(b)
x<-c(1, 5, 6, 3, 9)
st<- numeric(5)
for (i in x){
  st<- x^2
}
print(st)
x<-c(1, 5, 6, 3, 9)
st2<- numeric(5)
for (i in x){
  st2[i]<- i^2
}
print(st2)

x<-c(1, 5, 6, 3, 9)
st3<- numeric(5)
for (i in 1:5){
  st3[i]<- (x[i^2])
}
print(st3)
for (degreeC in x){
  degreeF <- degreeC*(9/5)+32
  print(c(degreeC, degreeF))
  
}
for (temp in c(40, 20, 54, 23, 56)){
if(temp>30){ 
  
  print("warm")
}else{
print("cold")
}
}
for (i in 1:10){
  for (j in 1:2){
    print(i-j)
  }
}
t <- c(20,5,2,4,6,3)
for (i in t){
 print( i)
}
for (l in 1:length(t)){
  print(t[l])
}
mat<- matrix(1:50, nrow = 5)
mat
for (i in mat){
  print(i)
}
