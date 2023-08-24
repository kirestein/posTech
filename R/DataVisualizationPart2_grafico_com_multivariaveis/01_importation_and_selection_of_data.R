getwd() # aqui consultamos o diretório onde estamos trabalhando
setwd("/home/erik_proenca/Documentos/posTech/R/DataVisualizationPart2_grafico_com_multivariaveis") # aqui setamos o diretório onde queremos trabalhar

install.packages("data.table")
install.packages("dplyr")
install.packages("ggplot2")
library(data.table)
library(dplyr)
library(ggplot2)

# -------------------------- CARREGANDO OS DADOS --------------------------
enem_2010 <- fread("dataviz_mult_var-dados/enem_2010.csv", encoding="UTF-8")
enem_2011 <- fread("dataviz_mult_var-dados/enem_2011.csv", encoding="UTF-8")
enem_2012 <- fread("dataviz_mult_var-dados/enem_2012.csv", encoding="UTF-8")
enem_2013 <- fread("dataviz_mult_var-dados/enem_2013.csv", encoding="UTF-8")
enem_2014 <- fread("dataviz_mult_var-dados/enem_2014.csv", encoding="UTF-8")
enem_2015 <- fread("dataviz_mult_var-dados/enem_2015.csv", encoding="UTF-8")
enem_2016 <- fread("dataviz_mult_var-dados/enem_2016.csv", encoding="UTF-8")
enem_2017 <- fread("dataviz_mult_var-dados/enem_2017.csv", encoding="UTF-8")
# -------------------------- CARREGANDO OS DADOS --------------------------
merge_enem <- rbind(enem_2010, enem_2011, enem_2012, enem_2013, enem_2014, enem_2015, enem_2016, enem_2017)  # deu um erro, pois nem todos tabelas possuem a mesma quantidade de colunas
# ---------------------------------------------------- ERRO ----------------------------------------------------
#Error in rbindlist(l, use.names, fill, idcol) : 
#  Item 2 has 27 columns, inconsistent with item 1 which has 23 columns. To fill missing columns use fill=TRUE.
# ---------------------------------------------------- ERRO ----------------------------------------------------
merge_enem <- rbind(enem_2010, enem_2011, enem_2012, enem_2013, enem_2014, enem_2015, enem_2016, enem_2017, fill = TRUE) # Utilizamos o fill = TRUE para que as colunas que não existem sejam preenchidas com NA

rm(enem_2010, enem_2011, enem_2012, enem_2013, enem_2014, enem_2015, enem_2016, enem_2017) # remove os elementos selecionados


# CRIAR UM VETOR COM O NOME DAS COLUNAS

c("NUMERO_INCRICAO", "ANO", "CO_MUNICIPIO_RESIDENCIA", "MUNICIPIO_RESIDENCIA", 
  "UF_RESIDENCIA", "UF_ESCOLA", "IDADE", "SEXO", "SITUACAO_CONCLUSAO", "BRAILLE", "MUNICIPIO_PROVA",
  "UF_PROVA", "PRESENCA_CIENCIAS_NATUREZA", "PRESENCA_CIENCIAS_HUMANO", "PRESENCA_LINGUAGENS_CODIGOS",
  "PRESENCA_MATEMATICA", "NOTA_CIENCIAS_NATUREZA", "NOTA_CIENCIAS_HUMANAS",
  "NOTA_LINGUAGEM_CODIGOS", "NOTA_MATEMATICA", "TIPO_LINGUA", "STATUS_REDACAO", "NOTA_REDACAO")