## Carregando o dataset ####
cobra <- read.table("dataset/hc-dataset.dat")

## Dados numéricos ####
cobra_num <- cobra[,c("Idade","IMC","Albumina","Globulina","Tempo")]
write.table(cobra_num,file = "dataset/dadosnum.dat")

## Dados categóricos ####
cobra_fat <-cobra[,c("ATB","Sexo","Diagnóstico","DM","ASA","Desfecho")]
write.table(cobra_fat,file = "dataset/dadosfat.dat")

rm(cobra,cobra_fat,cobra_num)
