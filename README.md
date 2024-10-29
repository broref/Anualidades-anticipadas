# Anualidades-anticipadas

# Tarea-funciones-de-anualidades-anticipadas
En este repositorio se sube la tarea sobre anualidades anticipadas

Con el siguiente codigo, usted puede cargar las funciones para los distintos calculos de anualidad anticipada en su workspace de posit cloud
```
source("https://raw.githubusercontent.com/broref/Anualidades-anticipadas/refs/heads/main/Funciones%20anualidades%20anticipadas.R")
```

A continuacion se dan los ejemplos en los cuales estan basados los datos para la realizacion de los calculos

# Anualidad vencida

### Formula
$VF$ = $(1+r)*A*((1+r)^t-1)/r$

Para ejemplificar la formula de anualidades anticipadas se tomara uno de los ejercicios del libro de Matematicas financieras de Hector Manuel Vidaurri Aguirre pagina 317.
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

$VF$ = $217,538.235713748

Nos daremos cuenta que se obtuvo un resultado muy parecido, esto es causado debido a que se toma la cifra en su forma mas pura, pero si nos damos cuenta el resultado solo esta resdondeado para una mayor simplificacion.

Se utilizara el valor calculado con las funciones respecto al resultado obtenido para una mayor precision.

### Para acceder a las funciones para calcular anualidad anticipada y tener una mayor comodidad se tienen los siguientes comandos

##### Calculo de valor futuro
```
VF = ValorVF(A = 5000,r = 0.01,t = 36)
```
##### Calculo de anualidad
```
a = ValorA(VF = 217538.235713748,r = 0.01,t = 36)
```
##### Calculo de tiempo/numero de pagos
```
T = ValorT(VF = 217538.235713748,A = 5000,r = 0.01)
```
##### Calculo de tasa de interes
```
R = ValorR(VF = 217538.235713748,A = 5000,t = 36)
```


# Valor actual

### Formula
$VA = (1+r)*A*(1-(1+r)^(-t))/r$

Para ejemplificar la formula de anualidades anticipadas con valor actual(valor presente o sinonimos) se tomara uno de los ejercicios del libro de Matematicas financieras de Hector Manuel Vidaurri Aguirre pagina 318.
```
Un automovil se puede comprar a credito mediante 48 abonos mensuales anticipados de $4,800. Si la tasa de interes es del 16% capitalizable cada mes ¿Cual es el valor de contado del automovil?
```
### Significado de los valores

$A$ = Anualidad
$t$ = Tiempo del periodo
$r$ = Tasa de interes
$VA$ = Valor actual

Se toman los valores y se hacen las respectivas conversiones para realizar los calculos y saber el valor actual de la inversion
```
$A$ = $4,800
$t$ = 48
$r$ = 16%/12 = 0.16/12 = 0.013333333
```
Utilizando el resultado proporcionado en el libro se tiene que el valor de esa inversion a 3 años seria un total de:

$VA$ = $171,628.50

Comprobamos esto con las formulas calculadas con las funciones y como resultado se obtiene:

$VA$ = $171,628.504089402

Nos daremos cuenta que se obtuvo un resultado muy parecido, esto es causado debido a que se toma la cifra en su forma mas pura, pero si nos damos cuenta el resultado solo esta resdondeado para una mayor simplificacion.

Se utilizara el valor calculado con las funciones respecto al resultado obtenido para una mayor precision.

### Para acceder a las funciones para calcular valor actual y tener una mayor comodidad se tienen los siguientes comandos

##### Calculo de valor actual
```
 VA = ValorVA(A = 4800,r = 0.16/12,t = 48)
```
##### Calculo de anualidad
```
AN = ValorAV(VA = 171628.504089402,r = 0.16/12,t = 48)
```
##### Calculo de tiempo/numero de pagos
```
> P = ValorTV(VA = 171628.504089402,A = 4800,r = 0.16/12)
```
##### Calculo de tasa de interes
```
Rv = ValorRV(VA = 171628.504089402,A = 4800,t = 48)
```
