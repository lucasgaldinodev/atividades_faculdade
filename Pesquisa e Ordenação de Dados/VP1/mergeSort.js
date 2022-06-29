module.exports = function (arr, start, end) {
    if (start < end) {
        let middle = Math.floor((start + end) / 2)
        mergeSort(arr, start, middle)
        mergeSort(arr, middle + 1, end)
        merge(arr, start, middle, end)
    }
}

function merge(arr, start, middle, end) {
    let sorted = []
    let left = start
    let right = middle + 1
    let actual = start

    while (!endLeft || !endRight) {
        if (!endLeft && !endRight) {
            if (arr[left] < arr[right]) {
                sorted[actual++] = arr[left++]
            } else {
                sorted[actual++] = arr[right++]
            }
        }
        if (endLeft) {
            while (!endRight) {
                sorted[actual++] = arr[right++]
            }
        }
        if (endRight) {
            while (!endLeft) {
                sorted[actual++] = arr[left++]
            }
        }
    }
}