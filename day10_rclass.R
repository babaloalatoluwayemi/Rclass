library("readr")
#install.packages("janitor")
library("janitor")
library("dplyr")
library("lubridate")

path <- "C:/Users/USER/Documents/data_analysis/finnstats/FinData.csv"
df <- read_csv(path)
View(df)
print(colnames(df))

clean_df <- clean_names(df)
print(colnames(clean_df))
View(clean_df)

tabyl(clean_df, last_name)

for (i in colnames(clean_df)){
  sum <- tabyl(clean_df, i)
  print(sum)
}


for (i in colnames(clean_df)){
format <- clean_df %>% tabyl(i) %>%
  adorn_pct_formatting(digits=2, affix_sign = TRUE)
print(format)
}



clean_df %>%tabyl(employee_status, full_time) %>% adorn_totals()

clean_df%>% tabyl(employee_status, full_time) %>%adorn_totals(where = c("row", "col"))

clean_df%>% tabyl(employee_status, full_time, subject)

new_clean <- clean_df%>% remove_empty(which = c("rows"))
clean_new <- new_clean%>% remove_empty(which = c("cols"))
View(clean_new)


clean_new %>% get_dupes(first_name)
dat<- clean_new %>% get_dupes(first_name, certification_9)
View(dat)

b <- clean_new$hire_date
print(b)

filter_one<- clean_new %>% filter(!grepl('/', hire_date))
View(filter_one)
filter_two <- clean_new %>% filter(grepl('/', hire_date))
View(filter_two)

# f1_date <- c()
# for (i in filter_one$hire_date){
#   clean_date <- excel_numeric_to_date(as.numeric(i))
#   print(clean_date)
#   f1_date <- c(f1_date, clean_date)
# }
# print(f1_date)


#day 10  work




num_date <- as.numeric(filter_one$hire_date)
clean_date <- excel_numeric_to_date(num_date)
clean_date


clean_one <- filter_one %>% mutate(hire_date= clean_date)
View(clean_one)

new_dt <- mdy(filter_two$hire_date)
clean_two <- filter_two %>% mutate(hire_date = new_dt)
View(clean_two)

new_dd <- rbind(clean_one, clean_two)
View(new_dd)

for (i in colnames(new_dd)){
  k <- sum(is.na(new_dd[i]))
  p <- paste(i, "=>", k, sep = " ")
  print(p)
}
print(table(new_dd$subject))
print(table(new_dd$certification_9))
print(table(new_dd$certification_10))

new_dd$subject[is.na(new_dd$subject)]<- "English"
new_dd$certification_9[is.na(new_dd$certification_9)]<- "PENDING"
new_dd$certification_10[is.na(new_dd$certification_10)]<- "Theater"

View(new_dd)

print(unique(new_dd$subject))
new_dd$subject[new_dd$subject == "#REF!"] <- "English"
View(new_dd)

colnames(new_dd)
filter_percent <- new_dd%>% filter(!grepl('%', percent_allocated))
filter_percent2 <- new_dd%>% filter(grepl('%', percent_allocated))
View(filter_percent)
View(filter_percent2)

new_col <- C()
for (t in filter_percent)
