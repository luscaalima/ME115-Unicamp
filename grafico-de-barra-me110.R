library(ggplot2)
# Crie um data frame de exemplo

dados <- data.frame(
  cores = c("verde", "vermelho", "amarelo","marrom","laranja","azul"),
  quantidade = c(20,10,8,6,1,1),
  cores_barras <- c("green","red","yellow","brown","orange","blue")
)
dados$cores <- factor(dados$cores, levels = dados$cores[order(dados$quantidade, decreasing = TRUE)])

# Crie o gráfico de barras com cores personalizadas
grafico <- ggplot(dados, aes(x = cores, y = quantidade, fill = cores)) +
  geom_bar(stat = "identity") +
  labs(x = "Cores", y = "Frequência") +
  ggtitle("Frequência Observada dos M&Ms")+ geom_text(aes(label = quantidade), vjust = -0.5) 

print(grafico)
#cores_barras <- c("amarelo" = "yellow", "azul" = "blue", "laranja" = "orange", "marrom" = "brown","verde" = "green","vermelho" = "red")
grafico_com_cores <- grafico + scale_fill_manual(values = dados$cores_barras)

print(grafico_com_cores)

# Remova a legenda
grafico_barras <- grafico_com_cores + theme(legend.position = "none")+ theme(axis.text.y = element_text(color = "black", face = "bold"))
#grafico_barras <-grafico_com_cores + theme(axis.text.y = element_text(color = "black", face = "bold"))

# Exiba o gráfico
print(grafico_barras)
