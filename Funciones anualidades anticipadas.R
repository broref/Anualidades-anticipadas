# Funciones anualidades anticipadas
# Fernando Zuriel Martinez Barrera
# Matricula: 2350468h

# Valor futuro

ValorVF = function(A,r,t){
  valor = (1+r)*A*((1+r)^t-1)/r
  texto=paste0("Valor futuro:",valor)
  return(texto)
}

# Valor de la anualidad

ValorA = function(VF,r,t){
  valor = (VF*r)/(((1+r)^t-1)*(1+r))
  texto=paste0("Anualidad:",valor)
  return(texto)
}

# Obtencion del tiempo

ValorT = function(VF,A,r){
  valor = log(((VF*r)/(A*(1+r)))+1)/log(1+r)
  texto=paste0("Numero de pagos:",valor)
  return(texto)
}

# Obtencion de la tasa

ValorR = function(VF,A,t){
  aprox=function(r){
    VF-((1+r)*A*((1+r)^t-1)/r)
  }
  tasa_aprox=uniroot(aprox,inter = c(0.0000001, 1))$root
  texto=paste0("Valor aproximado de la tasa:",tasa_aprox)
  return(texto)
}

# Valor presente

ValorVA = function(A,r,t){
  valor = (1+r)*A*(1-(1+r)^(-t))/r
  texto=paste0("Valor actual:",valor)
  return(texto)
}

# Valor de la anualidad con valores actuales

ValorAV = function(VA,r,t){
  valor = (VA*r)/((1-(1+r)^(-t))*(1+r))
  texto=paste0("Anualidad conociendo el valor actual:",valor)
  return(texto)
}

# Obtencion del tiempo con el valor actual

ValorTV = function(VA,A,r){
  valor = -(log(1-((VA*r)/(A*(1+r))))/log(1+r))
  texto=paste0("Numero de periodos conociendo el valor actual:",valor)
  return(texto)
}

# Obtencion de la tasa con el valor actual

ValorRV = function(VA,A,t){
  aproximado=function(r){
    VA-((1+r)*A*(1-(1+r)^(-t))/r)
  }
  t_aprox=uniroot(aproximado,inter = c(0.0000001, 1))$root
  texto=paste0("Valor aproximado de la tasa:",t_aprox)
  return(texto)
}












