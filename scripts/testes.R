# Dados ####
dados_num <- read.table("dataset/dadosnum.dat")
ptn <- dados_num$Albumina + dados_num$Globulina
dados_fat <- read.table("dataset/dadosfat.dat")
attach(dados_num)
attach(dados_fat)

## Gráficos de categóricas
counts <- table(Sexo, Desfecho); barplot(round(prop.table(counts)*100, digits = 1), beside = T, legend = rownames(counts) , main = "Desfecho por sexo")
counts <- table(Desfecho, ATB); barplot(round(prop.table(counts)*100, digits = 1), beside = T, legend = rownames(counts) , main = "ATB por desfecho")

counts <- table(Sexo, ATB); barplot(round(prop.table(counts)*100, digits = 1), beside = T, legend = rownames(counts) , main = "ATB por sexo")

## Rascunho ####
par(mfrow = c(2,2))
counts <- table(Desfecho, ASA); barplot(counts, legend=rownames(counts), beside = T, main = "ASA por desfecho")
counts <- table(ASA, Desfecho); barplot(counts, legend=rownames(counts), beside = T, main = "Desfecho por ASA")
counts <- table(Desfecho, ASA); barplot(counts, legend=rownames(counts), beside = F, main = "ASA por desfecho")
counts <- table(ASA, Desfecho); barplot(counts, legend=rownames(counts), beside = F, main = "Desfecho por ASA")

## Tabelas de contingencia

# Desfecho por sexo
sexo_desfecho <- table(Sexo, Desfecho)
round(prop.table(sexo_desfecho)*100, digits = 1)
#chisq.test(sexo_desfecho)
fisher.test(sexo_desfecho)

# Desfecho por ASA
asa_desfecho <- table(ASA, Desfecho)
round(prop.table(asa_desfecho)*100, digits = 1)
#chisq.test(asa_desfecho)
fisher.test(asa_desfecho)

# Desfecho por diabete
dm_desfecho <- table(DM, Desfecho)
round(prop.table(dm_desfecho)*100, digits = 1)
#chisq.test(dm_desfecho)
fisher.test(dm_desfecho)

# Desfecho por diagnostico
diag_desfecho <- table(Diagnóstico, Desfecho)
round(prop.table(diag_desfecho)*100, digits = 1)
#chisq.test(diag_desfecho)
fisher.test(diag_desfecho)

# Desfecho por tratamento
atb_desfecho <- table(ATB, Desfecho)
t(round(prop.table(atb_desfecho)*100, digits = 1))
chisq.test(atb_desfecho)
fisher.test(atb_desfecho)
# barplot(atb_desfecho, beside = T, legend.text = rownames(atb_desfecho), main = "Desfecho por tratamento")
barplot(atb_desfecho, beside = T, legend.text = c("Sem ATB", "Com ATB"), main = "Desfecho por tratamento")

par(mfrow = c(2,2))
barplot(diag_desfecho, beside = T, legend.text = rownames(diag_desfecho), main = "Desfecho por Diabete")
barplot(dm_desfecho, beside = T, legend.text = rownames(dm_desfecho), main = "Desfecho por Diabete")
barplot(sexo_desfecho, beside = T, legend.text = rownames(sexo_desfecho))
barplot(asa_desfecho, beside = T, legend.text = rownames(asa_desfecho))

barplot(asa_atb, beside = T, legend.text = rownames(asa_atb), main = "ASA por tratamento")

# ASA por tratamento
asa_atb <- table(ATB, ASA)

t(asa_atb)
t(round(prop.table(asa_atb)*100, digits = 1))
chisq.test(asa_atb)
fisher.test(asa_atb)

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

## Regressão logística
summary(glm(Desfecho ~ ATB, family = binomial(link = "logit")))
