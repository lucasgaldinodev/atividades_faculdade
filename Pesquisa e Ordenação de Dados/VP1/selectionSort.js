module.exports = function (arr) {
    let swapTotal = 0;
    let comparisonTotal = 0;

    for (let i = 0; i < arr.length - 1; i++) {
        let minimum = i
        for (let j = i + 1; j < arr.length; j++) {
            comparisonTotal++

            if (arr[j] < arr[minimum]) {
                minimum = j
            }
        }
        if (minimum != i) {
            [arr[i], arr[minimum]] = [arr[minimum], arr[i]]
            swapTotal++
        }
    }
}