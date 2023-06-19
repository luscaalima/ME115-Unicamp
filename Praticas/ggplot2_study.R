library(tidyverse)
data(cars)

# grafico de dispersão de forma nativa
plot(cars$speed,cars$dist)

cars %>% 
  ggplot(aes(x=cars$speed,y=cars$dist))+geom_point(color="red")+
  labs(title = "Dados de 1920", x = "Velocidade", y = "Distância")

graf.b <- cars %>%
  ggplot(aes(x = speed, y = dist, color = dist)) +
  geom_point() +
  labs(title = "Dados de 1920", x = "velocidade", y = "Distância",
       color = "Distância")



graf.c <- graf.b + scale_color_gradient(low = "blue", high = "red")


cars %>% 
ggplot(aes(x = speed, y = dist, color = dist)) +
  geom_point() +geom_smooth(method = "lm",se = FALSE, color = "black")+
  scale_color_gradient(low = "blue", high = "red")+
  labs(title = "Dados de 1920", x = "velocidade", y = "Distância",
       color = "Distância")




starwars %>% 
  ggplot(aes(x=gender,y=height))+geom_boxplot()

starwars %>% 
  ggplot(aes(x=gender,y=height))+geom_violin()


starwars %>% 
  ggplot(aes(x=gender,y=height))+geom_point()



starwars %>% 
  ggplot(aes(x=gender,y=height))+geom_jitter()


economics %>% 
    ggplot(aes(x=date,y=unemploy))+geom_line()+geom_smooth()





economics %>% 
  ggplot(aes(x=date,y=unemploy))+geom_line()+
  scale_x_date(limits=c(as.Date("1990-01-01"),as.Date("1999-12-31") ))



library(gapminder)


gapminder %>% 
  filter(country=="Brazil") %>% 
  ggplot(aes(x=year,y=pop))+geom_line()+geom_point()


gapminder %>% 
  filter(country %in% c("Brazil","Uruguay","Argentina")) %>% 
  ggplot(aes(x=year,y=pop,color=country))+geom_line()+geom_point()


  
#FREQUENCIA POR GENERO

genero = starwars %>% 
  group_by(gender) %>% 
  summarise(
    n=n()
  )

genero %>% 
  ggplot(aes(x=gender,y=n,,fill=gender))+geom_bar(stat="identity")+coord_flip()


genero %>% 
  ggplot(aes(x="",y=n,fill=gender,label=n))+geom_bar(stat="identity",width=0.3)+coord_polar(theta="y",start=0)+geom_label(position=position_stack(vjust=0.5))+theme_void()




mtcars %>% 
  ggplot(aes(y=mtcars$mpg,x=mtcars$wt))+geom_point()

cor(mtcars$mpg,x=mtcars$wt)





























