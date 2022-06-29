module.exports = function (arr) {
    let swapTotal = 0;
    let comparisonTotal = 0;
    for (let i = 0; i < arr.length - 1; i++) {
        let maximum = arr.length - 1 - i
        for (let j = 0; j < arr.length - 2 - i; j++) {
            comparisonTotal++
            if (arr[j] > arr[maximum]) {
                maximum = j
            }
        }
        if (maximum != arr.length - 1 - i) {
            [arr[arr.length - 1 - i], arr[maximum]] =
                [arr[maximum], arr[arr.length - 1 - i]]
            swapTotal++
        }
    }
}