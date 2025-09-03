install.packages('rafalib')
library(rafalib)

install.packages('swirl')
library(swirl)


version()
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


# Exercício 04
cars
class(cars)
# Tipo de objeto é data.frame

# Exercício 05
# quantas linhas vai ter
# 1. nrow() - Número de linhas (mais direto)
# 2. dim() - Dimensões (linhas e colunas)
# 3. length() - Número de elementos (útil para vetores)
nrow(cars)
dim(cars)


# Exercício 06
# Ver todos os nomes das colunas primeiro
names(cars)

#ou
colnames(cars)

# a segunda coluna se chama speed



# Exercício 07
# media da distancia, distancia é coluna 3 (2)
mean(cars[,2])

#ou pelo nome
mean(cars$dist)



# Exercício 07
# O which() em R retorna os índices (número das linhas) que satisfazem uma condição lógica.
# distancia de 85 esta em que linha
which(cars$dist == 85)


# Ver a linha inteira:
cars[which(cars$dist == 85), ]



#Getting Started Exercises #1
getwd()  # pega o diretorio de trabalho working directory

# ler arquivo
dat <- read.csv('femaleMiceWeights.csv')

head(dat)       # Mostra as primeiras linhas
names(dat)      # Mostra todos os nomes das colunas
str(dat)        # Mostra a estrutura com tipos de dados

# What is the entry in the 12th row and second column? EX: 2
# 12 linha e na segunda coluna
# Funcionam como coordenadas: [linha, coluna]
resultado <- dat[12, 2]
resultado

print(dat[12,2])

#EX 3
# Passo 1: Extrair a coluna de pesos como vetor
coluna_pesos <- dat$Bodyweight  # Substitua "weight" pelo nome real da coluna

# Passo 2: Acessar o 11º elemento do vetor
peso_mouse_11 <- coluna_pesos[11]

# Mostrar o resultado
print(peso_mouse_11)


#4
print(length(dat)) # não funciona em data.frame, somente em coluna/vetor
print(length(dat$Bodyweight))


# 5 
# "Para criar um vetor com os números de 3 a 7, podemos usar seq(3,7) ou, por serem consecutivos, 3:7. Visualize os dados e determine quais linhas estão associadas à dieta 'high fat' ou 'hf'. Em seguida, use a função mean() para calcular o peso médio desses camundongos."
View(dat) # abre toda a tabela

# vai pegar as linhas que tem na Diet hf marcado
linhas_hf <- which(dat$Diet == "hf")

# sabendo as linhas pegamos o peso somente dos hf, das linha hf
pesos_hf <- dat$Bodyweight[linhas_hf]

# fazemos a media dos pesos e guardamos em media_peso
media_peso <- mean(pesos_hf)
print(media_peso)
print(paste("Peso medio da dieta high fat:", round(media_peso, 2)))



# 6
# "Uma das funções que usaremos frequentemente é sample(). Leia o arquivo de ajuda da função sample() usando ?sample. Agora pegue uma amostra aleatória de tamanho 1 dos números 13 a 24 e informe o peso do camundongo representado por essa linha. Certifique-se de digitar set.seed(1) para garantir que todos obtenham a mesma resposta."

# Passo 1: Garantir o mesmo resultado para todos
set.seed(1)  # "Semente" para o sorteio ser sempre o mesmo

# Passo 2: Sortear uma linha entre 13 e 24
linha_sorteada <- sample(13:24, size = 1)

# Passo 3: Encontrar o peso dessa linha
peso_sorteado <- dat$Bodyweight[linha_sorteada]

# Mostrar os resultados
print(paste("Linha sorteada:", linha_sorteada))
print(paste("Peso do camundongo:", peso_sorteado))
