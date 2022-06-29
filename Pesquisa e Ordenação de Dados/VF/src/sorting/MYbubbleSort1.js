function bubbleSort(array) {
    swapTotal = 0
    comparisonTotal = 0
    for (let i = 0; i < array.length - 1; i++) {
        for (let j = 0; j < array.length - 1; j++) {
            comparisonTotal++
            if (array[j] > array[j + 1]) {
                swapTotal++
                [array[j], array[j + 1]] = [array[j + 1], array[j]]
            }
        }
    }
    console.log(`Total de trocas: ${swapTotal}`)
    console.log(`Total de comparações: ${comparisonTotal}`)
}

array = [13, 5, 2, 1, 3, 8]
console.log(array)

bubbleSort(array)
console.log(array)