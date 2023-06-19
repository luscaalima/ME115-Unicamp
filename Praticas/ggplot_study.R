library(tidyverse)
library(ggplot2)
data(starwars)

#ESPECIFICANDO O EIXO X

starwars %>%
  ggplot(aes(x=height))

#ESPECIFICANDO O EIXO X E Y
starwars %>%
  ggplot(aes(x=height,y=mass))


#CONSTRUINDO HISTOGRAMA
starwars %>%
  ggplot(aes(x=height))+geom_histogram()


#CONSTRUINDO UM GRÁFICO DE DENSIDADE 
starwars %>%
  ggplot(aes(x=height))+geom_density()



#CONSTRUINDO UM GRÁFICO DE DENSIDADE MULTIPLOS NIVEIS
starwars %>%
  ggplot(aes(x=height,color = sex))+geom_density()+
  labs(
    title = "DISTRIBUIÇÃO DE ALTURA POR SEXO",
    subtitle = "CONJUNTO DE DADOS STARWARS",
    x="Altura",
    y="Densidade",
    caption="Nota de rodapé"
    )




#grafico de dispersão

starwars %>%
  ggplot(aes(x=height,y=mass))+geom_point()

# removendo outliers e montando gráfico
starwars %>% 
  filter(mass < 1000) %>% 
  ggplot(aes(x=height,y=mass))+geom_point()


# linha de tendencia
starwars %>% 
  filter(mass < 1000) %>% 
  ggplot(aes(x=height,y=mass))+geom_point()+geom_smooth(method = lm)


# linha de tendencia com polinomios 
starwars %>% 
  filter(mass < 1000) %>% 
  ggplot(aes(x=height,y=mass))+geom_point()+geom_smooth(method = loess)



starwars %>%
  filter(mass < 1000) %>% 
   ggplot(aes(x=height,y=mass,color=sex))+geom_point()




starwars %>%
  filter(mass < 1000) %>% 
  ggplot(aes(x=height,y=mass))+geom_point()+geom_hline(yintercept=80,color="red",linetype="longdash")+
  geom_vline(xintercept=125,color="blue",linetype="dotted")
  

starwars %>%
  group_by(eye_color) %>% 
  summarise(
    quantidade =n()
  ) %>% 
  ggplot(aes(x=eye_color,y=quantidade))+geom_bar(stat = "identity")+coord_flip()



#PERSONALIZANDO

starwars %>%
  group_by(eye_color) %>% 
  summarise(
    quantidade =n()
  ) %>% 
  ggplot(aes(x=eye_color,y=quantidade))+geom_bar(stat = "identity",fill="blue",color="red",alpha=0.3)+coord_flip()



starwars %>%
  group_by(eye_color) %>% 
  summarise(
    quantidade =n()
  ) %>% 
  ggplot(aes(x=eye_color,y=quantidade,label = quantidade ))+geom_bar(stat = "identity")+geom_label(size=3,alpha=0.5)+coord_flip()



starwars %>%
  group_by(eye_color,sex) %>% 
  summarise(
    quantidade =n()
  ) %>% 
  ggplot(aes(x=eye_color,y=quantidade,fill=sex))+geom_bar(stat="identity")+coord_flip()




starwars %>%
  filter(eye_color %in% c("brown","blue","black")) %>% 
  group_by(eye_color,sex) %>% 
  summarise(
    quantidade =n()
  ) %>% 
  ggplot(aes(x=eye_color,y=quantidade,fill=sex))+geom_bar(stat="identity",position="dodge")


medias = starwars %>% 
  filter(!is.na(height)) %>% 
  group_by(gender) %>% 
  summarise(
    media = mean(height),
    limite_superior = mean(height)+sd(height),
    limite_inferior = mean(height)-sd(height),
  )


medias %>% 
  ggplot(aes(x=gender,y=media))+
  geom_bar(stat="identity")+
  geom_errobar(aes(ymin=limite_inferior,ymax=limite_superior),width = 0.2)



