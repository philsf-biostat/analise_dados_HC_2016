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

## Numéricas por tratamento ####
# Teste de significância de Wilcoxon

## Idade por tratamento
wilcox.test(Idade ~ Tratamento)

## IMC por tratamento
wilcox.test(IMC ~ Tratamento)

## Tempo de garrote por tratamento
wilcox.test(Tempo ~ Tratamento)

## Proteína total por tratamento
wilcox.test(ptn ~ Tratamento)

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

## Categóricas por tratamento (Fisher)####

# Testes de independência

## Sexo por tratamento
fisher.test(sexo_atb)

## ASA por tratamento
fisher.test(asa_atb)

## Diabete por tratamento
fisher.test(dm_atb)

## Diagnostico por tratamento
fisher.test(diag_atb)

## Desfecho por tratamento
fisher.test(atb_desfecho)

## Categóricas por tratamento (qui-quadrado)####
## Obs: algumas categorias tem n<5, usar Fisher!

## Sexo por tratamento
# chisq.test(sexo_atb)

## ASA por tratamento
# chisq.test(asa_atb)

## Diabete por tratamento
# chisq.test(dm_atb)

## Diagnostico por tratamento
# chisq.test(diag_atb)

## Desfecho por tratamento
# chisq.test(atb_desfecho)
