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

---

# 🚀 Estrutura


```
infra/
└── docker/
    ├── Introducao/
    │   ├── o-que-e-docker.md
    │   ├── container-vs-imagem.md
    │   └── roadmap.md
    │
    ├── Fundamentos/
    │   ├── imagens.md
    │   ├── containers.md
    │   ├── volumes.md
    │   └── redes.md
    │
    ├── Ferramentas/
    │   ├── docker-desktop.md
    │   ├── docker-hub.md
    │   └── cli-comandos.md
    │
    └── Prática/
        ├── dockerfile.md
        ├── docker-compose.md
        ├── exemplos-nginx.md
        └── exemplos-api.md
    
```

---

## 📌 2. Separação por intenção

| Categoria   | Conteúdo                              |
| ----------- | ------------------------------------- |
| Fundamentos | conceitos (imagem, container, volume) |
| Ferramentas | Docker Desktop, CLI, Hub              |
| Prática     | Dockerfile, Compose, exemplos         |
| Avançado    | deploy, redes, arquitetura            |

---

## 📌 3. Escalabilidade

Você pode crescer sem bagunça:

* adicionar Kubernetes depois
* adicionar CI/CD
* adicionar projetos reais

---

## 📌 4. Melhor para estudo e revisão

Facilita muito revisar Docker depois, porque cada conceito está isolado.

---

# ⚡ Melhorias extras (opcional, mas recomendado)

## 🧩 1. Criar um README principal

```
infra/docker/README.md
```

Com:

* visão geral
* ordem de estudo
* links para cada módulo

---

## 🧩 2. Padronizar nomes

Evite nomes como:

* `file.md`
* `commands.md`

Prefira:

* `dockerfile.md`
* `cli-comandos.md`

---

## 🧩 3. Usar prefixos numéricos

Isso ajuda na ordenação:

```
01-fundamentos
02-ferramentas
03-pratica
```

---

# 📌 Resumo

Sua estrutura atual funciona, mas a versão melhor:

✔ Organiza por nível de aprendizado
✔ Separa conceitos de prática
✔ Escala melhor com o tempo
✔ Facilita manutenção e estudo

---

Se quiser, posso te ajudar a dar o próximo passo:

👉 transformar isso em um **material estilo curso completo (com ordem de estudo + exercícios + projetos práticos)**
