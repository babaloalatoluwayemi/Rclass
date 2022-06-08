library(RColorBrewer)
library(readr)
path<- "C:/Users/USER/Documents/data_analysis/datas/Brewery_data.csv"
df <- read.csv(path)
View(df)
#
# data("VADeaths")
# View(VADeaths)  
# # or  
# df<- VADeaths
# View(df)

print(colnames(df))
plant_cost <- df$PLANT_COST
hist(plant_cost)

frame_df <- df[df$YEARS == 2019 & df$COUNTRIES == "Ghana", ]
View(frame_df)

plot(frame_df$PROFIT, type="l")

hist(df$PLANT_COST, breaks = 5, col = brewer.pal(4, "Set3"),
     main = "Histogram showing plant cost")


hist(df$PLANT_COST, breaks = 10, col = brewer.pal(4, "Set3"),
     main = "Histogram showing plant cost")

plot(frame_df$UNIT_PRICE, type = "l",
     main= 'profit against month')

barplot(frame_df$UNIT_PRICE, col = brewer.pal(3, "Set1"))
boxplot(frame_df$UNIT_PRICE~  frame_df$MONTHS, col="red")
# this is a scattered graph plot
plot(x=frame_df$UNIT_PRICE,  y=frame_df$PROFIT, col="yellow")

#TABLE help to count in order to plot our graph
barplot(table(frame_df$BRANDS))
pie(table(frame_df$BRANDS))


#heatmap(as.matrix(frame_df))
df_val <- data.frame(frame_df$UNIT_PRICE, frame_df$PROFIT)
heatmap(as.matrix(df_val))


data("iris")
View(iris)
class(iris)

