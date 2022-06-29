export function bubbleSort(vector) {
    let swapTotal = 0;
    let comparisonTotal = 0;
    for (let j = 0; j < vector.length - 1; j++) {
        for (let i = 0; i < vector.length - 1; i++) {
            comparisonTotal++
            if (vector[i] > vector[i + 1]) {
                [vector[i], vector[i + 1]] = [vector[i + 1], vector[i]]
                swapTotal++
            }
        }
    }
    console.log(`swapTotal: ${swapTotal}, comparisons: ${comparisonTotal}`)
}

export function bubbleSortRevenge(vector) {
    let swapTotal = 0;
    let comparisonTotal = 0;
    for (let last = vector.length - 1; last > 0; last--) {
        for (let i = 0; i < last; i++) {
            comparisonTotal++
            if (vector[i] > vector[i + 1]) {
                [vector[i], vector[i + 1]] = [vector[i + 1], vector[i]]
                swapTotal++
            }
        }
    }
    console.log(`swapTotal: ${swapTotal}, comparisons: ${comparisonTotal}`)
}

export function optimunBubbleSort(vector) {
    let swapTotal = 0;
    let comparisonTotal = 0;
    for (let last = vector.length - 1; last > 0; last--) {
        let swaps = 0
        for (let i = 0; i < last; i++) {
            comparisonTotal++
            if (vector[i] > vector[i + 1]) {
                [vector[i], vector[i + 1]] = [vector[i + 1], vector[i]]
                swaps++
                swapTotal++
            }
        }
        if (swaps == 0) break
    }
    console.log(`swapTotal: ${swapTotal}, comparisons: ${comparisonTotal}`)
}
