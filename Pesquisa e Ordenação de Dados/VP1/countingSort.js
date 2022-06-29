module.exports = function (arr, max) {
    let counter = []
    let ordered = []
    for (let i = 0; i <= max; i++) {
        counter[i] = 0
    }
    for (let i = 0; i < arr.length; i++) {
        counter[arr[i]] += 1
    }
    for (let i = 1; i < counter.length; i++) {
        counter[i] += counter[i - 1]
    }
    for (let i = 0; i < arr.length; i++) {
        ordered[counter[arr[i]] - 1] = arr[i]
        counter[arr[i]] -= 1
    }
    return ordered
}