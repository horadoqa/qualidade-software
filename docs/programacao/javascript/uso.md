# JAVASCRIPT

JavaScript é uma linguagem de programação interpretada, dinâmica e multiparadigma. Ela é a principal linguagem da web e pode ser usada tanto no frontend quanto no backend.

JavaScript é utilizado para:

* websites
* interfaces web
* APIs
* backend
* aplicações mobile
* desktop
* automação
* jogos
* aplicações em tempo real

Com o ambiente Node.js, JavaScript também pode rodar fora do navegador.

Neste tutorial, veremos conceitos fundamentais do JavaScript:

* Variáveis
* Strings
* Arrays
* Loops
* Funções
* Objetos
* Classes
* Módulos

Ao final, você terá uma boa base da linguagem JavaScript.

---

# Tutorial de JavaScript para Iniciantes

## Índice

* [Pré-requisitos](#pré-requisitos)
* [Como instalar o JavaScript](#como-instalar-o-javascript)
* [Primeiro programa em JavaScript](#como-escrever-seu-primeiro-programa-em-javascript)
* [Variáveis e números](#como-trabalhar-com-variáveis-e-números-em-javascript)
* [Strings](#como-formatar-strings-em-javascript)
* [Arrays](#como-trabalhar-com-arrays-em-javascript)
* [Loops](#como-trabalhar-com-loops-em-javascript)
* [Funções](#como-trabalhar-com-funções-em-javascript)
* [Objetos](#como-trabalhar-com-objetos-em-javascript)
* [Classes](#como-trabalhar-com-classes-em-javascript)
* [Módulos](#como-trabalhar-com-módulos-em-javascript)
* [Conclusão](#conclusão)

---

# Pré-requisitos

Para acompanhar este tutorial, é recomendado conhecer lógica básica de programação.

---

# Como instalar o JavaScript

JavaScript já vem embutido nos navegadores modernos.

Para executar JavaScript fora do navegador, instalaremos o Node.js.

Download oficial:

[Node.js Official Website](https://nodejs.org?utm_source=chatgpt.com)

No Ubuntu/Linux:

```bash id="wz5v0z"
sudo apt update
sudo apt install nodejs npm -y
```

Verificando instalação:

```bash id="x7h9x9"
node -v
npm -v
```

---

# Como escrever seu primeiro programa em JavaScript

Crie um arquivo chamado `main.js`.

```javascript id="d3v2m8"
console.log("Hello, ninjas")
```

Executando:

```bash id="f8b2cl"
node main.js
```

Saída:

```bash id="8x1jrf"
Hello, ninjas
```

---

# Como trabalhar com variáveis e números em JavaScript

## Declarando variáveis

JavaScript possui três formas principais de declarar variáveis:

* `let`
* `const`
* `var`

Hoje em dia, usamos principalmente `let` e `const`.

```javascript id="7o7ww6"
let nameOne = "emy"

console.log(nameOne)
```

Constantes:

```javascript id="t4xv8v"
const country = "Brazil"
```

---

## Números

```javascript id="sx0y5r"
let ageOne = 20
let ageTwo = 30

console.log(ageOne, ageTwo)
```

Números decimais:

```javascript id="3r7ikv"
let price = 19.99
```

JavaScript usa o tipo `number` para inteiros e floats.

---

# Como formatar strings em JavaScript

## Strings simples

```javascript id="0z0x5n"
console.log("Hello, world!")
```

Quebra de linha:

```javascript id="ij58dz"
console.log("hello!\nnew line")
```

---

## Template literals

A forma moderna de formatar strings em JavaScript:

```javascript id="dz8r9i"
let name = "Emy"
let age = 27

console.log(`My age is ${age} and my name is ${name}`)
```

---

## Tipo de variável

```javascript id="u9e84x"
console.log(typeof age)
```

Saída:

```bash id="z5u6k6"
number
```

---

# Como trabalhar com arrays em JavaScript

## Arrays

```javascript id="1r5f8h"
let ages = [20, 25, 30]

console.log(ages)
console.log(ages.length)
```

---

## Modificando arrays

```javascript id="3v3n9h"
let scores = [100, 50, 60]

scores[2] = 25
scores.push(50)

console.log(scores)
```

Saída:

```bash id="l2j9hf"
[100, 50, 25, 50]
```

---

## Slice

```javascript id="q4d5v0"
let rangeOne = scores.slice(0, 3)
```

---

# Como trabalhar com loops em JavaScript

## Loop while

```javascript id="m7o2v3"
let x = 0

while (x < 5) {
    console.log("the value of x is", x)
    x++
}
```

---

## Loop for

```javascript id="6n5u2v"
for (let i = 0; i < 5; i++) {
    console.log("value of i is", i)
}
```

---

## Iterando arrays

```javascript id="s5g7l2"
let names = ["emy", "ble", "winkii"]

for (let name of names) {
    console.log(name)
}
```

---

## forEach

```javascript id="7d4r2g"
names.forEach((value, index) => {
    console.log(`the position of ${value} is ${index}`)
})
```

---

# Como trabalhar com funções em JavaScript

## Criando funções

```javascript id="4x5k8j"
function sayGreeting(name) {
    console.log("Good morning", name)
}
```

Chamando:

```javascript id="f0l8e3"
sayGreeting("emy")
```

---

## Funções como parâmetro

```javascript id="2f9u7n"
function cycleNames(names, func) {
    for (let value of names) {
        func(value)
    }
}
```

Uso:

```javascript id="9m3x7h"
cycleNames(["emy", "pearl"], sayGreeting)
```

---

## Funções com retorno

```javascript id="j3s8p5"
function sayHello(name) {
    console.log(`Hello ${name}`)
    return name
}
```

---

## Arrow functions

```javascript id="e7n2v5"
const add = (a, b) => {
    return a + b
}
```

---

# Como trabalhar com objetos em JavaScript

Objetos são equivalentes aos maps/structs básicos.

```javascript id="2m6j5d"
let scores = {
    maths: 20,
    english: 15
}
```

Acessando valores:

```javascript id="2f8x5t"
console.log(scores.maths)
```

Percorrendo:

```javascript id="l6j5s2"
for (let key in scores) {
    console.log(key, "-", scores[key])
}
```

---

# Como trabalhar com classes em JavaScript

JavaScript suporta orientação a objetos.

```javascript id="8w5r4u"
class Book {
    constructor(id, title, author, year, userId) {
        this.id = id
        this.title = title
        this.author = author
        this.year = year
        this.userId = userId
    }
}
```

Criando objeto:

```javascript id="j5x4s8"
let book1 = new Book(
    1,
    "Jane Eyre",
    "Jane Austen",
    1990,
    6
)
```

Alterando propriedades:

```javascript id="m4t8w2"
book1.title = "Things Fall Apart"
book1.author = "Chinua Achebe"
```

---

# Como trabalhar com módulos em JavaScript

Arquivo `greetings.js`:

```javascript id="v9s6t3"
export const points = [20, 90, 100]

export function sayHello(name) {
    console.log("Hello", name)
}
```

Arquivo `main.js`:

```javascript id="g6s2w9"
import { points, sayHello } from "./greetings.js"

sayHello("emy")

for (let v of points) {
    console.log(v)
}
```

Executando:

```bash id="5k4f7s"
node main.js
```

---

# Conclusão

Neste tutorial, você aprendeu conceitos fundamentais do JavaScript:

* Variáveis
* Strings
* Arrays
* Loops
* Funções
* Objetos
* Classes
* Módulos

JavaScript é hoje uma das linguagens mais utilizadas do mundo e domina o desenvolvimento web moderno.

Ele é usado em:

* frontend
* backend
* aplicações mobile
* APIs
* sistemas em tempo real
* automação
* desktop

Documentação oficial:

[MDN JavaScript Guide](https://developer.mozilla.org/en-US/docs/Web/JavaScript?utm_source=chatgpt.com)
