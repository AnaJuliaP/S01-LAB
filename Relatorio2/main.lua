-- Exercicio 1
print("Digite um numero:")
local numero = tonumber(io.read())

for i = 1, 10 do
    print(numero .. " x " .. i .. " = " .. numero * i)
end

-- Exercicio 2
local tabela = {}

for i = 1, 100 do
    tabela[i] = math.random(1, 1000)
end

local contagemPares = 0
for i = 1, 100 do
    if tabela[i] % 2 == 0 then
        contagemPares = contagemPares + 1
    end
end

print(contagemPares)