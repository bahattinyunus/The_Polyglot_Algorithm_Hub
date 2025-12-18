# Quick Sort implementation using Make (very esoteric)
# Usage: make -f quick_sort.mk print

NUMS := 10 7 8 9 1 5

# Recursive sort macro
sort = $(if $(strip $1), \
         $(call sort,$(foreach x,$(wordlist 2,$(words $1),$1),$(if $(shell [ $x -lt $(firstword $1) ] && echo 1), $x))) \
         $(firstword $1) \
         $(call sort,$(foreach x,$(wordlist 2,$(words $1),$1),$(if $(shell [ $x -ge $(firstword $1) ] && echo 1), $x))))

print:
	@echo "Original: $(NUMS)"
	@echo "Sorted:   $(call sort,$(NUMS))"
