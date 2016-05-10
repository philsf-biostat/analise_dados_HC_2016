# Relatório Hugo Cobra (INTO 2016)
Felipe Figueiredo  
February 17, 2016  



# Metodologia utilizada

A análise descritiva foi apresentada na forma de tabelas os dados observados, expressos pela média, desvio padrão, mediana, amplitude interquartílica (AIQ), mínimo e máximo para dados numéricos (quantitativos) e pela frequência (n) e percentual (%) para dados categóricos (qualitativos).
Ao longo do texto, as variáveis normais foram sumarizadas como média +/- desvio padrão (DP), e as variáveis não normais como mediana +/- AIQ.

Foi aplicado o teste de normalidade de Shapiro-Wilks nas variáveis numéricas.
A comparação das variáveis basais e finais foi feita com o teste t para variáveis normalmente distribuídas, e com o teste de Mann-Whitney para variáveis que tiveram a hipótese de normalidade rejeitada.
Para variáveis normais, foi aplicada a correlação de Pearson, e para variáveis não normais, a correlação não paramétrica de Spearman.
Em todas as análises, foi adotada a significância de 5%.
As análises estatísticas foram feitas utilizando o software estatístico R, versão 3.3.0 (https://www.R-project.org).

# Resultados

## Tabelas descritivas

### Dados numéricos


--------------------------------------------
    &nbsp;       Média   DP   Mediana   AIQ 
--------------- ------- ---- --------- -----
   **Idade**     66.19  9.25    67      12  

    **IMC**      30.05  5.45   29.68     7  

 **Albumina**    3.63   0.66    3.6    0.75 

 **Globulina**   2.67   0.86   2.73    1.08 

   **Tempo**     88.69  20.9    87      27  
--------------------------------------------

A média (DP) das idades é 66.19 (9.25)

### Dados categóricos


---------------------------------------------------
 ATB   Sexo   Diagnóstico   DM     ASA    Desfecho 
----- ------ ------------- ----- ------- ----------
N:158 F:233     AR : 50    N:224 I : 16    N:279   

S:128 M: 53     OA :232    S: 62 II :261    S: 7   

 NA     NA      ON : 2      NA   III : 6     NA    

 NA     NA     Outros: 2    NA   NA's: 3     NA    
---------------------------------------------------




## Tabelas de Contingência



As tabelas de contingência a seguir, associam duas variáveis categóricas. Nas estão representadas as categorias do Desfecho (S = infeccção e N = não infeccão). OS p-valores correspondem ao teste de Fisher.


### Desfecho por sexo


----------------
&nbsp;   N    S 
------- ---- ---
 **F**  80.1 1.4

 **M**  17.5  1 
----------------



P-valor: 0.1212122

### Desfecho por Diabete


----------------
&nbsp;   N    S 
------- ---- ---
 **N**  76.6 1.7

 **S**   21  0.7
----------------



P-valor: 0.6474461

### Desfecho por Diagnóstico


---------------------
   &nbsp;     N    S 
------------ ---- ---
   **AR**    16.8 0.7

   **OA**    79.4 1.7

   **ON**    0.7   0 

 **Outros**  0.7   0 
---------------------



P-valor: 0.6482267


### Desfecho por Tratamento


----------------
&nbsp;   N    S 
------- ---- ---
 **N**  53.5 1.7

 **S**  44.1 0.7
----------------



P-valor: 0.4656048


### Desfecho por ASA


------------------
 &nbsp;    N    S 
--------- ---- ---
  **I**   5.7   0 

 **II**   90.5 1.8

 **III**  2.1   0 
------------------



P-valor: 1


### ASA por Tratamento

Adicionalmente, foi testada a associação entre o tratamento e o escore ASA.


-------------------
 &nbsp;    N    S  
--------- ---- ----
  **I**   2.8  2.8 

 **II**   50.5 41.7

 **III**  1.8  0.4 
-------------------



P-valor: 0.3971435


## Gráficos

### Dados numéricos

![](analise_dados_HC_2016_files/figure-html/gráficos idade-1.png)\

![](analise_dados_HC_2016_files/figure-html/grafico tempo-1.png)\

![](analise_dados_HC_2016_files/figure-html/grafico ptn-1.png)\


### Dados categóricos

#### Desfecho por tratamento

![](analise_dados_HC_2016_files/figure-html/grafico tratamento-1.png)\


#### Outros dados, por desfecho

![](analise_dados_HC_2016_files/figure-html/graficos categoricos-1.png)\

