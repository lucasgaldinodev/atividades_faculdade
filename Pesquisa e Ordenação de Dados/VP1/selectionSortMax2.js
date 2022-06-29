module.exports = function (arr) {
    let swapTotal = 0;
    let comparisonTotal = 0;

    for (let i = arr.length - 1; i > 0; i--) {
        let maximum = i
        for (let j = i - 1; j >= 0; j--) {
            comparisonTotal++
            if (arr[j] > arr[maximum]) {
                maximum = j
            }
        }
        if (maximum != i) {
            [arr[i], arr[maximum]] = [arr[maximum], arr[i]]
            swapTotal++
        }
    }
}