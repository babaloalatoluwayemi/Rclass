library("readr")
path <- "C:/Users/USER/Documents/diabetes.csv"
df <- read_csv(path)
View(df)

#not_outcome <- !(df$Outcome==1)
not_outcome <- df$Outcome !=1
a <- df[not_outcome,]
View(a)


path2 <- "C:/Users/USER/Documents/data_analysis/Brewery_data.csv"
df2 <- read_csv(path2)
View(df2)
last_three_years <- unique(df2$YEARS)
print(last_three_years)

countries <- unique(df2$COUNTRIES)
print(countries)

county <- df2$COUNTRIES
territories <- c()
for (i in county){
  if (i == "Nigeria" | i== "Ghana"){
    territories <- c(territories, "Anglophone")
  }else {
    territories <- c(territories, "Francophone")
  }
}
territory <- data.frame(
  TERRItORY <- territories
)
print(territory)
Ter <- unique(territory)
print(Ter)



df3 <- mutate(df2, TERRITORY=territories)
View(df3)

df4 <- df2 %>%mutate(TERRITORY=territories,
                     .after=COUNTRIES)


View(df4)
total_profit <- sum(df3$PROFIT)
print(total_profit)

a_y<- df3$TERRITORY == "Anglophone"
anglo <-df3[a_y, ]
View(anglo)
anglo_profit<- sum(anglo$PROFIT) 
print(anglo_profit)


load.path <- function( path_val){
  df2 <- read_csv(path_val)
  return (df2)
}


new.function <- function(df2){
  county <- df2$COUNTRIES
  territories  <- c()
  for (i in county){
    if (i == "Nigeria" | i == "Ghana"){
      territories <- c(territories, "Anglophone")
    } else {
      territories <- c(territories, "Francophone")
    }
  }
  return (territories)


add.dataframe <- function(df2, territories){
  df3 <- mutate(df2, TERRITORY=territories)
  return (df3)
}



path_val<- "C:/Users/USER/Documents/data_analysis/Brewery_data.csv"
x <- load.path(path_val)
new_territory <- new.function(x)
new_df <- add.dataframe(x, new_territory)
print(new_territory)
print(new_df)
View(new_df)



