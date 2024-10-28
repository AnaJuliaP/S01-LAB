#Banco de dados

% fatos
resultado(joao, 8).
resultado(maria, 7).
resultado(pedro, 5).
resultado(jose, 6).
resultado(ana, 9).
falta(joao, 2).
falta(maria, 0).
falta(pedro, 5).
falta(jose, 1).
falta(ana, 0).

% regras
reprovado(X) :-
    resultado(X, Nota),
    falta(X, F),
	(Nota < 6 ; F > 3).

#Q1
#A) resultado(joao, X)

X = 8

#B) falta(X,Y), Y>0
X = joao,
Y = 2
X = pedro,
Y = 5
X = jose,
Y = 1
false

#C) reprovado(jose)
false 

#Q2
aprovado(X) :-
    resultado(X, Nota),
    falta(X, F),
    (Nota > 6 ; F < 2).