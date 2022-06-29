module.exports = function (arr) {
    let swapTotal = 0;
    let comparisonTotal = 0;
    for (let last = arr.length - 1; last > 0; last--) {
        for (let i = 0; i < last; i++) {
            comparisonTotal++
            if (arr[i] > arr[i + 1]) {
                [arr[i], arr[i + 1]] = [arr[i + 1], arr[i]]
                swapTotal++
            }
        }
    }
}