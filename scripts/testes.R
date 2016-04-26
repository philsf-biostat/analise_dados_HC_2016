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

## Numéricas por desfecho ####
# Teste de significância de Wilcoxon

## Idade por desfecho
wilcox.test(Idade ~ Desfecho)

## IMC por desfecho
wilcox.test(IMC ~ Desfecho)

## Tempo de garrote por desfecho
wilcox.test(Tempo ~ Desfecho)

## Proteína total por desfecho
wilcox.test(ptn ~ Desfecho)

## Numéricas por tratamento ####
# Teste de significância de Wilcoxon

## Idade por tratamento
wilcox.test(Idade ~ ATB)

## IMC por tratamento
wilcox.test(IMC ~ ATB)

## Tempo de garrote por tratamento
wilcox.test(Tempo ~ ATB)

## Proteína total por tratamento
wilcox.test(ptn ~ ATB)

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
