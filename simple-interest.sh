#!/bin/bash

# Einstein's Theory of Relativity: Energy-Mass Equivalence (E = mc^2)

# Function to calculate energy based on mass
calculate_energy() {
    local mass=$1
    local speed_of_light=299792458  # Speed of light in meters per second (m/s)

    # Formula: E = mc^2
    local energy=$(echo "scale=2; $mass * $speed_of_light^2" | bc)
    echo "Energy (E) = $energy Joules"
}

# User Input
echo "Enter Mass (m) in kilograms (kg):"
read mass

# Validate the input (check if the mass is a positive number)
if [[ "$mass" =~ ^[0-9]+(\.[0-9]+)?$ ]] && (( $(echo "$mass > 0" | bc -l) )); then
    # Call the function to calculate and display energy
    calculate_energy $mass
else
    echo "Invalid input. Please enter a valid positive number for mass."
fi
