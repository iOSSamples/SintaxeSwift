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

//Inicialização
var estados: [String: String] = ["BA": "Bahia","SP": "São Paulo", "RJ": "Rio de Janeiro"]
var estados2 = ["BA": "Bahia","SP": "São Paulo", "RJ": "Rio de Janeiro"]

//Dicionários vazios
var dicVazio = [:]
var dicVazioTipado: [Int: String] = [:]

//verifica se um dicionário está vazio
if estados.isEmpty {
    println("Dicionário de estados esta vazio.")
} else {
    println("Dicionário de estados NAO esta vazio.")
}

//Trabalhando com itens

//Verificando se uma chave está presente para utilizá-la
if let estado = estados["RJ"] {
    println("O nome do estado eh \(estado).")
} else {
    println("Este estado nao esta no dicionário.")
}

//Quantidade de itens em um dicionário
println("O dicionario contem \(estados.count) items.")

//Inserindo/atualizando um item
estados["MG"] = "Minas Gerais"
estados.updateValue("S. Paulo", forKey: "SP")
println(estados["SP"])

//Remoção de item
estados["RJ"] = nil
estados.removeValueForKey("BA")

//Iteração
for (siglaEstado, nomeEstado) in estados {
    println("\(siglaEstado): \(nomeEstado)")
}

//Iteração somente nas chaves
for siglaEstado in estados.keys {
    println("Sigla do estado: \(siglaEstado)")
}

//Iteração somente nos valores
for nomeEstado in estados.values {
    println("Nome do estado: \(nomeEstado)")
}

/**********************************************
Loopings - While
**********************************************/

var count = 1

//while
while count <= 15 {
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
    Loopings - FOR
**********************************************/

//FOR
for var index = 0; index < 3; ++index {
    println("index é \(index)")
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
let pessoas = ["Joao": 25, "Maria": 18, "Fernanda": 34]
for (nomePessoa, idade) in pessoas {
    println("\(nomePessoa) tem \(idade) anos")
}

/**********************************************
    Enumeradores
**********************************************/
enum Bussola {
    case Norte
    case Sul
    case Leste
    case Oeste
}

var direcao = Bussola.Norte
direcao = .Sul

/**********************************************
    Funções
**********************************************/

//Funções sem parâmetro e retorno
func fazAlgo() {
    return
}

fazAlgo()

//Funções com retorno
func fazAlgoComRetorno() -> Int {
    return 0
}

let x1 = fazAlgoComRetorno()

//Funções com parâmetro
func fazAlgoComParametro(a:Int) -> Int {
    return a
}

let x2 = fazAlgoComParametro(2)

//Funções com mais de um parâmetro
func soma(a:Int, b:Int) -> Int {
    return a+b
}

soma(1,5)

//Funções com mais de um retorno
func fazAlgoComVariosRetornos(a:Int) -> (x:Int, y:Int) {
    return (0,1)
}

let coordenada = fazAlgoComVariosRetornos(0)
println("\(coordenada.x) e \(coordenada.y)")

//Funções com nome de parâmetro externo

//tem o objetivo de deixar claro o propósito dos parâmetros
func idadePessoa(nome a:String, idade b:Int) -> String {
    return "\(a) tem \(b) anos"
}

let pessoa = idadePessoa(nome: "Joao", idade: 20)
println(pessoa)

/**********************************************
    Classes e objetos
**********************************************/

class Veiculo {
    
    //propriedade
    var velocidadeAtual : Int

    //inicializador
    init(){
        velocidadeAtual = 0
    }
    
    //métodos de classe (estáticos)
    class func alerta() ->  String {
        return "Se beber não dirija"
    }
    
    //métodos de instância
    func descricao() -> String{
        return "Veículo"
    }
}

//Instância
var minhaMoto = Veiculo()
minhaMoto.velocidadeAtual = 100

//Invocando métodos
println(Veiculo.alerta())
println(minhaMoto.descricao())

//Criando subclasses e sobrescrevendo métodos
class Carro: Veiculo {
    
    var marchas = 0
    var modelo = ""
    
    override func descricao() -> String {
        return super.descricao() + " com \(marchas) marchas"
    }
}

let meuCarro = Carro()
meuCarro.marchas = 5
meuCarro.modelo = "Fit"
println(meuCarro.descricao())

//Verificando se um objeto pertence a uma classe

var veiculos = [meuCarro, minhaMoto]
for item in veiculos {
    if item is Carro {
        println("é um carro")
    }
    else{
        println("é outro veículo")
    }
}

//Downcasting
veiculos = [meuCarro, minhaMoto]
for item in veiculos {
    if let carro = item as? Carro {
          println("É um \(carro.modelo)")
    }
}

//Classes implementando protocolo
class NomeClasse : UITableView, UITextFieldDelegate { }

/**********************************************
    Controle de acesso: public, internal e private
**********************************************/

//public
public class UmaClassePublica {}
public var variavelPublica = 0
public func metodoPublico() {}

//internal
internal class UmaClasseInterna {}
internal let variavelInterna = 0
internal func metodoInterno() {}

//private
private class UmaClassePrivada {}
private var variavelPrivada = 0
private func metodoPrivado() {}

/**********************************************
    Gerenciamento de memória
**********************************************/

//Contagem de referência
class Person {
    let name: String
    var apartment: Apartment?
    var card: CreditCard?

    init(name: String) {
        self.name = name
    }
}

class Apartment {
    let number: Int = 0
    weak var tenant: Person? //relacionamento fraco, evita referências cíclicas
}

class CreditCard {
    let number: Int
    unowned let customer: Person //relacionamento unowned, os dois objetos devem ter o mesmo período de vida

    init(number: Int, customer: Person) {
        self.number = number
        self.customer = customer
    }
}

//Contagem de referência
var reference1: Person?
reference1 = Person(name: "John Appleseed")

var reference2: Person?
reference2 = reference1

reference1 = nil //enquanto existir uma referência, o objeto nao é desalocado
reference2 = nil //agora o objeto pode ser desalocado






