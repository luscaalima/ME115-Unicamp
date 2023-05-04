# 1 - Qual é a soma dos 100 primeiros números inteiros positivos? Como você faria isso no R?
s <- 1:100
print(s)
sum(s)

# 2. Agora faça a mesma coisa para calcular a soma dos números inteiros de 1 a 1000.
print(sum(1:1000))

# 3. Observe o resultado ao digitar o seguinte código em R:
n <- 1000
x <- seq(1, n)
sum(x)
# Com base no resultado, o que você acha que as funções seq e sum fazem?
# seq() : A função seq gera uma sequência do valor do argumento (from) até o valor do argumento (to), com salto (passo)
#  entre valores consecutivos de acordo com o argumento by.

# Criando uma sequência de 1 até 10 de 2 em 2 
example <- seq(1,10,2)
print(example)


# 4. Use a função c() para criar um vetor com as médias das temperaturas máximas em janeiro nas cidades:
# Beijing, Lagos, Paris, Rio de Janeiro, San Juan e Toronto, que são, respectivamente, 35, 88, 42, 84, 81,
# and 30 graus Fahrenheit. Chame este objeto de temp.

temp <- c(35, 88, 42, 84, 81,30)
print(temp)

# 5. Crie um vetor com os nomes das cidades e chame esse objeto de city.

city <-  c("Beijing","Lagos","Paris","Rio de Janeiro","San Juan","Toronto")

# 6. Use a função names() e os objetos definidos nos itens anteriores para associar às temperaturas os nomes
# das cidades correspondentes.
names(temp) <- city
print(temp)

# 7. Considerando o vetor temp que você criou:
# a) Use os operadores [ e : para acessar as temperaturas das três primeiras cidades listadas.
print(temp[1:3])
# b) Use o operador [ operator para acessar as temperaturas de Paris e San Juan.
print(temp[c("Paris","San Juan")])

# 8. Use o operador : para criar a sequência de números: 12, 13, 14, . . . , 73.
seq <-12:73
print(seq)

# 9. Crie um vetor contendo todos os números ímpares positivos e menores do que 100.
impares <- seq(1,100,2)
print(impares)

# 10. Crie um vetor de números que inicia em 6, não ultrapassa 55 e aumenta em incrementos de 4/7:
# 6, 6 + 4/7, 6 + 8/7, etc. Quantos elementos estão neste vetor? Dica: estude a função seq() e seus
# argumentos.
vetor <- seq(6,55,(4/7))
print(vetor)
# Quantos elementos estão neste vetor?
length(vetor)

# 11. Qual é a classe dos seguintes objetos: a <- seq(1, 10, 0.5) e b <- seq(1, 10)?
a <- seq(1, 10, 0.5)
b <- seq(1, 10)
class(a)
class(b)

# 12. Defina o seguinte vetor: x <- c("1", "3", "5") e force que ele contenha números inteiros.
x <- c("1", "3", "5")
class(x)
x <-as.integer(x)
class(x)

# 13 -  Crie a seguinte matriz 4x5

coluna1 <- 1:4
coluna2 <- 5:8
coluna3 <- 9:12
coluna4 <- 101:104
coluna5 <-105:108
m2 <- cbind(coluna1,coluna2,coluna3,coluna4,coluna5)
print(m2)

# 14. Considerando a matriz que você criou no Exercício 13:
# a) Use os operadores [ e : para acessar os elementos a21, a22, a23.
print(m2[2,1:3])
# b) Acesse os elementos da terceira coluna.
print(m2[,3])
# c) Acesse os elementos da quarta linha.
print(m2[4,])
# d) Altere o valor a11 por 20.
m2[1,1] <- 20 
print(m2)

# 15. Você pode criar um conjunto de dados usando a função data.frame. Exemplo:
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro","San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)
print(city_temps)
# Use o código acima para criar o conjunto de dados, mas adicione uma variável que indique a temperatura
# em Celsius.
city_temps$tempC <- 5*(city_temps$temp - 32)/9
head(city_temps)