// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**********************************************
    Capitulo 3 - Fundamentos do Swift
**********************************************/

/**********************************************
    Variáveis
**********************************************/

var strExplicita:String = "String com tipo explícito"

var strInferida = "String com tipo inferido"

var x = 1, y = 2, z = 3 //multiplas declaracoes

var a, b, c:Double  //multiplas declaracoes com tipo

x=5 //troca de valor


/**********************************************
    Constantes
**********************************************/

let strConstante = "String constante"

//strConstante = "vai dar erro de compilacao"

/**********************************************
    Opcionais
**********************************************/

var strOpcional:String? = nil
var intOpcional:Int?
intOpcional = 2

var outroInt = 2 + intOpcional! //"abre" o opcional

//testa se o opcional tem um valor, atribuindo para valorRecuperado
if let valorRecuperado = intOpcional {
    println("o valor eh: \(valorRecuperado)")
}
else
{
    println("optional nao contem valor")
}

//testa se o opcional eh diferente de nil
if intOpcional != nil {
    println("optional contem algum valor")
}

//opcional com abertura implicita
var optAberturaImplicita:Int! = 1
outroInt = 1 + optAberturaImplicita

/**********************************************
    Tipos principais
**********************************************/

var algumInt:Int = -1
var algumIntPositivo:UInt = 1 //unsigned int

var algumFloat:Float = 1.0
var algumDouble:Double = 2.0

var boolVerdadeiro:Bool = true
var boolFalso:Bool = false

var algumCharacter:Character = "a"
var algumaString:String = "Uma String"

var qualquerTipo:AnyObject //AnyObject representa qualquer tipo
qualquerTipo = "pode ser string"
qualquerTipo = 1 //pode ser inteiro

/**********************************************
    Printing e comentarios
**********************************************/

println("print qualquer")
println(x) //print do valor de X
println("print do valor de x: \(x)")

//esse eh um comentario

/* esse eh um comentario com 
multiplas linhas */

/**********************************************
    Strings e caracteres
**********************************************/

//Strings vazias
var strVazia = ""
var outraStrVazia = String()

if strVazia.isEmpty {
    println("A string esta vazia")
}

//Concatenacao
let nome = "Steve"
let sobrenome = "Jobs"
var nomeCompleto = nome + sobrenome

var irmaos = "Joao"
irmaos += " e Maria" //variavel agora eh "Joao e Maria"

//Character
let pontoExclamacao:Character = "!"

//Concatenacao string e character
irmaos.append(pontoExclamacao) //variavel agora eh "Joao e Maria!"

//Interpolacao
let numeroA = 3
let mensagem = "\(numeroA) multiplicado por 2 eh \(numeroA * 2)"

//Contagem de caracteres
let numeros = "123456789"
let totalCaracteres = countElements(numeros)
println("total de caracteres eh = \(totalCaracteres)")

//Comparacao de strings
var frase = "uma frase"
let mesmaFrase = "uma frase"
if frase == mesmaFrase {
    println("as strings sao iguais")
}

//Prefixo e sufixo
frase = "teste prefixo e sufixo"

if frase.hasPrefix("tes"){
    println("essa frase comeca com 'tes'")
}

if frase.hasSuffix("xo"){
    println("essa frase termina com 'xo'")
}


/**********************************************
    Conversões entre tipos
**********************************************/

//Inteiro para decimal
let tres = 3
let pi = Double(tres) + 0.14159

//Decimal para inteiro
let parteInteira = Int(2.5)

//Numericos para String usando interpolacao
let strNumeroPi = "\(pi)"

//String para inteiro
let possivelInt = "123"
let convertidoInt = possivelInt.toInt()

//Casting entre classes
let string:NSString = String("abc") as NSString

//String para Decimais
let meio = "0.5"
let paraFloat = (meio as NSString).floatValue
let paraDouble = (meio as NSString).doubleValue

/**********************************************
    Condicionais - IF-ELSE
**********************************************/

//IF - ELSE
var semaforo = "vermelho"
if semaforo == "vermelho" {
    println("Pare!")
}

