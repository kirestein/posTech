ggplot(data = dados) +
  geom_bar(mapping = aes(x = Category), stat = "count") # o gráfico está de difícil entendimento, pois as colunas muito próximas acaba dificultando as identificação das categorias

# Um estratégia para resolver é inverter os eixos x e y
# para isso adicionamos a função coord_flip()


ggplot(data = dados) +
  geom_bar(mapping = aes(x = Category), stat = "count") +
  coord_flip()