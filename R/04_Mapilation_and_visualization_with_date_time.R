install.packages("dplyr")
install.packages("ggplot2")
library(dplyr)
library(ggplot2)

# vamos trabalhar com o lubridate para trabalhar com datas
install.packages("lubridate")
library(lubridate)

# lubridate:: utiliza-se esta sintaxe para se ter acesso a todos os métodos de uma determinada biblioteca

dmy(14032023) # dmy é um método que recebe valores na ordem de day-month-year
mdy(08142023) # mdy é um método que recebe valores na ordem de month-day-year

mdy_hms(08142023180100)

hms("17:41:00")
hms(... = "18:02:00")

hours(18)

data_hora <- 20230815000300
data_hora <- ymd_hms(data_hora)
data_hora


# Extrair apenas o mês da variável
month(data_hora)

# Extrair apenas o dia
mday(data_hora)

# Extrair apenas a hora
hour(data_hora)

# dia da semana
wday(data_hora, label = T)

# nome do mês
month(data_hora, label = T)


# GRÁFICO DE LINHA

notas <- read.csv("/home/erik_proenca/Documentos/posTech/R/dados/user_reviews.csv")
str(notas)

notas$data_2 <- ymd_hms(notas$data)
str(notas)

ggplot(notas) +
  geom_line(aes(x = data_2, y = Sentiment_Polarity))

# vamos tratar os dados para melhorar a visualização
notas$data_2 <- parse_date_time(format(notas$data_2, "%Y-%m"), "ym")
notas$data_2[1]

ggplot(notas) +
  geom_line(aes(x = data_2, y = Sentiment_Polarity))

# vamos tirar a média das notas por dia, para ficar apenas com um registro

media_nota <- notas %>% group_by(data_2) %>%
  summarise(media = mean(Sentiment_Polarity))


ggplot(media_nota) +
  geom_line(aes(x = data_2, y = media))