//IF - ELSE IF - ELSE
semaforo = "verde"
if semaforo == "vermelho" {
    println("Pare!")
} else if semaforo == "amarelo" {
    println("Atenção")
} else {
    println("Prossiga")
}

/**********************************************
    Condicionais - Switch-Case
**********************************************/

//Switch-Case com strings
semaforo = "amarelo"
switch semaforo {
case "vermelho", "amarelo":
    println("melhor parar!")
case "verde":
    println("prossiga")
default:
    println("o semaforo pode estar quebrado")
}

//Switch-Case com numeros
let n = 2
switch n {
case 1:
    println("numero eh 1")
case 2...4: //testando um range
    println("numero esta entre 2 e 4")
case 5, 6: //testando mais de um caso
    println("numero eh 5 or 6")
default:
    println("eh algum outro numero")
}

/**********************************************
    Arrays
**********************************************/

//Inicializacao
var listaCompras: [String] = ["Ovos", "Leite"]
var listaTipoInferido = ["Ovos", "Leite"]

//Arrays vazios
var arrayVazio = []
var arrayTipadoVazio: [Int] = []

//Testa se o array esta vazio
if listaCompras.isEmpty {
    println("A lista de compras esta vazia.")
} else {
    println("A lista de compras NAO esta vazia.")
}

//Trabalhando com Itens
var primeiroItem = listaCompras[0]
println("A lista tem \(listaCompras.count) items.")

//Adição de itens ao fim do array
listaCompras.append("Laranja")
listaCompras += ["Cerveja"]
listaCompras += ["Chocolate", "Queijo", "Manteiga"]

//Adição de itens através de índices e ranges
listaCompras[0] = "Seis Ovos"
listaCompras[4...6] = ["Bananas", "Pera"]
listaCompras.insert("Abacaxi", atIndex: 0)

//Remoção de itens
let abacaxi = listaCompras.removeAtIndex(0) //remove abacaxi
let pera = listaCompras.removeLast() //remove pera

//Iteração
for item in listaCompras {
    println(item)
}



/**********************************************
    Dicionarios
**********************************************/

//Dicionários são coleções de item pares chave-valor
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
var airports2 = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

//Dicionários vazios
var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
// namesOfIntegers now contains 1 key-value pair
namesOfIntegers = [:]
// namesOfIntegers is once again an empty dictionary of type [Int: String]

if airports.isEmpty {
    println("The airports dictionary is empty.")
} else {
    println("The airports dictionary is not empty.")
}

//Quantidade de itens
println("The airports dictionary contains \(airports.count) items.")

//Inserindo itens
airports["LHR"] = "London"


//atualizando um valor

airports["LHR"] = "London Heathrow"
airports.updateValue("Dublin Airport", forKey: "DUB")

//verificando se uma chave esta presente
if let airportName = airports["DUB"] {
    println("The name of the airport is \(airportName).")
} else {
    println("That airport is not in the airports dictionary.")
}

//remoção de item
airports["APL"] = "Apple International"
airports["APL"] = nil
airports.removeValueForKey("DUB")


//iteração
for (airportCode, airportName) in airports {
    println("\(airportCode): \(airportName)")
}

//iteração somente nas chaves
for airportCode in airports.keys {
    println("Airport code: \(airportCode)")
}

//iteração somente nos valores
for airportName in airports.values {
    println("Airport name: \(airportName)")
}

/**********************************************
    Loopings - FOR
**********************************************/

//FOR
for var index = 0; index < 3; ++index {
    println("index is \(index)")
}

//FOR-IN com range
for index in 1...5 {
    println("\(index) multiplicado por 5 eh \(index * 5)")
}

//FOR-IN strings
for character in "Hello" {
    println(character)
}

//FOR-IN Array
let nomes = ["Ana", "Alex", "Bruno", "José"]
for nome in nomes {
    println("Olá, \(nome)!")
}

//FOR-IN Dicionarios
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    println("\(animalName)s have \(legCount) legs")
}

/**********************************************
    Loopings - While
**********************************************/

var count = 1

//while
while count < 3 {
    println("count is \(count)")
    count++
}

//do-while
count = 1
do {
    println("count is \(count)")
    count++
} while count < 3

/**********************************************
    Loopings - Dicionarios
**********************************************/

