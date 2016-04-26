# Dados ####
dados_num <- read.table("dataset/dadosnum.dat")
ptn <- dados_num$Albumina + dados_num$Globulina
dados_fat <- read.table("dataset/dadosfat.dat")
attach(dados_num)
attach(dados_fat)

## Normalidade ####

# Teste de normalidade

## Idade
shapiro.test(Idade)

## IMC
shapiro.test(IMC)

## Albumina
shapiro.test(Albumina)

## Globulina
shapiro.test(Globulina)

## Tempo de garrote
shapiro.test(Tempo)

## Proteína total
shapiro.test(ptn)


# Desfecho por 
par(mfrow = c(1,1))

## Numéricas por Tratamento ####
wilcox.test(Idade ~ ATB)
wilcox.test(IMC ~ ATB)
wilcox.test(Tempo ~ ATB)
wilcox.test(ptn ~ ATB)

## Numéricas por desfecho ####
wilcox.test(Idade ~ Desfecho)
wilcox.test(IMC ~ Desfecho)
wilcox.test(Tempo ~ Desfecho)
wilcox.test(ptn ~ Desfecho)

## Categóricas por desfecho
fisher.test(sexo_desfecho)
# chisq.test(sexo_desfecho)
fisher.test(asa_desfecho)
# chisq.test(asa_desfecho)
fisher.test(dm_desfecho)
# chisq.test(dm_desfecho)
fisher.test(diag_desfecho)
# chisq.test(diag_desfecho)
fisher.test(atb_desfecho)
# chisq.test(atb_desfecho)
fisher.test(asa_atb)
# chisq.test(asa_atb)
