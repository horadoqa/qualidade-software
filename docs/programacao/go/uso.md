# GO

Go é uma linguagem de programação rápida e estaticamente tipada. Os tipos são declarados em tempo de compilação, e você não precisa executar o código para detectar erros. Ela também é uma linguagem de propósito geral que pode ser usada para backend, cloud, servidores e muito mais.

Go possui suporte embutido para testes, então você não precisa instalar bibliotecas extras para isso. A linguagem também possui algumas características de linguagens orientadas a objetos, mas à sua própria maneira. Ela reflete alguns conceitos de OOP, mas também utiliza conceitos como interfaces, structs e outros.

Neste tutorial, veremos alguns conceitos básicos que você precisa conhecer ao começar em qualquer linguagem de programação. Alguns deles são genéricos para muitas linguagens, enquanto outros são específicos da linguagem Go. Vamos abordar:

* Variáveis
* Formatação de strings
* Arrays e slices
* Loops
* Funções
* Maps
* Structs
* Escopo de pacote

Ao final deste artigo, você terá uma boa base dos fundamentos do Go, e executaremos alguns exemplos para ver como tudo funciona na linha de comando.

# Tutorial de Go para Iniciantes

## Índice

- [Pré-requisitos](#pré-requisitos)
- [Como instalar o Go](#como-instalar-o-go)
- [Primeiro programa em Go](#como-escrever-seu-primeiro-programa-em-go)
- [Variáveis e números](#como-trabalhar-com-variáveis-e-números-em-go)
- [Strings](#como-formatar-strings-em-go)
- [Arrays e slices](#como-trabalhar-com-arrays-e-slices-em-go)
- [Loops](#como-trabalhar-com-loops-em-go)
- [Funções](#como-trabalhar-com-funções-em-go)
- [Maps](#como-trabalhar-com-maps-em-go)
- [Structs](#como-trabalhar-com-structs-em-go)
- [Escopo de pacote](#escopo-de-pacote-em-go)
- [Conclusão](#conclusão)

---

# Pré-requisitos

Para acompanhar este tutorial, é útil conhecer o básico de qualquer linguagem de programação, como variáveis, tipos de dados e estruturas de dados. Vou assumir que você já trabalhou com pelo menos uma linguagem antes.

---

# Como instalar o Go

Para instalar o Go, acesse o site oficial do Go. Dependendo do sistema operacional que você estiver usando, a documentação oferece diferentes opções de instalação.

No meu caso, estou usando WSL (Windows Subsystem for Linux) com Ubuntu, então vou instalar o Go nesse ambiente.

Primeiro, atualize sua lista de pacotes:

```bash
sudo apt update
sudo apt upgrade -y
```

Depois, instale uma ferramenta para baixar arquivos da internet. Usaremos o `wget`:

```bash
sudo apt install -y wget
```

Agora baixe o pacote binário do Go:

```bash
wget https://dl.google.com/go/go1.24.2.linux-amd64.tar.gz
```

Extraia o arquivo para `/usr/local`:

```bash
sudo tar -C /usr/local -xzf go1.24.2.linux-amd64.tar.gz
```

Após instalar o Go, adicione o diretório binário do Go ao seu PATH para que o comando `go` fique disponível no terminal:

```bash
export PATH=$PATH:/usr/local/go/bin
```

Você pode tornar essa alteração permanente adicionando a linha acima ao seu `~/.bashrc` ou `~/.profile`.

Para confirmar que o Go foi instalado corretamente, execute:

```bash
go version
```

Você deverá ver a versão instalada do Go impressa no terminal.

Se usar VS Code, também pode instalar a extensão do Go para realce de sintaxe.

---

# Como escrever seu primeiro programa em Go

Antes de escrever nosso primeiro programa, precisamos entender como o Go organiza seu código. Em Go, todo arquivo ou código faz parte de um pacote.

Neste exemplo, criaremos um arquivo chamado `main.go`. O nome não é especial para o Go, mas é uma convenção comum para o arquivo que contém o ponto de entrada do programa.

```go
package main

import "fmt"

func main() {
	fmt.Println("Hello, ninjas")
}
```

Este é o arquivo mais importante do nosso projeto. Começamos tornando o código parte de um pacote chamado `main`.

O import `fmt` é um pacote da biblioteca padrão do Go. `fmt` serve para formatação de strings e saída no console. Note que a função `Println` começa com letra maiúscula porque, dentro do pacote `fmt`, ela é exportada. Variáveis ou métodos exportados em Go devem começar com letras maiúsculas.

A função `main` serve como ponto de entrada de um programa Go. Um programa Go compilado deve conter exatamente uma função `main` dentro de um pacote `main`.

Quando você executa um programa Go, o toolchain compila todos os arquivos do mesmo pacote juntos e então inicia a execução a partir da função `main()`.

Diferentemente de outros pacotes personalizados, usados para organizar lógica reutilizável, o pacote `main` serve para indicar que o programa é um executável independente.

Para executar o código:

```bash
go run main.go
```

Saída:

```bash
Hello, ninjas
```

---

# Como trabalhar com variáveis e números em Go

## Como declarar variáveis

Uma variável é apenas um armazenamento para dados. O Go não permite variáveis locais não utilizadas.

Vamos declarar uma string:

```go
package main

import "fmt"

func main() {

	// strings
	var nameOne string = "emy"

	fmt.Println(nameOne)
}
```

Como Go é estaticamente tipado, toda variável deve possuir um tipo em tempo de compilação.

Também podemos deixar o Go inferir o tipo:

```go
var nameOne string = "emy"
var nameTwo = "blessing"
var nameThree string
```

A variável `nameTwo` teve o tipo inferido automaticamente. Já `nameThree` foi apenas declarada, sem valor atribuído.

Existe uma forma ainda mais curta:

```go
nameFour := "peaches"
```

Aqui o Go também infere o tipo automaticamente.

---

## Como declarar inteiros

```go
var ageOne int = 20
var ageTwo = 30
ageThree := 40

fmt.Println(ageOne, ageTwo, ageThree)
```

Podemos especificar tamanhos de bits:

```go
var numOne int8 = 25
var numTwo int8 = -128

var numThree int8 = 129 // gera erro
```

O tipo `uint` representa inteiros sem sinal, ou seja, apenas positivos.

Para números decimais usamos `float32` e `float64`.

---

# Como formatar strings em Go

## Imprimindo strings no console

```go
fmt.Print("Hello, ")
fmt.Print("world!")
```

Saída:

```bash
Hello, world!
```

Para quebrar linha:

```go
fmt.Print("hello! \n")
fmt.Print("new line \n")
```

Mas o mais comum é usar `Println`:

```go
fmt.Println("Hello, friends.")
fmt.Println("How are you?")
```

---

## Especificadores de formato

```go
name := "Emy"
age := 27

fmt.Printf("my age is %v and my name is %v", age, name)
```

`%v` representa um valor genérico.

Também existe `%q`:

```go
fmt.Printf("my name is %q", name)
```

Saída:

```bash
my name is "Emy"
```

E `%T` para mostrar o tipo:

```go
fmt.Printf("This is a variable of type %T", age)
```

Saída:

```bash
This is a variable of type int
```

---

# Como trabalhar com arrays e slices em Go

## Arrays

```go
var ages = [3]int{20, 25, 30}
```

Arrays possuem tamanho fixo.

```go
fmt.Println(ages, len(ages))
```

Saída:

```bash
[20 25 30] 3
```

---

## Slices

Slices possuem tamanho dinâmico:

```go
var scores = []int{100, 50, 60}

scores[2] = 25
scores = append(scores, 50)

fmt.Println(scores, len(scores))
```

Saída:

```bash
[100 50 25 50] 4
```

Podemos acessar intervalos:

```go
rangeOne := scores[0:3]
```

---

# Como trabalhar com loops em Go

## Loops básicos

```go
x := 0
for x < 5 {
	fmt.Println("the value of x is", x)
	x++
}
```

Loop com iterador:

```go
for i := 0; i < 5; i++ {
	fmt.Println("value of i is", i)
}
```

---

## Palavra-chave `range`

```go
for index, value := range names {
	fmt.Printf("the position of %v is %v \n", value, index)
}
```

Ignorando valores com `_`:

```go
for _, value := range names {
	fmt.Printf("the value is %v \n", value)
}
```

---

# Como trabalhar com funções em Go

```go
func sayGreeting(n string){
	fmt.Printf("Good morning")
}
```

Chamando:

```go
sayGreeting("emy")
```

Funções podem receber funções como parâmetro:

```go
func cycleNames(n []string, f func(string)) {
	for _, value := range n {
		f(value)
	}
}
```

---

## Funções com retorno

```go
func sayHello(name string) string {
	fmt.Printf("Hello %v", name)
	return name
}
```

Também podem retornar múltiplos valores:

```go
func sayHello(name string, age int) (string, int) {
	fmt.Printf("Hello %v, you are %v years old", name, age)
	return name, age
}
```

---

# Como trabalhar com maps em Go

Maps são coleções de pares chave-valor:

```go
scores := map[string]float64{
	"maths": 20,
	"english": 15,
}
```

Acessando valores:

```go
fmt.Println(scores["maths"])
```

Percorrendo maps:

```go
for key, value := range scores {
	fmt.Println(key, "-", value)
}
```

Maps são tipos de referência.

---

# Como trabalhar com structs em Go

Structs permitem armazenar múltiplos tipos de dados:

```go
type Book struct {
	ID     uint
	Title  string
	Author string
	Year   int
	UserID uint
}
```

Criando uma struct:

```go
book1 := Book{1, "Jane Eyre", "Jane Austen", 1990, 6}
```

Alterando propriedades:

```go
book1.Title = "Things Fall Apart"
book1.Author = "Chinua Achebe"
```

Structs lembram classes de OOP, mas suportam composição em vez de herança.

---

# Escopo de pacote em Go

## Importando funções do mesmo pacote

Arquivo `greetings.go`:

```go
package main

import "fmt"

var points = []int{20, 90, 100}

func sayHello(n string) {
	fmt.Println("Hello", n)
}
```

Arquivo `main.go`:

```go
func main() {
	sayHello("emy")
}
```

Executando:

```bash
go run main.go greetings.go
```

---

## Importando funções entre pacotes

```go
package greetings
```

No `main.go`:

```go
import "greetings"
```

Uso:

```go
greetings.SayHello("emy")
```

---

# Conclusão

Neste tutorial, você aprendeu conceitos importantes do Go. Agora você está familiarizado com:

* Variáveis
* Strings
* Arrays e slices
* Loops
* Funções
* Maps
* Structs
* Escopo de pacote

A partir daqui, o ideal é começar a construir algo maior para entender o verdadeiro poder do Golang.

---