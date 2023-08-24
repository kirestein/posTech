category.Freq = data.frame(table(dados$Category))

ggplot(data = category.Freq) +
  geom_bar(mapping = aes(x = reorder(Var1, Freq), y = Freq), stat = "identity") + # A função reorder organiza em ordem crescente
  coord_flip()

ggplot(data = category.Freq) +
  geom_bar(mapping = aes(x = reorder(Var1, -Freq), y = Freq), stat = "identity") + # Para reorganizar em ordem decrescente é só usar o -Freq
  coord_flip()

category.Top10 <- category.Freq[(order(-category.Freq$Freq)), ]

category.Top10 <- category.Top10[1:10,]


ggplot(data = category.Top10) +
  geom_bar(mapping = aes(x = reorder(Var1, Freq), y = Freq), stat = "identity") + # A função reorder organiza em ordem crescente
  coord_flip()