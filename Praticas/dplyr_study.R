library(tidyverse)

player <- c("James", "Durant", "Curry", "Harden", "Paul", "Wade")
team <- c("CLEOH", "GSWCA", "GSWCA", "HOUTX", "HOUTX", "CLEOH")
day1points <- c(25, 23, 30, 41, 26, 20)
day2points <- c(24, 25, 33, 45, 26, 23)

nba <- tibble(player, team, day1points, day2points)
head(nba)

nba_melt <- melt(nba, id.vars = -c(3,4), variable.name = "day", value.name = "points")
head(nba_melt)

nba %>%
  names()

library(nycflights13)
data("flights")
head(flights) 

origem_jfk <- flights %>%
  filter(origin =="JFK")


flights %>%
  filter(arr_delay > 0,origin =="JFK") %>%
  group_by(carrier) %>%
  summarise(delayed_flights = n())
glimpse(flights)


df_wide <- tibble(name = c("Wilbur", "Petunia", "Gregory"),
                  
                  a = c(67, 80, 64),
                  b = c(56, 90, 50))

df_wide
df_tidy <- pivot_longer(df_wide, cols = a:b, names_to = "drug", values_to = "heartrate") 
df_tidy
