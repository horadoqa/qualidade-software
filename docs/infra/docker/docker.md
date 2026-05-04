# Docker

Docker é uma plataforma que permite criar, empacotar e executar aplicações dentro de “contêineres”.

Em termos simples, o Docker resolve um problema comum: “funciona na minha máquina, mas não funciona na sua”. Ele garante que o programa rode igual em qualquer ambiente.

### 🧠 Como funciona

* Um **contêiner** é como uma “caixinha” leve que contém:

  * o código da aplicação
  * bibliotecas
  * dependências
  * configurações
* Tudo isso roda isolado do resto do sistema.

### 📦 Comparação rápida

* **Sem Docker:** você precisa instalar tudo manualmente (versões, dependências, etc.)
* **Com Docker:** você roda um único comando e tudo já vem pronto

### ⚙️ Diferença para máquina virtual

* Docker é mais leve que uma máquina virtual
* Ele compartilha o sistema operacional do host, em vez de criar um sistema inteiro separado

### 💡 Exemplo prático

Imagine que você desenvolveu um site:

* Com Docker: você cria um contêiner com tudo configurado
* Outra pessoa pode rodar exatamente igual, sem configurar nada

### 🚀 Para que é usado

* Desenvolvimento de software
* Testes automatizados
* Deploy (colocar sistemas no ar)
* Microserviços
