#!/bin/bash

echo "Pattern Generation Script"
echo "Choose a pattern to display:"
echo "1. Star Pyramid"
echo "2. Right-Angled Triangle (Stars)"
echo "3. Inverted Right-Angled Triangle"
echo "4. Number Pyramid"
echo "5. Diamond Pattern"
echo "6. Pascal's Triangle"
echo "7. Floyd's Triangle"
read -p "Enter your choice (1-7): " choice

case $choice in
1)
    # Star Pyramid
    read -p "Enter the number of rows for the pyramid: " rows
    for ((i = 1; i <= rows; i++)); do
        for ((j = i; j < rows; j++)); do
            echo -n " "
        done
        for ((k = 1; k <= (2 * i - 1); k++)); do
            echo -n "*"
        done
        echo
    done
    ;;
2)
    # Right-Angled Triangle (Stars)
    read -p "Enter the number of rows: " rows
    for ((i = 1; i <= rows; i++)); do
        for ((j = 1; j <= i; j++)); do
            echo -n "* "
        done
        echo
    done
    ;;
3)
    # Inverted Right-Angled Triangle
    read -p "Enter the number of rows: " rows
    for ((i = rows; i >= 1; i--)); do
        for ((j = 1; j <= i; j++)); do
            echo -n "* "
        done
        echo
    done
    ;;
4)
    # Number Pyramid
    read -p "Enter the number of rows: " rows
    for ((i = 1; i <= rows; i++)); do
        for ((j = 1; j <= i; j++)); do
            echo -n "$j "
        done
        echo
    done
    ;;
5)
    # Diamond Pattern
    read -p "Enter the number of rows: " rows
    for ((i = 1; i <= rows; i++)); do
        for ((j = i; j < rows; j++)); do
            echo -n " "
        done
        for ((k = 1; k <= (2 * i - 1); k++)); do
            echo -n "*"
        done
        echo
    done
    for ((i = rows - 1; i >= 1; i--)); do
        for ((j = rows; j > i; j--)); do
            echo -n " "
        done
        for ((k = 1; k <= (2 * i - 1); k++)); do
            echo -n "*"
        done
        echo
    done
    ;;
6)
    # Pascal's Triangle
    read -p "Enter the number of rows: " rows
    for ((i = 0; i < rows; i++)); do
        for ((j = 0; j <= rows - i; j++)); do
            echo -n " "
        done
        num=1
        for ((j = 0; j <= i; j++)); do
            echo -n "$num "
            num=$((num * (i - j) / (j + 1)))
        done
        echo
    done
    ;;
7)
    # Floyd's Triangle
    read -p "Enter the number of rows: " rows
    num=1
    for ((i = 1; i <= rows; i++)); do
        for ((j = 1; j <= i; j++)); do
            echo -n "$num "
            ((num++))
        done
        echo
    done
    ;;
*)
    echo "Invalid choice!"
    ;;
esac
