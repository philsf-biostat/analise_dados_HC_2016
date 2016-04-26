# Dados ####
dados_num <- read.table("dataset/dadosnum.dat")
ptn <- dados_num$Albumina + dados_num$Globulina
dados_fat <- read.table("dataset/dadosfat.dat")
attach(dados_num)
attach(dados_fat)

# Tabelas de contingencia ####

## Desfecho por sexo
sexo_desfecho <- table(Desfecho, Sexo)
t(sexo_desfecho)
t(round(prop.table(sexo_desfecho)*100, digits = 1))

## Desfecho por ASA
asa_desfecho <- table(Desfecho, ASA)
t(asa_desfecho)
t(round(prop.table(asa_desfecho)*100, digits = 1))

## Desfecho por diabete
dm_desfecho <- table(Desfecho, DM)
t(dm_desfecho)
t(round(prop.table(dm_desfecho)*100, digits = 1))

## Desfecho por diagnostico
diag_desfecho <- table(Desfecho, Diagnóstico)
t(diag_desfecho)
t(round(prop.table(diag_desfecho)*100, digits = 1))

## Desfecho por tratamento
atb_desfecho <- table(Desfecho, ATB)
t(atb_desfecho)
t(round(prop.table(atb_desfecho)*100, digits = 1))

## ASA por tratamento
asa_atb <- table(ATB, ASA)
t(asa_atb)
t(round(prop.table(asa_atb)*100, digits = 1))

## limpar dados ####
detach(dados_num)
detach(dados_fat)
rm(dados_num, dados_fat, ptn)
rm(asa_atb, asa_desfecho, atb_desfecho, diag_desfecho, dm_desfecho, sexo_desfecho)