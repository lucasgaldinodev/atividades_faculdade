array = [8, 4, 11, 16, 6, 7, 3]

function insertionSort(array) {
    let atual = 0
    let j
    for (let i = 1; i < array.length; i++) {
        atual = array[i]
        for (j = i - 1; j >= 0 && atual < array[j]; j--) {
            array[j + 1] = array[j]
        }
        array[j + 1] = atual
    }
    return array
}

console.log(array)
console.log(insertionSort(array))