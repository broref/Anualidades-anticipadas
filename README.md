# Anualidades-anticipadas

# Tarea-funciones-de-anualidades-vencidas
En este repositorio se sube la tarea sobre anualidades vencidas

Con el siguiente codigo, usted puede cargar las funciones para los distintos calculos de anualidad vencida en su workspace de posit cloud
```
source("https://raw.githubusercontent.com/broref/Tarea-funciones-de-anualidades-vencidas/refs/heads/main/Anualidades%20vencidas.R")
```

A continuacion se dan los ejemplos en los cuales estan basados los datos para la realizacion de los calculos

# Anualidad vencida

### Formula
$VF = A*((1+r)^(t)-1)/r$

Para ejemplificar la formula de anualidades vencidas se tomara uno de los ejercicios vistos en clase.
```
Un inversionista realiza un pago mensual de $1200 al final de cada mes durante 5 años en una anualidad vencida que paga una
tasa de interes del 6% anual, compuesta mensualmente ¿Cual el valor futuro de esa inversion?
```
### Significado de los valores

$A$ = Anualidad
$t$ = Tiempo del periodo
$r$ = Tasa de interes
$VF$ = Valor final

Se toman los valores y se hacen las respectivas conversiones para realizar los calculos y saber el valor futuro de la inversion
```
$A$ = $1,200.00
$t$ = 5*12 = 60
$r$ = 6%/12 = 0.06/12 = 0.005
```
Utilizando la formula de anualidades vencidas se tiene:

$VF$ = 83,724.036611836

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
