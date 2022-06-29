let arr = [...Array(301).keys()] // Array contendo números de 0 até 300
let num = Math.floor(Math.random() * 351) // Random no range 0 ~ 350 para ter como cair na situação onde não existe o número dentro da lista
console.log('O número a ser encontrado é: ' + num)

function buscaBinaria(arr, num, div = 0) {
    let metade = Math.floor(arr.length / 2) // Armazena o valor da metade da Array
    let menor = arr.slice(0, metade) // Armazena a metade menor da Array
    let maior = arr.slice(metade, arr.length) // Armazena a metade maior da Array

    if (menor.includes(num)) {
        if (menor.length != 1) {
            console.log(`O número é MAIOR/IGUAL a ${menor[0]} e MENOR/IGUAL a ${menor[menor.length - 1]}`)
            div = div + 1
            buscaBinaria(menor, num, div)
        } else {
            result = menor[0]
            console.log(`O número ${result} está contido dentro da lista e foi encontrado com ${div} divisões!`)
        }
    } else if (maior.includes(num)) {
        if (maior.length != 1) {
            console.log(`O número é MAIOR/IGUAL a ${maior[0]} e MENOR/IGUAL a ${maior[maior.length - 1]}`)
            div = div + 1
            buscaBinaria(maior, num, div)
        } else {
            result = maior[0]
            console.log(`O número ${result} está contido dentro da lista e foi encontrado com ${div} divisões!`)
        }
    } else {
        console.log(`O número ${num} não está contido dentro da lista!`)
    }
}

buscaBinaria(arr, num)