# dplyr Exercises
# https://seandavi.github.io/ITR/dplyr_intro_msleep.html

dat <- read.csv('msleep_ggplot2.csv')

# dplyr Exercises #1
class(dat)



View(dat)
head(dat) 
# dplyr Exercises #2
# Now use the filter() function to select only the primates.
primates_sel = filter(dat, order=="Primates") %>% print

nrow_primates_sel = filter(dat, order=="Primates") %>% nrow




# dplyr Exercises #3
# What is the class of the object you obtain after subsetting the table to only include primates?
class(primates_sel)
  
  


# dplyr Exercises #4
# "Agora use a função select() para extrair o sleep total para os primatas. Qual é a classe deste objeto? Dica: use %>% para conectar os resultados da função filter() para select()."
head(primates_sel)

sleep_primates <- filter(dat, order == "Primates") %>%
  select(sleep_total)
# sleep_total é nome da coluna no data.frame

# qual a classe
class(sleep_primates)



# dplyr Exercises #5
# "Agora queremos calcular a quantidade média de sono para primatas (a média dos números calculados acima). Um desafio é que a função mean() requer um vetor, então, se simplesmente aplicarmos ela ao output acima, temos um erro. Olhe o arquivo de ajuda para unlist() e use-o para calcular a média desejada."
# converter para vetor com unlist()
media_sono <- mean(unlist(sleep_primates))
class(media_sono) # class do tipo: numeric 


# dplyr Exercises #6
# "Para o último exercício, poderíamos também usar a função summarize() do dplyr. Não introduzimos esta função, mas você pode ler o arquivo de ajuda e repetir o exercício 5, desta vez usando apenas filter() e summarize() para obter a resposta."

# Método com summarize()
resultado <- filter(dat, order == "Primates") %>%
  summarize(media_sono = mean(sleep_total))

# Visualizar o resultado
print(resultado)
class(resultado)
View(resultado) # summarize retorna uma class do tipo: data.frame

# O valor da média calculado por summarize() será exatamente o mesmo do método anterior (com unlist()), mas a função retorna um data.frame em vez de um vetor numérico.
# Dica: Use summarize() quando quiser manter os resultados em formato tabular para relatórios ou análises posteriores! 📊→📈


