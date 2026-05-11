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

```bash 
sudo apt update
sudo apt install python3 -y
```

Verificando a instalação:

```bash 
python3 --version
```

Saída:

```bash 
Python 3.x.x
```

---

# Como escrever seu primeiro programa em Python

Crie um arquivo chamado `main.py`.

```python 
print("Hello, ninjas")
```

Executando:

```bash 
python3 main.py
```

Saída:

```bash 
Hello, ninjas
```

Python é interpretado, então não precisamos compilar manualmente o código.

---

# Como trabalhar com variáveis e números em Python

## Como declarar variáveis

Python é dinamicamente tipado, então não precisamos declarar tipos explicitamente.

```python 
name_one = "emy"

print(name_one)
```

Também podemos alterar tipos dinamicamente:

```python 
x = 10
x = "hello"
```

---

## Inteiros e floats

```python 
age_one = 20
age_two = 30
age_three = 40

print(age_one, age_two, age_three)
```

Números decimais:

```python 
price = 19.99
```

Python possui suporte automático para inteiros grandes.

---

# Como formatar strings em Python

## Imprimindo strings

```python 
print("Hello, world!")
```

Quebra de linha:

```python 
print("hello!\nnew line")
```

---

## f-strings

A forma moderna de formatar strings em Python é usando f-strings:

```python 
name = "Emy"
age = 27

print(f"My age is {age} and my name is {name}")
```

Saída:

```bash 
My age is 27 and my name is Emy
```

Mostrando tipos:

```python 
print(type(age))
```

Saída:

```bash 
<class 'int'>
```

---

# Como trabalhar com listas em Python

## Listas

Listas em Python são equivalentes aos slices do Go.

```python 
ages = [20, 25, 30]

print(ages)
print(len(ages))
```

Saída:

```bash 
[20, 25, 30]
3
```

---

## Alterando listas

```python 
scores = [100, 50, 60]

scores[2] = 25
scores.append(50)

print(scores)
```

Saída:

```bash 
[100, 50, 25, 50]
```

---

## Fatiamento (slicing)

```python 
range_one = scores[0:3]
```

Também funciona:

```python 
scores[2:]
scores[:3]
```

---

# Como trabalhar com loops em Python

## Loop while

```python 
x = 0

while x < 5:
    print("the value of x is", x)
    x += 1
```

---

## Loop for

```python 
for i in range(5):
    print("value of i is", i)
```

---

## Iterando listas

```python 
names = ["emy", "ble", "winkii"]

for name in names:
    print(name)
```

---

## enumerate()

```python 
for index, value in enumerate(names):
    print(f"the position of {value} is {index}")
```

---

# Como trabalhar com funções em Python

## Criando funções

```python 
def say_greeting(name):
    print("Good morning", name)
```

Chamando:

```python 
say_greeting("emy")
```

---

## Funções como parâmetro

```python 
def cycle_names(names, func):
    for value in names:
        func(value)
```

Uso:

```python 
cycle_names(["emy", "pearl"], say_greeting)
```

---

## Funções com retorno

```python 
def say_hello(name):
    print(f"Hello {name}")
    return name
```

---

## Múltiplos retornos

```python 
def say_hello(name, age):
    print(f"Hello {name}, you are {age} years old")
    return name, age
```

---

# Como trabalhar com dicionários em Python

Dicionários equivalem aos maps do Go.

```python 
scores = {
    "maths": 20,
    "english": 15,
}
```

Acessando valores:

```python 
print(scores["maths"])
```

Percorrendo:

```python 
for key, value in scores.items():
    print(key, "-", value)
```

---

# Como trabalhar com classes em Python

Classes substituem structs do Go e oferecem orientação a objetos completa.

```python 
class Book:
    def __init__(self, id, title, author, year, user_id):
        self.id = id
        self.title = title
        self.author = author
        self.year = year
        self.user_id = user_id
```

Criando objeto:

```python 
book1 = Book(1, "Jane Eyre", "Jane Austen", 1990, 6)
```

Alterando propriedades:

```python 
book1.title = "Things Fall Apart"
book1.author = "Chinua Achebe"
```

---

# Como trabalhar com módulos em Python

Arquivo `greetings.py`:

```python 
points = [20, 90, 100]

def say_hello(name):
    print("Hello", name)
```

Arquivo `main.py`:

```python 
import greetings

greetings.say_hello("emy")

for v in greetings.points:
    print(v)
```

Executando:

```bash 
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
