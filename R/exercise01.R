# Como vimos, ao gerar um histograma a quantidade de *bins* pode influenciar na elaboração do gráfico, podendo prejudicar o designer e dificultando a interpretação dele.
# Tendo uma base de dados chamada notas contendo as colunas: **cod_aluno, materia e nota_aluno**, e que essa base de dados já passou pelo processo de limpeza, ou seja, 
# dados inconsistentes já foram eliminados e as notas vão de 0 a 10. Elabore um histograma com 5 bins e outro histograma com 10 breaks de 0 a 10, utilizando o pacote ggplot2.

path = "/home/erik_proenca/Documentos/posTech/R/dados/database.csv"

dados_notas <- read.csv(path)
install.packages("dplyr")
library(dplyr)

install.packages("ggplot2")
library(ggplot2) 

# histogram with 5 bins
five.bins <- ggplot(data=dados_notas) + 
  geom_histogram(mapping = aes(x = nota_aluno), na.rm = TRUE) + 
  labs(title = "Histograma de notas - 5 bins", 
       x = "Nota", 
       y = "Frequência")

five.bins

ten.seq <- ggplot(data = dados_notas) + 
  geom_histogram(mapping = aes(x = nota_aluno), na.rm = TRUE, breaks = seq(0,10)) + 
  xlim(c(0,10))

ten.seq

