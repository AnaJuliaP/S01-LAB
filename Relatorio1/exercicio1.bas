REM Programa para resolver equações do segundo grau

PRINT "Digite os valores para a equação ax^2 + bx + c = 0"
INPUT "a: ", a
INPUT "b: ", b
INPUT "c: ", c

delta = b * b - 4 * a * c

IF delta >= 0 THEN
    x1 = (-b + SQR(delta)) / (2 * a)
    x2 = (-b - SQR(delta)) / (2 * a)
    PRINT "Raízes: "; x1; " e "; x2
ELSE
    PRINT "Não há raízes reais."
END IF
