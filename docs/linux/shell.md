# Shell Script

**Shell script** (ou *script de shell*) é um **arquivo de texto com uma sequência de comandos do Linux** que são executados automaticamente pelo terminal.

Em outras palavras:
👉 é como “programar o terminal” para fazer tarefas sozinho.

---

## 🧠 O que é o “shell”?

O **shell** é o programa que interpreta comandos no Linux (o terminal).
O mais comum é o **Bash**, mas existem outros.

---

## 📜 O que é um shell script na prática?

É um arquivo, geralmente com extensão `.sh`, que contém comandos como:

```bash
#!/bin/bash
echo "Olá, mundo!"
ls
```

Quando você executa esse arquivo, o Linux roda todos os comandos na ordem.

---

## 🚀 Para que serve?

Shell scripts são usados para automatizar tarefas, por exemplo:

* Fazer backups automáticos
* Instalar programas em sequência
* Organizar arquivos
* Rodar vários comandos de uma vez
* Configurar sistemas

---

## ⚙️ Como executar um shell script

1. Criar o arquivo:

```bash
nano script.sh
```

2. Dar permissão de execução:

```bash
chmod +x script.sh
```

3. Executar:

```bash
./script.sh
```

---

## 💡 Exemplo simples útil

```bash
#!/bin/bash

echo "Atualizando sistema..."
sudo apt update && sudo apt upgrade -y

echo "Concluído!"
```

---

## 🧠 Resumo rápido

* Shell = terminal que interpreta comandos
* Shell script = lista de comandos automatizados
* Bash = shell mais usado no Linux

---
