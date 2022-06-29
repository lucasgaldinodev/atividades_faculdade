let bubbleSort = require('./bubbleSort.js')
let bubbleSortRevenge = require('./bubbleSortRevenge.js')
let optimunBubbleSort = require('./optimunBubbleSort.js')
let countingSort = require('./countingSort.js')
let insertionSort = require('./insertionSort.js')
let mergeSort = require('./mergeSort.js')
let selectionSort = require('./selectionSort.js')
let selectionSortMax = require('./selectionSortMax.js')
let selectionSortMax2 = require('./selectionSortMax2.js')

//Array Principal
const arr = []
for (i = 0; i < 10000; i++) {
    arr.push(Math.floor(Math.random() * 1000))
}

// bubbleSort
arr2 = arr
console.time('bubbleSort')
bubbleSort(arr2)
console.timeEnd('bubbleSort')

//bubbleSortRevenge
arr3 = arr
console.time('bubbleSortRevenge')
bubbleSortRevenge(arr3)
console.timeEnd('bubbleSortRevenge')

//optimunBubbleSort
arr4 = arr
console.time('optimunBubbleSort')
optimunBubbleSort(arr4)
console.timeEnd('optimunBubbleSort')

//countingSort
arr5 = arr
console.time('countingSort')
countingSort(arr5)
console.timeEnd('countingSort')

//insertionSort
arr6 = arr
console.time('insertionSort')
insertionSort(arr6)
console.timeEnd('insertionSort')

//mergeSort
arr7 = arr
console.time('mergeSort')
mergeSort(arr7)
console.timeEnd('mergeSort')

//selectionSort
arr8 = arr
console.time('selectionSort')
selectionSort(arr8)
console.timeEnd('selectionSort')

//selectionSortMax
arr9 = arr
console.time('selectionSortMax')
selectionSortMax(arr9)
console.timeEnd('selectionSortMax')

//selectionSortMax2
arr10 = arr
console.time('selectionSortMax2')
selectionSortMax2(arr10)
console.timeEnd('selectionSortMax2')