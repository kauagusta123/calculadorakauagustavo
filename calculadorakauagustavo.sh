#!/bin/bash

echo "Calculadora Simples"
echo "Escolha uma operação:"
echo "1. Soma"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"
echo "5. Raiz Quadrada"
echo "6. Potência"

read escolha

echo "Digite o primeiro número:"
read num1
echo "Digite o segundo número:"
read num2

if [ $escolha -eq 1 ]; then
    resultado=$(($num1 + $num2))
    echo "Resultado: $resultado"
elif [ $escolha -eq 2 ]; then
    resultado=$(($num1 - $num2))
    echo "Resultado: $resultado"
elif [ $escolha -eq 3 ]; then
    resultado=$(($num1 * $num2))
    echo "Resultado: $resultado"
elif [ $escolha -eq 4 ]; then
    resultado=$(($num1 / $num2))
    echo "Resultado: $resultado"
elif [ $escolha -eq 5 ]; then
    resultado=$(echo "scale=2; sqrt($num1)" | bc)
    echo "Resultado: $resultado"
elif [ $escolha -eq 6 ]; then
    resultado=$(($num1 ** $num2))
    echo "Resultado: $resultado"
else
    echo "Escolha inválida"
fi

