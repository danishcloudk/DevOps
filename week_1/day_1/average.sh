#!/bin/bash

# taking three numbers from user
echo "Enter first number:"
read a

echo "Enter second number:"
read b

echo "Enter third number:"
read c

# calculate sum
sum=$((a + b + c))

# calculate average
avg=$((sum / 3))

echo "Sum: $sum"
echo "Average: $avg"

