# Paquetes ----------------------------------------------------------------


# CSV y formatos --------------------------------------------------------



# Inciso 1 ---------------------------------------------------------------

set.seed(1410) # definimos una semilla
n <-10^4 # tamaño de la muestra
U <-runif(n, min = 1.9, max = 2.1) # genera un vector con distribución uniforme

g <-Vectorize(function(x) log(x)) # construimos función g 

curve(g,1.8,2.2,col="blue",lwd=1,main="Grafico de g(X)")
grid()  

Y <- g(U) #genera el vector para cada observación
acumulado<-cumsum(Y)/(1:n)
plot(1:n,acumulado,col="blue",type="l",ylab="Aproximacion",xlab="Iteraciones")


P_est1=mean(Y)
e1<-(abs(P_est1-log(2)))

# Inciso 2 ---------------------------------------------------------------------


