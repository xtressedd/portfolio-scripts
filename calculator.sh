#!/bin/bash
#Author: Domingo José J. C.
#Created: 28/10/25
#Last Modified: 28/10/25
# EX: ./calculator.sh

# Verificar si hay al menos dos argumentos (operación y un número) // Verify if there's at least 2 argumentes (Operation and number)
if [ "$#" -lt 2 ]; then
    echo "Uso: $0 <operación (+ o -)> <número1> [número2 ... número9]"
    exit 1
fi

# Guardar la operación en una variable // Save the operation in a variable  
operation=$1

# Validar que la operación sea + o - // Validate that the operation is + or -
if [[ "$operation" != "+" && "$operation" != "-" ]]; then
    echo "Error: La operación debe ser '+' o '-'"
    exit 1
fi

# Inicializar el resultado con el primer número o 0 si no hay número // Initialitase the result with the first number or the number 0 if this doesn't exit
result=${2:-0}

# Iterar sobre los números restantes y realizar la operación // Iterate over the remaining numbers and perform the operation
for num in "${@:3}"; do
    if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
        echo "Error: '$num' no es un número válido"
        exit 1
    fi

    # Realizar la operación con el resultado acumulado // Perform the operation with the accumulated result
    result=$((result $operation num))
done

# Mostrar el resultado final // show the final result
echo "Resultado: $result"

#otra solución más sencilla, con lógica simple y sin  operadores lógicos jiji // another solution less complex, without logic operators jiji
#echo $(( ${2:-0} $1 ${3:-0} $1 ${4:-0} $1 ${5:-0} $1 ${6:-0} $1 ${7:-0} $1 ${8:-0} $1 ${9:-0} $1 ${10:-0} ))
