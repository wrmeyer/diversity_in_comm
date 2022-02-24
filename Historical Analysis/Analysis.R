library(tidyverse)

df <- read.csv("/Data_by_year.csv", encoding="UTF-8")
view(df)

p1 <- df %>%
  ggplot(., aes(Year, pctHispanic)) + geom_point() + geom_smooth() +
  geom_point(data = df, aes(Year, pctWhite), color = "red") + geom_smooth(data = df, aes(Year, pctWhite), color = "red") +
  geom_point(data = df, aes(Year, pctBlack), color = "green") + geom_smooth(data = df, aes(Year, pctBlack), color = "green") +
  geom_point(data = df, aes(Year, pctNatAm), color = "orange") + geom_smooth(data = df, aes(Year, pctNatAm), color = "orange") +
  geom_point(data = df, aes(Year, pctBiracial), color = "pink") + geom_smooth(data = df, aes(Year, pctBiracial), color = "pink") +
  geom_point(data = df, aes(Year, pctAsian.PI), color = "black") + geom_smooth(data = df, aes(Year, pctAsian.PI), color = "black")
  
  p1