function Data(ano, pop) {
    this.ano = ano
    this.pop = pop
}

function somaAno(anos) {
    let result = 0
    for (let i = 0; i < anos.length; i++) {
        result = result + anos[i]
    }
    return result
}

function somaPop(pops) {
    let result = 0
    for (let i = 0; i < pops.length; i++) {
        result = result + pops[i]
    }
    return result
}

function anoXPop(anos, pops) {
    let result = 0
    for (let i = 0; i < pops.length; i++) {
        result = result + (anos[i] * pops[i])
    }
    return result
}

function anoQuadrado(anos) {
    let result = 0
    for (let i = 0; i < pops.length; i++) {
        result = result + (anos[i] * anos[i])
    }
    return result
}

function mediaAno(anos) {
    let count = 0
    let result = 0
    for (let i = 0; i < anos.length; i++) {
        count = count + anos[i]
    }
    result = count / anos.length
    return result
}

function mediaPop(pops) {
    let count = 0
    let result = 0
    for (let i = 0; i < pops.length; i++) {
        count = count + pops[i]
    }
    result = count / pops.length
    return result
}

let sloap2 = 0
function sloap(sAno, sPop, aXp, ano2, total = anos.length) {
    var result = 0
    result = ((total * aXp) - (sAno * sPop)) / ((total * ano2) - (sAno * sAno))
    sloap2 = result
    return result
}

let intercept2 = 0
function intercept(medAno, medPop, slp) {
    let result = 0
    result = (medPop - (slp * medAno))
    intercept2 = result
    return result
}

function impressao(slp, tcp) {
    console.log(`A equação da reta é a seguinte: pop = ${slp} * ano + (${tcp})`)
}

function equacao(ano, slp = sloap2, tcp = intercept2) {
    let pop = ((slp * ano) + tcp).toFixed(2)
    console.log(`A população em ${ano} será de ${pop} bilhões!`)
}

function start() {
    let sAno = somaAno(anos)
    let sPop = somaPop(pops)
    let aXp = anoXPop(anos, pops)
    let ano2 = anoQuadrado(anos)
    let medAno = mediaAno(anos)
    let medPop = mediaPop(pops)
    let slp = sloap(sAno, sPop, aXp, ano2)
    let tcp = intercept(medAno, medPop, slp).toFixed(2)
    impressao(slp, tcp)
}

let D1 = new Data(1980, 2.1)
let D2 = new Data(1985, 2.9)
let D3 = new Data(1990, 3.2)
let D4 = new Data(1995, 4.1)
let D5 = new Data(2000, 4.9)

let dados = [D1, D2, D3, D4, D5]
let anos = [D1.ano, D2.ano, D3.ano, D4.ano, D5.ano]
let pops = [D1.pop, D2.pop, D3.pop, D4.pop, D5.pop]

start()
equacao(2019)
equacao(2050)
equacao(3000)
equacao(2100)