def quickSort(list) {
    if (list.size() < 2) return list
    def pivot = list[list.size().intdiv(2)]
    def left = list.findAll { it < pivot }
    def middle = list.findAll { it == pivot }
    def right = list.findAll { it > pivot }
    return quickSort(left) + middle + quickSort(right)
}

def arr = [10, 7, 8, 9, 1, 5]
println "Original: ${arr}"
def sorted = quickSort(arr)
println "Sorted: ${sorted}"
