# MNA
Scripts MNA

## Autovalores, autovectores y lambda infinito (si no queres lamda infinito podes pasarle cualquier X0 y no darle bola a LAMBDA_INFINITO)
[AUTOVECTORES AUTOVALORES LAMBDA_INFINITO] = autovec_autoval(MATRIZ,X0)


# Metodos de las potencias
Encontrar autovalor de modulo maximo y su autovector asociado. Si queres encontrar el menor usa inv(MATRIZ)

## Potencias basico

[AUTOVECTOR AUTOVALOR] = potencia(MATRIZ,X0,ITERACIONES)

## Potencias escalado

[AUTOVECTOR AUTOVALOR] = potencias_escalado(MATRIZ,X0,ITERACIONES)


## Potencias error

[AUTOVECTOR AUTOVALOR] = potencias_error(MATRIZ,X0,ITERACIONES,ERROR)
