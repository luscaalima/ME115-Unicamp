#criando uma matriz com a partir de uma sequência de 10 a 18 preenchendo
#entradas pelas colunas
z <- matrix(data=seq(10, 18), nrow=3, ncol=3,byrow = F)
print(z)

#criando uma matriz com a partir de uma sequência de 1 a 9 preenchendo
#entradas pelas linhas
x <- matrix(data=seq(1, 9), nrow=3, ncol=3,byrow = T)
print(x)

# acessando posições da matriz 
X[1, 2] # retorna o elemento da linha 1 e coluna 2
X[2, 1] # retorno o elemento da linha 2 e coluna 1
X[1,] # retorna os elementos da linha toda
X[,1]
X[, 1:2] # retorna colunas 1 e 2
X[c(1,3), ] # retorna linhas 1 e 3
diag(X) # retorna os elementos da diagonal principal da matrix

#Considere a matrix X. Indexando elemento a elemento, calcule:
#(a) a soma dos elementos da linha 2.
sum(x[2,])
#(b) a soma dos elementos da coluna 3.
sum(x[,3])
#(c) a soma dos elementos da diagonal de X.
sum(diag(x))

#Crie a matrix Y de tamanho 10 × 10 que contenha os valores de 1 a 100, dispostos por linha. Imprima
#na tela os seguintes elementos:
y <- matrix(data=seq(1, 100), nrow=10, ncol=10,byrow = T)
print(y)
pares <- seq(2,10,2)
print(pares)
#(a) Elementos das colunas pares de Y .
print(y[,pares])
#(b) Elementos das linhas pares de Y .
print(y[pares,])
#(c) Elementos das linhas e colunas pares de Y .
print(y[pares,pares])


#  O objeto data.frame pode ser pensado como uma matriz. Neste caso, sua indexação pode ser feita
#através do indexador [,]. Execute o código abaixo para carregar o data frame murders do pacote
#dslabs.
library(dslabs)
data(murders)
print(murders)
# (a) O que representa o comando murders[1, 1]?
#Representa a primeira linha e primeira coluna do data frame, que é o estado Alabama.
print(murders[1,1])
#(b) O que representa o comando murders[1, ]?
print(murders[1,])
#Seleciona a primeira linha do data frame, que representa os dados do Alabama.
#(c) O que representa o comando murders[, 1]?
print(murders[,1])
#Seleciona a primeira coluna do data frame, que representa os estados.
#(d) O que representa o comando murders[1:2, ]?
print(murders[1:2,])
#Seleciona a primeira  e a segunda linha do data frame, que representa os dados do Alabama e do Alaska  
#(e) O que representa o comando murders[, 3:4]?
print(murders[,3:4])
#Representa as colunas 3 e 4 do data frame e todas as linhas.
