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


## Análise de Regressão

Foi feita uma análise de regressão logística, tomando como variável resposta o Desfecho (binário). Cada modelo de regressão logística simples considerou como variável preditora cada um dos seguintes dados:

- Tratamento
- Diabete
- Sexo
- Idade
- IMC
- Proteína total
- Diagnóstico

**Nenhum** dos modelos ajustados foi considerado significativo ao nível de 5% para estes dados. Por conta disso, apenas o resultado bruto de cada teste está sendo apresentado, sem formatação.




```
## 
## Call:
## glm(formula = Desfecho ~ ATB, family = binomial(link = "logit"))
## 
## Deviance Residuals: 
##     Min       1Q   Median       3Q      Max  
## -0.2536  -0.2536  -0.2536  -0.1775   2.8840  
## 
## Coefficients:
##             Estimate Std. Error z value Pr(>|z|)    
## (Intercept)  -3.4210     0.4545  -7.528 5.17e-14 ***
## ATBS         -0.7221     0.8453  -0.854    0.393    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## (Dispersion parameter for binomial family taken to be 1)
## 
##     Null deviance: 65.768  on 285  degrees of freedom
## Residual deviance: 64.976  on 284  degrees of freedom
## AIC: 68.976
## 
## Number of Fisher Scoring iterations: 7
```

```
## 
## Call:
## glm(formula = Desfecho ~ DM, family = binomial(link = "logit"))
## 
## Deviance Residuals: 
##     Min       1Q   Median       3Q      Max  
## -0.2561  -0.2125  -0.2125  -0.2125   2.7576  
## 
## Coefficients:
##             Estimate Std. Error z value Pr(>|z|)    
## (Intercept)  -3.7796     0.4523  -8.357   <2e-16 ***
## DMS           0.3784     0.8492   0.446    0.656    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## (Dispersion parameter for binomial family taken to be 1)
## 
##     Null deviance: 65.768  on 285  degrees of freedom
## Residual deviance: 65.580  on 284  degrees of freedom
## AIC: 69.58
## 
## Number of Fisher Scoring iterations: 6
```

```
## 
## Call:
## glm(formula = Desfecho ~ Sexo, family = binomial(link = "logit"))
## 
## Deviance Residuals: 
##     Min       1Q   Median       3Q      Max  
## -0.3414  -0.1861  -0.1861  -0.1861   2.8512  
## 
## Coefficients:
##             Estimate Std. Error z value Pr(>|z|)    
## (Intercept)  -4.0474     0.5043  -8.026    1e-15 ***
## SexoM         1.2340     0.7795   1.583    0.113    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## (Dispersion parameter for binomial family taken to be 1)
## 
##     Null deviance: 65.768  on 285  degrees of freedom
## Residual deviance: 63.506  on 284  degrees of freedom
## AIC: 67.506
## 
## Number of Fisher Scoring iterations: 6
```

```
## 
## Call:
## glm(formula = Desfecho ~ Idade, family = binomial(link = "logit"))
## 
## Deviance Residuals: 
##     Min       1Q   Median       3Q      Max  
## -0.4623  -0.2387  -0.2096  -0.1839   2.9340  
## 
## Coefficients:
##             Estimate Std. Error z value Pr(>|z|)
## (Intercept) -0.86477    2.21554  -0.390    0.696
## Idade       -0.04392    0.03517  -1.249    0.212
## 
## (Dispersion parameter for binomial family taken to be 1)
## 
##     Null deviance: 65.768  on 285  degrees of freedom
## Residual deviance: 64.362  on 284  degrees of freedom
## AIC: 68.362
## 
## Number of Fisher Scoring iterations: 6
```

```
## 
## Call:
## glm(formula = Desfecho ~ IMC, family = binomial(link = "logit"))
## 
## Deviance Residuals: 
##     Min       1Q   Median       3Q      Max  
## -0.3127  -0.2378  -0.2187  -0.2014   2.8632  
## 
## Coefficients:
##             Estimate Std. Error z value Pr(>|z|)  
## (Intercept) -5.09163    2.17668  -2.339   0.0193 *
## IMC          0.04673    0.06824   0.685   0.4935  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## (Dispersion parameter for binomial family taken to be 1)
## 
##     Null deviance: 65.366  on 277  degrees of freedom
## Residual deviance: 64.905  on 276  degrees of freedom
##   (8 observations deleted due to missingness)
## AIC: 68.905
## 
## Number of Fisher Scoring iterations: 6
```

```
## 
## Call:
## glm(formula = Desfecho ~ ptn, family = binomial(link = "logit"))
## 
## Deviance Residuals: 
##     Min       1Q   Median       3Q      Max  
## -0.1911  -0.1816  -0.1785  -0.1754   2.8920  
## 
## Coefficients:
##             Estimate Std. Error z value Pr(>|z|)
## (Intercept) -3.86084    2.90163  -1.331    0.183
## ptn         -0.04243    0.45714  -0.093    0.926
## 
## (Dispersion parameter for binomial family taken to be 1)
## 
##     Null deviance: 41.081  on 251  degrees of freedom
## Residual deviance: 41.073  on 250  degrees of freedom
##   (34 observations deleted due to missingness)
## AIC: 45.073
## 
## Number of Fisher Scoring iterations: 7
```

```
## 
## Call:
## glm(formula = Desfecho ~ Diagnóstico, family = binomial(link = "logit"))
## 
## Deviance Residuals: 
##     Min       1Q   Median       3Q      Max  
## -0.2857  -0.2087  -0.2087  -0.2087   2.7703  
## 
## Coefficients:
##                    Estimate Std. Error z value Pr(>|z|)    
## (Intercept)         -3.1781     0.7217  -4.404 1.06e-05 ***
## DiagnósticoOA       -0.6375     0.8516  -0.749    0.454    
## DiagnósticoON      -14.3880  2797.4420  -0.005    0.996    
## DiagnósticoOutros  -14.3880  2797.4420  -0.005    0.996    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## (Dispersion parameter for binomial family taken to be 1)
## 
##     Null deviance: 65.768  on 285  degrees of freedom
## Residual deviance: 65.059  on 282  degrees of freedom
## AIC: 73.059
## 
## Number of Fisher Scoring iterations: 16
```

