# JAVA

Java é uma linguagem de programação orientada a objetos, fortemente tipada e multiplataforma.

Ela foi criada com a filosofia:

> “Write Once, Run Anywhere”
> (Escreva uma vez, execute em qualquer lugar)

Java é amplamente utilizado em:

* backend
* sistemas corporativos
* aplicações bancárias
* Android
* APIs
* cloud
* Big Data
* microsserviços

O código Java é compilado para bytecode e executado na Java Virtual Machine (JVM).

Neste tutorial veremos:

* Variáveis
* Strings
* Arrays
* Loops
* Métodos
* HashMaps
* Classes
* Pacotes

Ao final, você terá uma base sólida de Java.

---

# Tutorial de Java para Iniciantes

## Índice

* [Pré-requisitos](#pré-requisitos)
* [Como instalar o Java](#como-instalar-o-java)
* [Primeiro programa em Java](#como-escrever-seu-primeiro-programa-em-java)
* [Variáveis e números](#como-trabalhar-com-variáveis-e-números-em-java)
* [Strings](#como-formatar-strings-em-java)
* [Arrays](#como-trabalhar-com-arrays-em-java)
* [Loops](#como-trabalhar-com-loops-em-java)
* [Métodos](#como-trabalhar-com-métodos-em-java)
* [HashMaps](#como-trabalhar-com-hashmaps-em-java)
* [Classes](#como-trabalhar-com-classes-em-java)
* [Pacotes](#como-trabalhar-com-pacotes-em-java)
* [Conclusão](#conclusão)

---

# Pré-requisitos

É recomendado conhecer lógica básica de programação.

---

# Como instalar o Java

Você precisará instalar o JDK (Java Development Kit).

Download oficial:

[Oracle Java Downloads](https://www.oracle.com/java/technologies/downloads/?utm_source=chatgpt.com)

Alternativa open source:

[OpenJDK](https://openjdk.org/?utm_source=chatgpt.com)

No Ubuntu/Linux:

```bash 
sudo apt update
sudo apt install openjdk-21-jdk -y
```

Verificando instalação:

```bash 
java --version
javac --version
```

---

# Como escrever seu primeiro programa em Java

Crie um arquivo chamado `Main.java`.

```java 
public class Main {

    public static void main(String[] args) {
        System.out.println("Hello, ninjas");
    }

}
```

Compilando:

```bash 
javac Main.java
```

Executando:

```bash 
java Main
```

Saída:

```bash 
Hello, ninjas
```

---

# Como trabalhar com variáveis e números em Java

## Declarando variáveis

Java é estaticamente tipada, então toda variável precisa de um tipo.

```java 
String nameOne = "emy";

System.out.println(nameOne);
```

---

## Inteiros

```java 
int ageOne = 20;
int ageTwo = 30;

System.out.println(ageOne);
```

Tipos numéricos comuns:

| Tipo  | Tamanho |
| ----- | ------- |
| byte  | 8 bits  |
| short | 16 bits |
| int   | 32 bits |
| long  | 64 bits |

---

## Decimais

```java 
float price = 19.99f;
double salary = 2500.75;
```

---

# Como formatar strings em Java

## Imprimindo strings

```java 
System.out.println("Hello, world!");
```

Sem quebra de linha:

```java 
System.out.print("Hello ");
System.out.print("world!");
```

---

## String format

```java 
String name = "Emy";
int age = 27;

System.out.printf(
    "My age is %d and my name is %s%n",
    age,
    name
);
```

Especificadores comuns:

| Especificador | Uso          |
| ------------- | ------------ |
| %s            | String       |
| %d            | Inteiro      |
| %f            | Float/Double |
| %b            | Boolean      |

---

# Como trabalhar com arrays em Java

## Arrays

```java 
int[] ages = {20, 25, 30};

System.out.println(ages.length);
```

---

## Modificando arrays

```java 
ages[1] = 50;
```

Arrays possuem tamanho fixo.

---

## ArrayList

Para listas dinâmicas usamos `ArrayList`.

```java 
import java.util.ArrayList;

ArrayList<Integer> scores = new ArrayList<>();

scores.add(100);
scores.add(50);
scores.add(60);

System.out.println(scores);
```

---

# Como trabalhar com loops em Java

## Loop while

```java 
int x = 0;

while (x < 5) {
    System.out.println(x);
    x++;
}
```

---

## Loop for

```java 
for (int i = 0; i < 5; i++) {
    System.out.println(i);
}
```

---

## Foreach

```java 
String[] names = {"emy", "ble", "winkii"};

for (String name : names) {
    System.out.println(name);
}
```

---

# Como trabalhar com métodos em Java

## Criando métodos

```java 
public static void sayGreeting(String name) {
    System.out.println("Good morning " + name);
}
```

Chamando:

```java 
sayGreeting("emy");
```

---

## Métodos com retorno

```java 
public static String sayHello(String name) {
    return "Hello " + name;
}
```

---

## Múltiplos parâmetros

```java 
public static String userInfo(
    String name,
    int age
) {
    return name + " is " + age + " years old";
}
```

---

# Como trabalhar com HashMaps em Java

`HashMap` é equivalente aos maps/dicionários.

```java 
import java.util.HashMap;

HashMap<String, Integer> scores =
    new HashMap<>();

scores.put("maths", 20);
scores.put("english", 15);
```

Acessando valores:

```java 
System.out.println(scores.get("maths"));
```

Percorrendo:

```java 
for (String key : scores.keySet()) {
    System.out.println(
        key + " - " + scores.get(key)
    );
}
```

---

# Como trabalhar com classes em Java

Java é totalmente orientada a objetos.

```java 
public class Book {

    int id;
    String title;
    String author;
    int year;
    int userId;

}
```

---

## Construtor

```java 
public class Book {

    int id;
    String title;
    String author;
    int year;
    int userId;

    public Book(
        int id,
        String title,
        String author,
        int year,
        int userId
    ) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.year = year;
        this.userId = userId;
    }
}
```

Criando objeto:

```java 
Book book1 = new Book(
    1,
    "Jane Eyre",
    "Jane Austen",
    1990,
    6
);
```

Alterando propriedades:

```java 
book1.title = "Things Fall Apart";
book1.author = "Chinua Achebe";
```

---

# Como trabalhar com pacotes em Java

Arquivo `Greetings.java`:

```java 
package greetings;

public class Greetings {

    public static void sayHello(String name) {
        System.out.println("Hello " + name);
    }

}
```

Arquivo `Main.java`:

```java 
import greetings.Greetings;

public class Main {

    public static void main(String[] args) {

        Greetings.sayHello("emy");

    }

}
```

Compilando:

```bash 
javac greetings/Greetings.java Main.java
```

Executando:

```bash 
java Main
```

---

# Conclusão

Neste tutorial, você aprendeu conceitos fundamentais de Java:

* Variáveis
* Strings
* Arrays
* Loops
* Métodos
* HashMaps
* Classes
* Pacotes

Java continua sendo uma das linguagens mais usadas no mundo corporativo.

Ela é extremamente forte em:

* backend
* sistemas bancários
* enterprise
* Android
* cloud
* APIs
* microsserviços

Documentação oficial:

[Java Documentation](https://docs.oracle.com/en/java/?utm_source=chatgpt.com)
