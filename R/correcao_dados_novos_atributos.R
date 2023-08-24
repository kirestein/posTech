# exite uma inconsistência nos dados, pois existe uma categoria 1.9 e uma nota de apps 19, vamos tratar esses valores
library(dplyr)
library(ggplot2)
# primeiro ponto é criar um novo registro
dados_2 <- dados %>% filter(Category != "1.9")

# vamos fazer uma nova verifcação dos valores de rating

min(dados_2$Rating)
max(dados_2$Rating)
# min e max retornam valores NaN, estão primeiramente vamos verificar quantos valores estão com NaN

dados_2 %>% filter(is.na(Rating)) %>% count() # aqui temos a quantidade de elementos que estão como NaN na coluna Rating

summary(dados_2$Rating) # a função summary traz para nós os valores de máximo e mínimo da coluna desejada, 1º quartie, Mediana, Média, 3º quartie, e a quantidade de NA's

# neste caso vamos utilizar a média para corrigir os valores que estão como NaN
# para usar essas técnicas: O campo deve ser numérico, não é um valor preciso, este método funciona melhor com valores lineares


dados_2 %>% filter(is.na(Rating)) %>% group_by(Category) %>% count()

mean.Category <- dados_2 %>% 
  filter(!is.na(Rating)) %>% 
  group_by(Category) %>% 
  summarise(media = mean(Rating))

mean.Category

# para cada categoria onde o rating for NaN, o valor será substituído pela média

for(i in 1:nrow(dados_2)){
  if(is.na(dados_2[i, "Rating"])){
    dados_2[i, "newRating"] <- mean.Category[mean.Category$Category == dados_2[i, "Category"], "media"] # não é aconselhavél eliminar o conjunto de dados originais, o indicado é criar uma nova coluna
  }else{
    dados_2[i, "newRating"] <- dados_2[i, "Rating"]
  }
}

summary(dados_2$newRating)
min(dados_2$newRating)
max(dados_2$newRating)

#newRating <= 2 = "ruim"
#newRain >= 4 = "bom"
#newRating > 2 e < 4 = "Regular"

dados_2 <- dados_2 %>%
  mutate(rating_class = if_else(newRating <= 2, "ruim",
                                if_else(newRating >= 4, "bom", "regular")))


ggplot(dados_2) +
  geom_bar(aes(rating_class), stat = "count")