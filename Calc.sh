#!/bin/bash

# Function to perform calculations
calculate() {
    case $2 in
        +) result=$(echo "$1 + $3" | bc) ;;
        -) result=$(echo "$1 - $3" | bc) ;;
        \*) result=$(echo "$1 * $3" | bc) ;;
        /) result=$(echo "scale=2; $1 / $3" | bc) ;;
        *) echo "Invalid operator! Use +, -, *, or /"; exit 1 ;;
    esac
    echo "Result: $result"
}

# Get user input
read -p "Enter first number: " num1
read -p "Enter operator (+, -, *, /): " op
read -p "Enter second number: " num2

# Call function to calculate
calculate "$num1" "$op" "$num2"