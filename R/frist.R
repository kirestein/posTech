path <- "/home/erik_proenca/Documentos/posTech/R/dados/googleplaystore.csv"

dados <- read.csv(file = path)

View(dados)

# Podemos utilizar o head ou o tails para enxergar os primeiros ou últimos 4 dados

str(dados) # Que tipo de valores as colunas estão armazenando (quantitativos => num || qualitativos => char)

