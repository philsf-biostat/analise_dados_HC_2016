# Dados ####
dados_num <- read.table("dataset/dadosnum.dat")
ptn <- dados_num$Albumina + dados_num$Globulina
dados_fat <- read.table("dataset/dadosfat.dat")
attach(dados_num)
attach(dados_fat)

par(mfrow = c(2,2))
title("Variáveis numéricas")
boxplot(dados_num$Idade, main = "Idade", ylab = "Anos")
boxplot(dados_num$Tempo, main = "Tempo de garrote", ylab = "minutos")
boxplot(dados_num$Albumina, main = "Albumina", ylab = "unidade")
boxplot(dados_num$Globulina, main = "Globulina", ylab = "unidade")
#rm(dados_num, ptn)
par(mfrow = c(1,1))
boxplot(ptn, main = "Proteína total", ylab = "unidade")

## histogramas 
hist(dados_num$Idade, main = "Idade", ylab = "Frequencia", xlab = "Idade (anos)")
hist(dados_num$Tempo, main = "Tempo de garrote", ylab = "Frequencia", xlab = "Minutos")
hist(ptn, main = "Proteína total", ylab = "Frequencia", xlab = "Albumina + Globulina (unidade)")

## Gráficos por desfecho ####
boxplot(dados_num$Idade ~ dados_fat$Desfecho, main = "Idade", ylab = "Anos", xlab = "Desfecho")
boxplot(dados_num$Tempo ~ dados_fat$Desfecho, main = "Tempo de garrote", ylab = "minutos", xlab = "Desfecho")
# boxplot(dados_num$Albumina ~ dados_fat$Desfecho, main = "Albumina", ylab = "unidade", xlab = "Desfecho")
# boxplot(dados_num$Globulina ~ dados_fat$Desfecho, main = "Globulina", ylab = "unidade", xlab = "Desfecho")
boxplot(ptn ~ dados_fat$Desfecho, main = "Proteína total", ylab = "unidade", xlab = "Desfecho")

# 
# dotchart(dados_num$Idade, main = "Idade", ylab = "Anos")
# dotchart(dados_num$Tempo, main = "Tempo de garrote", ylab = "minutos")
# dotchart(ptn, main = "Proteína total", ylab = "unidade")


## Variáveis categóricas ####
## carregar antes as tabelas no script tc.R
# barplot(atb_desfecho, beside = T, legend.text = rownames(atb_desfecho), main = "Desfecho por tratamento")
par(mfrow = c(1,1))
# barplot(atb_desfecho, beside = T, legend.text = rownames(atb_desfecho), xlab = "Tratamento com ATB", main = "Desfecho por tratamento")
barplot(atb_desfecho, beside = T, legend.text = c("Sem infecção", "Com infecção"), xlab = "Tratamento com ATB", main = "Desfecho por tratamento")

par(mfrow = c(1,1))
barplot(asa_atb, beside = T, legend.text = c("Sem ATB", "Com ATB"), main = "ASA por tratamento")

# par(mfrow = c(2,2))
# barplot(diag_desfecho, beside = T, legend.text = rownames(diag_desfecho), main = "Desfecho por Diagnóstico")
# barplot(dm_desfecho, beside = T, legend.text = rownames(dm_desfecho), main = "Desfecho por Diabete")
# barplot(sexo_desfecho, beside = T, legend.text = rownames(sexo_desfecho))
# barplot(asa_desfecho, beside = T, legend.text = rownames(asa_desfecho))

par(mfrow = c(2,2))
barplot(diag_desfecho, beside = T, legend.text = c("Sem infecção", "Com infecção"), main = "Desfecho por Diagnóstico")
barplot(dm_desfecho, beside = T, legend.text = c("Sem infecção", "Com infecção"), main = "Desfecho por Diabete")
barplot(sexo_desfecho, beside = T, legend.text = c("Sem infecção", "Com infecção"), main = "Desfecho por Sexo")
barplot(asa_desfecho, beside = T, legend.text = c("Sem infecção", "Com infecção"), main = "Desfecho por ASA")

## limpar dados ####
dev.off()
detach(dados_num)
detach(dados_fat)
rm(dados_num, dados_fat, ptn)
