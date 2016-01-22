## Dados numéricos ####
dados_num <- read.table("../dataset/dadosnum.dat")
desc_fun <- function(x) c(mean(x,na.rm = T),sd(x, na.rm = T),median(x, na.rm = T),IQR(x, na.rm = T))
desc_num <- vapply(dados_num,desc_fun,c("Média" = 0, "DP" = 0, "Mediana" = 0, "AIQ" = 0) )
desc_num <- t(round(desc_num,digits = 2 ))

write.table(desc_num,file = "../resultados/descritivas_num.dat")
rm(dados_num,desc_fun,desc_num)
