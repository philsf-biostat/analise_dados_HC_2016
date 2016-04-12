## Dados numéricos ####
dados_num <- read.table("dataset/dadosnum.dat")

desc_fun <- function(x) c(mean(x,na.rm = T),sd(x, na.rm = T),median(x, na.rm = T),IQR(x, na.rm = T))
desc_num <- vapply(dados_num,desc_fun,c("Média" = 0, "DP" = 0, "Mediana" = 0, "AIQ" = 0) )
desc_num <- t(round(desc_num,digits = 2 ))

write.table(desc_num,file = "resultados/descritivas_num.dat")
rm(dados_num,desc_fun,desc_num)

## Dados categóricos ####
dados_fat <- read.table("dataset/dadosfat.dat")
summary(dados_fat)
library(Hmisc)
d <- describe(dados_fat)
atb <- round(prop.table(table(dados_fat$ATB))*100)#, digits = 1)
atb <- d$ATB$values[,"S"]
sexo <- table(dados_fat$Sexo)
attach(dados_fat)
atb <- table(Desfecho, ATB) # contingência
sexo <- table(Desfecho, Sexo)
summary(atb)
describe(Desfecho ~ ATB, data = dados_fat)

df <- data.frame(ATB=atb,Sexo=sexo)
write.table(df, "resultados/descritivas_fat.dat")
rm(dados_fat,df,atb,sexo)
