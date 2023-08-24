install.packages("dplyr")
library(dplyr)
install.packages("ggplot2")
library(ggplot2)

type.Freq <- data.frame(table(dados_2$Type))

# Vamos elaborar um gráfico de pizza para comparar a quantidade de apps pagos e gratuítos na loja da google

# Uma tabela para gerar um gráfico de pizza deverá ter no máximo 5 linhas

type.Plot = ggplot(type.Freq) +
  geom_bar(aes(x = "", y = Freq, fill = Var1), stat = "identity", width = 1) +
  coord_polar(theta = "y", start = 0)

str(dados_2)

size.Freq <- data.frame(table(dados_2$Size))

teste <- dados_2$Size[1]

teste

# Verificar a ocorrência de K ou M nos registros

grepl(pattern = "M", x = teste, ignore.case = T)
grepl(pattern = "K", x = teste, ignore.case = T)

# Substituir o valor em Megas por valores em Kilo bites, eliminando assim as letras M e K
gsub(pattern = "M", replacement = "", x = teste)

## aplicar as duas abordagens acima, em uma única execução
sapply(X = dados_2$Size, FUN = function(x){ # sapply é uma função que faz a iteração em uma lista
  print(x)
})

# Converter Mb para Kb <- 1 * 1024

dados_2$kb <- sapply(X = dados_2$Size, FUN = function(y){
  if(grepl("M", y, ignore.case = T)){
    y <- as.numeric(gsub("M", replacement = "", x = y)) * 1024
  }else if(grepl("k|\\+", y, ignore.case = T)) {
    y <- as.numeric(gsub("K|\\+", replacement = "", x = y))
  }else{
    y <- "ND"
  }
})


hist(as.numeric(dados_2$kb))

options(scipen = 999)

size.app = dados_2 %>% filter(kb != "ND") %>%
  mutate(kb = as.numeric(kb))


size.App.Plot <- ggplot(size.app) +
  geom_histogram(aes(kb))

size.App.Plot
