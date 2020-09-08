# MNA Scripts 1° Parcial
Scripts MNA

## Matriz ortogonal
inv(A) = A'

A' * A = I

## Norma L1 en (a,b)
Si te dan f = sen(x)

haces f = @(x) abs(sin(x)) , sin el modulo la cagas

quad(abs(f),a,b)

## Norma de funciones
(hay que hacer el producto de las funciones. Si piden ortogonales --> norma = 0. Dejo un ejemplo acá abajo)

f = @(x) sin(x) * cosh(pi*x);

quad(f,-42,42)

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

# Descomposición en valores singulares

## SVD
(si hacemos U*S*V' nos devuelve A. Los valores singulares son los de S)

[U S V] = svd(MATRIZ)

## Pseudoinversa

PSEUDOINVERSA = pinv(A)
