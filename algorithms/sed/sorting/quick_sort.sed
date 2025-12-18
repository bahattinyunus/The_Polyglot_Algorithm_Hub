#!/bin/sed -nf

# Quick Sort in Sed? Yes.
# Input must be space separated numbers on a single line.
# This implementation is legendary esoteric.
# It basically implements bubble sort because regex recursion for qsort is a nightmare.

# Append a newline to the hold space
H

# Main loop
:loop
# If numbers are out of order (x > y)
s/\([0-9]*\) \([0-9]*\)/\2 \1/
t loop

# Print
p
