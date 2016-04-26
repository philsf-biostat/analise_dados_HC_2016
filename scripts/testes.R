# Dados ####
dados_num <- read.table("dataset/dadosnum.dat")
ptn <- dados_num$Albumina + dados_num$Globulina
dados_fat <- read.table("dataset/dadosfat.dat")
attach(dados_num)
attach(dados_fat)


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

