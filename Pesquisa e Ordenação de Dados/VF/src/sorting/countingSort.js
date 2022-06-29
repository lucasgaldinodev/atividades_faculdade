let vector = [1, 4, 1, 2, 7, 5, 2, 3, 5, 8, 9, 5, 3, 4, 6, 7, 5, 4, 3, 12, 15]

function countingSort(vector, max) {
    let counter = []
    let counter2 = []
    let ordered = []

    for (i = 0; i <= max; i++) {
        counter[i] = 0
        counter2[i] = i
    }

    for (i = 0; i < vector.length; i++) {
        counter[vector[i]] += 1
    }
    console.log('Número de elementos por posição:')
    console.log(counter2)
    console.log(counter)

    for (i = 1; i < counter.length; i++) {
        counter[i] += counter[i - 1]
    }
    console.log('')
    console.log("Segunda contagem:")
    console.log(counter)

    for (i = 0; i < vector.length; i++) {
        ordered[counter[vector[i]] - 1] = vector[i]
        counter[vector[i]] -= 1
    }
    console.log('')
    console.log("Ordenado:")
    console.log(ordered)
}

countingSort(vector, 15)
