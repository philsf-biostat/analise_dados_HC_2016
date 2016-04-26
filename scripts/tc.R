# Dados ####
dados_num <- read.table("dataset/dadosnum.dat")
ptn <- dados_num$Albumina + dados_num$Globulina
dados_fat <- read.table("dataset/dadosfat.dat")
attach(dados_num)
attach(dados_fat)

## Tabelas de contingencia ####

# Desfecho por sexo
sexo_desfecho <- table(Desfecho, Sexo)
t(round(prop.table(sexo_desfecho)*100, digits = 1))
fisher.test(sexo_desfecho)
# chisq.test(sexo_desfecho)

# Desfecho por ASA
asa_desfecho <- table(Desfecho, ASA)
t(round(prop.table(asa_desfecho)*100, digits = 1))
fisher.test(asa_desfecho)
# chisq.test(asa_desfecho)

# Desfecho por diabete
dm_desfecho <- table(Desfecho, DM)
t(round(prop.table(dm_desfecho)*100, digits = 1))
fisher.test(dm_desfecho)
# chisq.test(dm_desfecho)

# Desfecho por diagnostico
diag_desfecho <- table(Desfecho, Diagnóstico)
t(round(prop.table(diag_desfecho)*100, digits = 1))
fisher.test(diag_desfecho)
# chisq.test(diag_desfecho)

# Desfecho por tratamento
atb_desfecho <- table(Desfecho, ATB)
t(round(prop.table(atb_desfecho)*100, digits = 1))
fisher.test(atb_desfecho)
# chisq.test(atb_desfecho)

# ASA por tratamento
asa_atb <- table(ATB, ASA)
# t(asa_atb)
t(round(prop.table(asa_atb)*100, digits = 1))
fisher.test(asa_atb)
# chisq.test(asa_atb)

## limpar dados ####
detach(dados_num)
detach(dados_fat)
rm(dados_num, dados_fat, ptn)
