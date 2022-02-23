library(tidyverse)

df <- read.csv("/Data_by_year.csv", encoding="UTF-8")
view(df)

df %>%
  ggplot(., aes(Year, pctHispanic)) + 
  geom_point() + 
  geom_smooth(method=lm)