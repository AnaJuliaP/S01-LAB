;; Exercicio 1
;; Aplique uma função sobre uma lista (1 2 3) que multiplique um elemento caso ele seja maior ou igual a 4, 
;; caso contrário divida o elemento por 2.

(defun process-element (x)
  "Processa um elemento: multiplica por 2 se >= 4, caso contrário divide por 2."
  (if (>= x 4)
      (* x 2)
      (/ x 2.0))) ; Divisão por 2.0 para garantir resultados decimais.

(defun process-list (lst)
  "Aplica a função `process-element` a todos os elementos da lista."
  (mapcar #'process-element lst))

;; Teste da questão 1
(print "Questão 1 - Resultado com lista (1 2 3):")
(print (process-list '(1 2 3)))

;; Exercicio 2
;; Depois aplique a mesma função numa lista (4 5 6) e junte elas.

(defun process-and-combine (lst1 lst2)
  "Aplica `process-element` às duas listas e junta os resultados."
  (append (process-list lst1) (process-list lst2)))

;; Teste da questão 2
(print "Questão 2 - Resultado com listas (1 2 3) e (4 5 6):")
(print (process-and-combine '(1 2 3) '(4 5 6)))

