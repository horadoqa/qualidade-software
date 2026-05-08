# PYTHON

Python é uma linguagem de programação interpretada, de alto nível e multiparadigma. Ela é conhecida por sua sintaxe simples, legível e produtiva.

Python pode ser usado para:

* backend
* automação
* inteligência artificial
* ciência de dados
* web
* scripts
* APIs
* machine learning
* cloud
* segurança
* jogos

Python possui uma enorme biblioteca padrão e milhares de bibliotecas externas disponíveis através do `pip`.

Neste tutorial, veremos alguns conceitos básicos da linguagem Python:

* Variáveis
* Formatação de strings
* Listas
* Loops
* Funções
* Dicionários
* Classes
* Módulos

Ao final deste artigo, você terá uma boa base dos fundamentos do Python.

---

# Tutorial de Python para Iniciantes

## Índice

* [Pré-requisitos](#pré-requisitos)
* [Como instalar o Python](#como-instalar-o-python)
* [Primeiro programa em Python](#como-escrever-seu-primeiro-programa-em-python)
* [Variáveis e números](#como-trabalhar-com-variáveis-e-números-em-python)
* [Strings](#como-formatar-strings-em-python)
* [Listas](#como-trabalhar-com-listas-em-python)
* [Loops](#como-trabalhar-com-loops-em-python)
* [Funções](#como-trabalhar-com-funções-em-python)
* [Dicionários](#como-trabalhar-com-dicionários-em-python)
* [Classes](#como-trabalhar-com-classes-em-python)
* [Módulos](#como-trabalhar-com-módulos-em-python)
* [Conclusão](#conclusão)

---

# Pré-requisitos

Para acompanhar este tutorial, é útil conhecer o básico de lógica de programação e alguma linguagem de programação.

---

# Como instalar o Python

Você pode baixar o Python no site oficial:

[Python.org](https://www.python.org/downloads/?utm_source=chatgpt.com)

No Ubuntu/Linux:

```bash id="1j4dgc"
sudo apt update
sudo apt install python3 -y
```

Verificando a instalação:

```bash id="v2iv7r"
python3 --version
```

Saída:

```bash id="t47v6e"
Python 3.x.x
```

---

# Como escrever seu primeiro programa em Python

Crie um arquivo chamado `main.py`.

```python id="9o9z5v"
print("Hello, ninjas")
```

Executando:

```bash id="m01ydo"
python3 main.py
```

Saída:

```bash id="tqnmq5"
Hello, ninjas
```

Python é interpretado, então não precisamos compilar manualmente o código.

---

# Como trabalhar com variáveis e números em Python

## Como declarar variáveis

Python é dinamicamente tipado, então não precisamos declarar tipos explicitamente.

```python id="ypv2ya"
name_one = "emy"

print(name_one)
```

Também podemos alterar tipos dinamicamente:

```python id="9t1gws"
x = 10
x = "hello"
```

---

## Inteiros e floats

```python id="hbdj94"
age_one = 20
age_two = 30
age_three = 40

print(age_one, age_two, age_three)
```

Números decimais:

```python id="3e6rt4"
price = 19.99
```

Python possui suporte automático para inteiros grandes.

---

# Como formatar strings em Python

## Imprimindo strings

```python id="9o2oyd"
print("Hello, world!")
```

Quebra de linha:

```python id="6g6hfo"
print("hello!\nnew line")
```

---

## f-strings

A forma moderna de formatar strings em Python é usando f-strings:

```python id="i4szbe"
name = "Emy"
age = 27

print(f"My age is {age} and my name is {name}")
```

Saída:

```bash id="s0j1k8"
My age is 27 and my name is Emy
```

Mostrando tipos:

```python id="h5i5qa"
print(type(age))
```

Saída:

```bash id="aj9znh"
<class 'int'>
```

---

# Como trabalhar com listas em Python

## Listas

Listas em Python são equivalentes aos slices do Go.

```python id="0j0o7f"
ages = [20, 25, 30]

print(ages)
print(len(ages))
```

Saída:

```bash id="9oq8sd"
[20, 25, 30]
3
```

---

## Alterando listas

```python id="0w03pi"
scores = [100, 50, 60]

scores[2] = 25
scores.append(50)

print(scores)
```

Saída:

```bash id="fuv5l7"
[100, 50, 25, 50]
```

---

## Fatiamento (slicing)

```python id="2q77ul"
range_one = scores[0:3]
```

Também funciona:

```python id="z6x7hu"
scores[2:]
scores[:3]
```

---

# Como trabalhar com loops em Python

## Loop while

```python id="wmj66f"
x = 0

while x < 5:
    print("the value of x is", x)
    x += 1
```

---

## Loop for

```python id="wb6kbo"
for i in range(5):
    print("value of i is", i)
```

---

## Iterando listas

```python id="l8sl9t"
names = ["emy", "ble", "winkii"]

for name in names:
    print(name)
```

---

## enumerate()

```python id="y7q4ft"
for index, value in enumerate(names):
    print(f"the position of {value} is {index}")
```

---

# Como trabalhar com funções em Python

## Criando funções

```python id="34a2jf"
def say_greeting(name):
    print("Good morning", name)
```

Chamando:

```python id="0br4s2"
say_greeting("emy")
```

---

## Funções como parâmetro

```python id="t8jq2f"
def cycle_names(names, func):
    for value in names:
        func(value)
```

Uso:

```python id="hqv5hu"
cycle_names(["emy", "pearl"], say_greeting)
```

---

## Funções com retorno

```python id="g18a6d"
def say_hello(name):
    print(f"Hello {name}")
    return name
```

---

## Múltiplos retornos

```python id="5zq0qk"
def say_hello(name, age):
    print(f"Hello {name}, you are {age} years old")
    return name, age
```

---

# Como trabalhar com dicionários em Python

Dicionários equivalem aos maps do Go.

```python id="9rvzhm"
scores = {
    "maths": 20,
    "english": 15,
}
```

Acessando valores:

```python id="tz4h9u"
print(scores["maths"])
```

Percorrendo:

```python id="5ksffl"
for key, value in scores.items():
    print(key, "-", value)
```

---

# Como trabalhar com classes em Python

Classes substituem structs do Go e oferecem orientação a objetos completa.

```python id="5m4c8s"
class Book:
    def __init__(self, id, title, author, year, user_id):
        self.id = id
        self.title = title
        self.author = author
        self.year = year
        self.user_id = user_id
```

Criando objeto:

```python id="cz6wpa"
book1 = Book(1, "Jane Eyre", "Jane Austen", 1990, 6)
```

Alterando propriedades:

```python id="drm3nm"
book1.title = "Things Fall Apart"
book1.author = "Chinua Achebe"
```

---

# Como trabalhar com módulos em Python

Arquivo `greetings.py`:

```python id="1l3g35"
points = [20, 90, 100]

def say_hello(name):
    print("Hello", name)
```

Arquivo `main.py`:

```python id="4g6z12"
import greetings

greetings.say_hello("emy")

for v in greetings.points:
    print(v)
```

Executando:

```bash id="7m3h0l"
python3 main.py
```

---

# Conclusão

Neste tutorial, você aprendeu conceitos importantes do Python:

* Variáveis
* Strings
* Listas
* Loops
* Funções
* Dicionários
* Classes
* Módulos

Agora você já possui uma base sólida para começar a desenvolver aplicações com Python.

Python é uma das linguagens mais populares do mundo e muito usada em:

* IA
* automação
* web
* ciência de dados
* backend
* segurança
* machine learning
* scripting

Documentação oficial:

[Python Documentation](https://docs.python.org/3/?utm_source=chatgpt.com)
