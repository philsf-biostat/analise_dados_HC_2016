## Dados numéricos ####
dados_num <- read.table("dataset/dadosnum.dat")
ptn <- dados_num$Albumina + dados_num$Globulina

par(mfrow = c(2,2))
title("Variáveis numéricas")
boxplot(dados_num$Idade, main = "Idade", ylab = "Anos")
boxplot(dados_num$Tempo, main = "Tempo de garrote", ylab = "minutos")
boxplot(dados_num$Albumina, main = "Albumina", ylab = "unidade")
boxplot(dados_num$Globulina, main = "Globulina", ylab = "unidade")
rm(dados_num, ptn)
par(mfrow = c(1,1))
boxplot(ptn, main = "Proteína total", ylab = "unidade")

## histogramas 
hist(dados_num$Idade, main = "Idade", ylab = "Anos")
hist(dados_num$Tempo, main = "Tempo de garrote", ylab = "minutos")
hist(ptn, main = "Proteína total", ylab = "unidade")

## Gráficos por desfecho ####
dados_fat <- read.table("dataset/dadosfat.dat")
boxplot(dados_num$Idade ~ dados_fat$Desfecho, main = "Idade", ylab = "Anos", xlab = "Desfecho")
boxplot(dados_num$Tempo ~ dados_fat$Desfecho, main = "Tempo de garrote", ylab = "minutos", xlab = "Desfecho")
boxplot(dados_num$Albumina ~ dados_fat$Desfecho, main = "Albumina", ylab = "unidade", xlab = "Desfecho")
boxplot(dados_num$Globulina ~ dados_fat$Desfecho, main = "Globulina", ylab = "unidade", xlab = "Desfecho")
boxplot(ptn ~ dados_fat$Desfecho, main = "Proteína total", ylab = "unidade", xlab = "Desfecho")

# 
# dotchart(dados_num$Idade, main = "Idade", ylab = "Anos")
# dotchart(dados_num$Tempo, main = "Tempo de garrote", ylab = "minutos")
# dotchart(ptn, main = "Proteína total", ylab = "unidade")
