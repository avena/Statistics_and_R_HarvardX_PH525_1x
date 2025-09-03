# Brief Introduction to dplyr
# The learning curve for R syntax is slow. One of the more difficult aspects that requires some getting used to is subsetting data tables. The dplyr packages brings these tasks closer to English and we are therefore going to introduce two simple functions: one is used to subset and the other to select columns.
# A curva de aprendizado para a sintaxe do R é lenta. Um dos aspectos mais difíceis, que requer algum tempo para se acostumar, é o subconjunto de tabelas de dados. O pacote dplyr aproxima essas tarefas do inglês e, portanto, vamos introduzir duas funções simples: uma é usada para criar subconjuntos e a outra para selecionar colunas.

# dplyr torna o código mais legível e intuitivo
# Reduz erros com sintaxe complexa
# Facilita a aprendizagem para iniciantes
# É parte do tidyverse (conjunto de pacotes modernos do R)

# Duas funções simples":
# filter() → para filtrar linhas (criar subconjuntos)
# select() → para selecion

install.packages('dplyr')
library(dplyr)

dat <- read.csv('femaleMiceWeights.csv')

# ver table
View(dat)

# usando filter do dplyr - vai criar um data.frame chow somente com valor chow
chow <- filter(dat, Diet=="chow")

View(chow)
head(chow)

# somente obter os valores de peso Bodyweight
chowVals = select(chow, Bodyweight)

unlist(chowVals)


# somente uma linha
# pipe - %>%
controls <- filter(dat, Diet=="chow") %>% select(Bodyweight) %>% unlist  %>% print

# media
mean(controls)
