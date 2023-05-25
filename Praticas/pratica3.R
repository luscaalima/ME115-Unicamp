library(dslabs)
data(murders)
nome_novo <- ifelse(nchar(murders$state) > 8, murders$abb, murders$state)
head(cbind(murders[, 1:2], nchar = nchar(murders$state), nome_novo), 10)

soma_n <- function(n){
  count = 0 
  sequencia <-seq(1:n)
  for(i in sequencia){
    count = count+i
  }
  print(count)
}

soma_n(5000)
sum(1:5000)

calcule_sn <- function(n){
  count = 0 
  sequencia <-seq(1:n)
  for(i in sequencia){
    count = count+(i*i)
  }
  return(count)
}
calcule_sn(10)

s_n <- vector("numeric", 25)

count = 1
for(i in s_n){
  s_n[count] <- calcule_sn(count)
  count<- count+1
}
print(s_n)


dados_rolando <- function(n){
return (sum(sample(1:6, size=n, replace=TRUE)))
}


stats <- function(vetor){
  count = 0
  total = 0
  for(i in vetor){
    total = i + total
    count = 1 + count
  }
  media <- total/count
  return(media)
}

stats(c(1:10))
