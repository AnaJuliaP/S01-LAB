main :: IO ()
main = do
    -- Parte 1: Processar a lista e mostrar o último elemento
    let lista = [30,29..1]
    let listaMultiplicada = map (*3) lista
    let listaInvertida = reverse listaMultiplicada
    let ultimoElemento = last listaInvertida
    putStrLn "Resultado do último elemento da lista processada:"
    print ultimoElemento

    -- Parte 2: Calcular fatorial ou multiplicar por 2
    let n = 5 -- Substitua pelo valor desejado
    let resultado = fatorialOuMultiplica n
    putStrLn "\nResultado do cálculo fatorial ou multiplicação:"
    print resultado

-- Função para calcular o fatorial ou multiplicar por 2
fatorialOuMultiplica :: Int -> Int
fatorialOuMultiplica n
    | n > 0     = factorial n
    | otherwise = n * 2
  where
    factorial 0 = 1
    factorial x = x * factorial (x - 1)
