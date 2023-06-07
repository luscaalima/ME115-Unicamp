data(iris)
print(iris)
class(iris$Species)
iris$Species[1:10]
table(iris$Species)

# Temos um vetor com valores 0 e 1 que representam respostas binárias como
#“Não” e “Sim”, respectivamente:
x <- c(1, 0, 1, 1, 0, 1, 0, 0, 0, 1)
factor(x)
resposta <- factor(x, labels = c("Não", "Sim"))
resposta



my.matrix <- matrix(data = c(6, 34, 923, 5, 0, 112:116, 5, 9, 34, 76, 2, 545:549),nrow = 5)
my.matrix
#OBTENDO A MÉDIA  DAS LINHAS 
apply(my.matrix, MARGIN = 1, FUN = mean)
#OBTENDO A MÉDIA  DAS COLUNAS 
apply(my.matrix, MARGIN = 2, FUN = mean)