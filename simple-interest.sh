#!/bin/bash

# Simple Interest Calculator
# Formula: I = (P * R * T) / 100

echo "=== Simple Interest Calculator ==="
echo "Formula: I = (Principal * Rate * Time) / 100"
echo ""

# Input fields
read -p "Enter Principal (P) in $: " principal
read -p "Enter Rate (R) in %: " rate
read -p "Enter Time (T) in years: " time

# Calculate Simple Interest using bc for floating point
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc -l)

# Display result
echo ""
echo "=== Results ==="
echo "Principal: $$principal"
echo "Rate: ${rate}%"
echo "Time: ${time} years"
echo "Simple Interest: $$interest"
