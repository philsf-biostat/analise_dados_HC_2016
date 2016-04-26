# Regressão
Felipe Figueiredo
April, 2016


# Resultados (brutos)

## Modelos de regressão






### Desfecho por tratamento


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

### Desfecho por Diabete


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

### Desfecho por Sexo


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

### Desfecho por Idade


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

### Desfecho por IMC


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

### Desfecho por proteína total


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

### Desfecho por diagnóstico


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
