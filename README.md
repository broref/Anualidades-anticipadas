# Anualidades-anticipadas

# Tarea-funciones-de-anualidades-vencidas
En este repositorio se sube la tarea sobre anualidades vencidas

Con el siguiente codigo, usted puede cargar las funciones para los distintos calculos de anualidad vencida en su workspace de posit cloud
```
source("https://raw.githubusercontent.com/broref/Anualidades-anticipadas/refs/heads/main/Funciones%20anualidades%20anticipadas.R")
```

A continuacion se dan los ejemplos en los cuales estan basados los datos para la realizacion de los calculos

# Anualidad vencida

### Formula
$VF = (1+r)*A*((1+r)^t-1)/r$

Para ejemplificar la formula de anualidades vencidas se tomara uno de los ejercicios del libro de Matematicas financieras de Hector Manuel Vidaurri Aguirre.
```
Al inicio de cada mes, Francisco deposita $5000 en una cuenta de inversion. Si la tasa de interes es del 1% mensual capitalizable cada mes ¿Cuanto tendra al cabo de 3 años?
```
### Significado de los valores

$A$ = Anualidad
$t$ = Tiempo del periodo
$r$ = Tasa de interes
$VF$ = Valor final

Se toman los valores y se hacen las respectivas conversiones para realizar los calculos y saber el valor futuro de la inversion
```
$A$ = $5000
$t$ = 3*12 = 36
$r$ = 1% = 0.01
```
Utilizando el resultado proporcionado en el libro se tiene que el valor de esa inversion a 3 años seria un total de:

$VF$ = $217,538.24

Comprobamos esto con las formulas calculadas con las funciones y como resultado se obtiene:

$VF$ = 83,724.0366118338

Nos daremos cuenta que se obtuvo un resultado muy parecido, esto es causado por la cantidad de decimales tomadas en uno y otro calculo del problema

### Para acceder a las funciones para calcular anualidad vencida y tener una mayor comodidad se tienen los siguientes comandos

##### Calculo de valor futuro
```
VF=ValorFuturo(A=1200,r=0.005,t=60)
```
##### Calculo de anualidad
```
a=Anualidad(VF=83724.0366118338,r=0.005,t=60)
```
##### Calculo de tiempo/numero de pagos
```
T=N_pagos(A=1200,VF=83724.0366118338,r=0.005)
```
##### Calculo de tasa de interes
```
r=Tasa(VF=83724.0366118338,A=1200,t=60)
```


# Valor actual

### Formula
$VA = A*(1-(1+r)^(-t))/r$

Para la formula en la que se saca el valor actual se utiliza el siguiente ejmplo del libro de Hector Manuel Vidaurri Aguirre.
```
Un inversionista realiza un pago de $10,000 en una cuenta al final de cada trimestre durante 4 años si la tasa de interes es
del 14% anual, compuesta trimestralmente ¿Cuál es el valor actual de la inversion?
```
### Significado de los valores

$A$ = Anualidad
$t$ = Tiempo del periodo
$r$ = Tasa de interes
$VA$ = Valor actual

Se toman los valores y se hacen las respectivas conversiones para realizar los calculos y saber el valor actual de la inversion
```
$A$ = 10,000
$t$ = 4*4 = 16
$r$ = 14%/4 = 0.14/4 = 0.0035
```
Utilizando la formula para saber el Valor actual se tiene:

$VA$ = 120,941.16808149

Comprobamos esto con las formulas calculadas con las funciones y como resultado se obtiene:

$VA$ = 120,941.168081489

Nos daremos cuenta que se obtuvo un resultado muy parecido, esto es causado por la cantidad de decimales tomadas en uno y otro calculo del problema

### Para acceder a las funciones para calcular valor actual y tener una mayor comodidad se tienen los siguientes comandos

##### Calculo de valor actual
```
VA=Valor_actual(A=10000,r=0.035,t=16)
```
##### Calculo de anualidad
```
An=Anual(VA=120941.16808149,r=0.035,t=16)
```
##### Calculo de tiempo/numero de pagos
```
Pe=Num_p(VA=120941.16808149,A=10000,r=0.035)
```
##### Calculo de tasa de interes
```
rv=Tasa_v(VA=120941.16808149,A=10000,t=16)
```
