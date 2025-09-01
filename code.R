install.packages('rafalib')
library(rafalib)

install.packages('swirl')
library(swirl)

# Exercício 02
vetorValores <- c(2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23)
media <- mean(vetorValores)

# Exercício 03
soma <- 0
for (i in 1:25) {
  soma <- soma + i^2
}
soma

# Formula
#sum((1:25)^2)
