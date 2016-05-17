# Dados ####
dados_num <- read.table("dataset/dadosnum.dat")
ptn <- dados_num$Albumina + dados_num$Globulina
dados_fat <- read.table("dataset/dadosfat.dat")
attach(dados_num)
attach(dados_fat)

# Tabelas de contingencia ####

## Sexo por tratamento
sexo_atb <- table(ATB, Sexo)
t(sexo_atb)
t(round(prop.table(sexo_atb)*100, digits = 1))

## ASA por tratamento
asa_atb <- table(ATB, ASA)
t(asa_atb)
t(round(prop.table(asa_atb)*100, digits = 1))

## Diabete por tratamento
dm_atb <- table(ATB, DM)
t(dm_atb)
t(round(prop.table(dm_atb)*100, digits = 1))

## Diagnostico por tratamento
diag_atb <- table(ATB, Diagnóstico)
t(diag_atb)
t(round(prop.table(diag_atb)*100, digits = 1))

## Desfecho por tratamento
atb_desfecho <- table(Desfecho, ATB)
t(atb_desfecho)
t(round(prop.table(atb_desfecho)*100, digits = 1))

## limpar dados ####
detach(dados_num)
detach(dados_fat)
rm(dados_num, dados_fat, ptn)
rm(asa_atb, atb_atb, diag_atb, dm_atb, sexo_atb)
