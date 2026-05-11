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

```bash 
sudo apt update
sudo apt install nodejs npm -y
```

Verificando instalação:

```bash 
node -v
npm -v
```

---

# Como escrever seu primeiro programa em JavaScript

Crie um arquivo chamado `main.js`.

```javascript 
console.log("Hello, ninjas")
```

Executando:

```bash 
node main.js
```

Saída:

```bash 
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

```javascript 
let nameOne = "emy"

console.log(nameOne)
```

Constantes:

```javascript 
const country = "Brazil"
```

---

## Números

```javascript 
let ageOne = 20
let ageTwo = 30

console.log(ageOne, ageTwo)
```

Números decimais:

```javascript 
let price = 19.99
```

JavaScript usa o tipo `number` para inteiros e floats.

---

# Como formatar strings em JavaScript

## Strings simples

```javascript 
console.log("Hello, world!")
```

Quebra de linha:

```javascript 
console.log("hello!\nnew line")
```

---

## Template literals

A forma moderna de formatar strings em JavaScript:

```javascript 
let name = "Emy"
let age = 27

console.log(`My age is ${age} and my name is ${name}`)
```

---

## Tipo de variável

```javascript 
console.log(typeof age)
```

Saída:

```bash 
number
```

---

# Como trabalhar com arrays em JavaScript

## Arrays

```javascript 
let ages = [20, 25, 30]

console.log(ages)
console.log(ages.length)
```

---

## Modificando arrays

```javascript 
let scores = [100, 50, 60]

scores[2] = 25
scores.push(50)

console.log(scores)
```

Saída:

```bash 
[100, 50, 25, 50]
```

---

## Slice

```javascript 
let rangeOne = scores.slice(0, 3)
```

---

# Como trabalhar com loops em JavaScript

## Loop while

```javascript 
let x = 0

while (x < 5) {
    console.log("the value of x is", x)
    x++
}
```

---

## Loop for

```javascript 
for (let i = 0; i < 5; i++) {
    console.log("value of i is", i)
}
```

---

## Iterando arrays

```javascript 
let names = ["emy", "ble", "winkii"]

for (let name of names) {
    console.log(name)
}
```

---

## forEach

```javascript 
names.forEach((value, index) => {
    console.log(`the position of ${value} is ${index}`)
})
```

---

# Como trabalhar com funções em JavaScript

## Criando funções

```javascript 
function sayGreeting(name) {
    console.log("Good morning", name)
}
```

Chamando:

```javascript 
sayGreeting("emy")
```

---

## Funções como parâmetro

```javascript 
function cycleNames(names, func) {
    for (let value of names) {
        func(value)
    }
}
```

Uso:

```javascript 
cycleNames(["emy", "pearl"], sayGreeting)
```

---

## Funções com retorno

```javascript 
function sayHello(name) {
    console.log(`Hello ${name}`)
    return name
}
```

---

## Arrow functions

```javascript 
const add = (a, b) => {
    return a + b
}
```

---

# Como trabalhar com objetos em JavaScript

Objetos são equivalentes aos maps/structs básicos.

```javascript 
let scores = {
    maths: 20,
    english: 15
}
```

Acessando valores:

```javascript 
console.log(scores.maths)
```

Percorrendo:

```javascript 
for (let key in scores) {
    console.log(key, "-", scores[key])
}
```

---

# Como trabalhar com classes em JavaScript

JavaScript suporta orientação a objetos.

```javascript 
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

```javascript 
let book1 = new Book(
    1,
    "Jane Eyre",
    "Jane Austen",
    1990,
    6
)
```

Alterando propriedades:

```javascript 
book1.title = "Things Fall Apart"
book1.author = "Chinua Achebe"
```

---

# Como trabalhar com módulos em JavaScript

Arquivo `greetings.js`:

```javascript 
export const points = [20, 90, 100]

export function sayHello(name) {
    console.log("Hello", name)
}
```

Arquivo `main.js`:

```javascript 
import { points, sayHello } from "./greetings.js"

sayHello("emy")

for (let v of points) {
    console.log(v)
}
```

Executando:

```bash 
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
