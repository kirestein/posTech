path <- "/home/erik_proenca/Documentos/posTech/R/dados/googleplaystore.csv"

dados <- read.csv(file = path)

install.packages("dplyr")
library(dplyr)

install.packages("ggplot2") # Package to view the graphics
library(ggplot2)


hist(dados$Rating) # Cria um histograma

table(dados$Rating)

hist(dados$Rating, xlim = range(1,5))

# utilizando o ggplot para visualizar um gráfico. Utilizamos o "+" para concatenar duas funções
rating.histogram <- ggplot(data = dados) + geom_histogram(mapping = aes(x = Rating), na.rm = TRUE, breaks = seq(1,5)) + xlim(c(1,5))

# seq(1,5) cria uma sequência de 1 à 5, Podemos definir valores de início e final para nossa sequência

rating.histogram
