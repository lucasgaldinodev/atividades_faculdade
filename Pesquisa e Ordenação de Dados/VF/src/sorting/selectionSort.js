export function selectionSort(array) {

}


export function selectionSortInverse(array) {
    let swapTotal = 0
    let comparisonTotal = 0
    for (let i = array.length - 1; i > 0; i--) {
        let maior = i
        for (let j = i - 1; j >= 0; j--) {
            comparisonTotal++
            if (array[j] > array[maior]) {
                maior = j
            }
        }
        if (maior != i) {
            [array[i], array[maior]] = [array[maior], array[i]]
            swapTotal++
        }
        console.log(array)
    }
    console.log('----------------')
    console.log(`Comparações: ${comparisonTotal}, Trocas: ${swapTotal}`)
    return array;
}