# Dados ####
dados_num <- read.table("dataset/dadosnum.dat")
ptn <- dados_num$Albumina + dados_num$Globulina
dados_fat <- read.table("dataset/dadosfat.dat")
attach(dados_num)
attach(dados_fat)

par(mfrow = c(2,2))
title("Variáveis numéricas")
boxplot(dados_num$Idade ~ ATB, main = "Idade", ylab = "Anos", xlab = "Tratamento")
boxplot(dados_num$Tempo ~ ATB, main = "Tempo de garrote", ylab = "minutos", xlab = "Tratamento")
boxplot(dados_num$Albumina ~ ATB, main = "Albumina", ylab = "unidade", xlab = "Tratamento")
boxplot(dados_num$Globulina ~ ATB, main = "Globulina", ylab = "unidade", xlab = "Tratamento")
#rm(dados_num, ptn)
par(mfrow = c(1,1))
boxplot(ptn ~ ATB, main = "Proteína total", ylab = "unidade", xlab = "Tratamento")

## histogramas 
hist(dados_num$Idade, main = "Idade", ylab = "Frequencia", xlab = "Idade (anos)")
hist(dados_num$Tempo, main = "Tempo de garrote", ylab = "Frequencia", xlab = "Minutos")
hist(ptn, main = "Proteína total", ylab = "Frequencia", xlab = "Albumina + Globulina (unidade)")

## Gráficos por Tratamento ####
boxplot(dados_num$Idade ~ dados_fat$ATB, main = "Idade", ylab = "Anos", xlab = "Tratamento")
boxplot(dados_num$Tempo ~ dados_fat$ATB, main = "Tempo de garrote", ylab = "minutos", xlab = "Tratamento")
# boxplot(dados_num$Albumina ~ dados_fat$Desfecho, main = "Albumina", ylab = "unidade", xlab = "Desfecho")
# boxplot(dados_num$Globulina ~ dados_fat$Desfecho, main = "Globulina", ylab = "unidade", xlab = "Desfecho")
boxplot(ptn ~ dados_fat$ATB, main = "Proteína total", ylab = "unidade", xlab = "Tratamento")

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
# barplot(diag_atb, beside = T, legend.text = rownames(diag_atb), main = "Diagnostico por tratamento")
# barplot(dm_atb, beside = T, legend.text = rownames(dm_atb), main = "Diabete por tratamento")
# barplot(sexo_atb, beside = T, legend.text = rownames(sexo_atb), main = "Sexo por tratamento")
# barplot(asa_atb, beside = T, legend.text = rownames(asa_atb), main = "ASA por tratamento")

png("figuras/bp-tratamento.png")
par(mfrow = c(2,2))
barplot(diag_atb, beside = T, legend.text = c("Sem ATB", "Com ATB"), main = "Diagnostico por tratamento")
barplot(dm_atb, beside = T, legend.text = c("Sem ATB", "Com ATB"), main = "Diabete por tratamento")
barplot(sexo_atb, beside = T, legend.text = c("Sem ATB", "Com ATB"), main = "Sexo por tratamento")
barplot(asa_atb, beside = T, legend.text = c("Sem ATB", "Com ATB"), main = "ASA por tratamento")
dev.off()

## limpar dados ####
dev.off()
detach(dados_num)
detach(dados_fat)
rm(dados_num, dados_fat, ptn)
