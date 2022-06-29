module.exports = function (arr) {
    for (let i = 1; i < arr.length; i++) {
        let atual = arr[i]
        let j;
        for (j = i - 1; j >= 0 && atual < arr[j]; j--) {
            arr[j + 1] = arr[j]
        }
        arr[j + 1] = atual
    }
}