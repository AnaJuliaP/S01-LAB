REM Programa para gerar um número aleatório e calcular seu fatorial

RANDOMIZE TIMER
numero = INT(RND * 10) + 1
PRINT "Número aleatório: "; numero

fatorial = 1
FOR i = 1 TO numero
    fatorial = fatorial * i
NEXT i
PRINT "Fatorial: "; fatorial
