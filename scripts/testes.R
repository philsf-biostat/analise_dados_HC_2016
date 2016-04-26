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

## Categóricas por desfecho (Fischer)####

# Testes de independência

## Desfecho por sexo
fisher.test(sexo_desfecho)

## Desfecho por ASA
fisher.test(asa_desfecho)

## Desfecho por diabete
fisher.test(dm_desfecho)

## Desfecho por diagnóstico
fisher.test(diag_desfecho)

## Desfecho por tratamento
fisher.test(atb_desfecho)

## ASA por tratamento
fisher.test(asa_atb)

## Categóricas por desfecho (qui-quadrado)####

## Desfecho por sexo
# chisq.test(sexo_desfecho)

## Desfecho por ASA
# chisq.test(asa_desfecho)

## Desfecho por diabete
# chisq.test(dm_desfecho)

## Desfecho por diagnóstico
# chisq.test(diag_desfecho)

## Desfecho por tratamento
# chisq.test(atb_desfecho)

## ASA por tratamento
# chisq.test(asa_atb)
