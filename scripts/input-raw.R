library(xlsx)
dados<-read.xlsx("../Profilaxia ATB_Amanda4.xlsx",1)

pront_remover <- 0
dados <- dados[dados$Prontuario != pront_remover,]

## Anonimizando os dados, e selecionando apenas as colunas relevantes
cobra <- dados[,c("ATB","Idade","Sexo","IMC","Diagnóstico","DM","Albumina","Globulina","ASA","Tempo","Desfecho")]
str(cobra)
summary(cobra)

write.table(cobra,file="dataset/hc-dataset.dat")

summary(modelo <- glm(Desfecho ~ ATB, family = binomial(link = "logit"), data=cobra ))

