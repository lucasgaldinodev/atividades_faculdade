module.exports = function (arr) {
    let swapTotal = 0;
    let comparisonTotal = 0;
    for (let j = 0; j < arr.length - 1; j++) {
        for (let i = 0; i < arr.length - 1; i++) {
            comparisonTotal++
            if (arr[i] > arr[i + 1]) {
                [arr[i], arr[i + 1]] = [arr[i + 1], arr[i]]
                swapTotal++
            }
        }
    }
}