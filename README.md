# MNA Scripts 1° Parcial
Scripts MNA

## Matriz ortogonal
inv(A) = A'

A' * A = I

## Norma L1 en (a,b)
Si te dan f = sen(x)

haces f = @(x) abs(sin(x)) , sin el modulo la cagas

quad(f,a,b)

## Norma de funciones
(hay que hacer el producto de las funciones. Si piden ortogonales --> norma = 0. Dejo un ejemplo acá abajo)

f = @(x) sin(x) * cosh(pi*x);

quad(f,-42,42)

## Cambio de base

C = cambio_base(B1,B2)

Donde   

        B1 es la matriz de cambio de base de B1 a las Canonicas
        
        B2 es la matriz de cambio de base de B2 a las Canonicas   (Estas son las faciles de hacer
        
        C es la matriz de cambio de base de B1 a B2

## Descomposición QR
[Q R] = qr(MATRIZ)

## Autovalores con QR
AUTOVALORES = eigQR(MATRIZ,ITERACIONES,ERROR)

## Autovalores, autovectores y lambda infinito
(si no queres lamda infinito podes pasarle cualquier X0 y no darle bola a LAMBDA_INFINITO)

[AUTOVECTORES AUTOVALORES LAMBDA_INFINITO] = autovec_autoval(MATRIZ,X0)

# Metodos de las potencias
Encontrar autovalor de modulo maximo y su autovector asociado. Si queres encontrar el menor usa inv(MATRIZ)

## Potencias basico

[AUTOVECTOR AUTOVALOR] = potencia(MATRIZ,X0,ITERACIONES)

## Potencias escalado

[AUTOVECTOR AUTOVALOR] = potencias_escalado(MATRIZ,X0,ITERACIONES)

## Potencias error

[AUTOVECTOR AUTOVALOR] = potencias_error(MATRIZ,X0,ITERACIONES,ERROR)

## Cuadrados mínimos
(no devuelve nada, solo imprime el polinomio)

cuadrados_minimos([XVECTOR],[YVECTOR],GRADO)

## Cuadrados mínimos directo 
Es CMDirecto, le erre.
![alt text](https://i.ibb.co/X4G1wjY/Whats-App-Image-2020-09-13-at-4-52-24-PM.jpg)

## Cuadrados mínimos con SVD
(devuelve una matriz de Nx1 que tiene la forma [a ; b ; .. ; n] y esos valores corresponden a las letras de la formula "y = a*cos(x) + b" o la que sea)

(la matriz C que es parámetro es la matriz que dan de resultados, por ejemplo [2.1 3.9 8.8])

(la MATRIZ_ENTRADA es el resultado de reemplazar la fórmula que nos dan por ejemplo "y = ax+b" con los valores de x que nos pasan)

MATRIZ_RESULTADO = cuadrados_minimos_svd(MATRIZ_ENTRADA, C)

## Cuadrados minimos con QR
(devuelve y recibe lo mismo que cuadrados minimos con SVD)

MATRIZ_RESULTADO = cuadrados_minimos_qr(MATRIZ_ENTRADA, C)

# Descomposición en valores singulares

## SVD
(si hacemos U*S*V' nos devuelve A. Los valores singulares son los de S)

[U S V] = svd(MATRIZ)

## Pseudoinversa

PSEUDOINVERSA = pinv(A)
