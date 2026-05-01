# 🤖 Manual Completo de Instalação do Robot Framework

## 📌 O que é o Robot Framework?

O **Robot Framework** é uma ferramenta open source para automação de testes baseada em palavras-chave (*keyword-driven*). Ele é muito utilizado para testes funcionais, testes de aceitação (ATDD) e automação de APIs e interfaces.

---

# ⚙️ Pré-requisitos

Antes de instalar o Robot Framework, você precisa ter:

## 🔹 1. Python

O Robot Framework é baseado em Python.

* Versão recomendada: **Python 3.8 ou superior**

Verifique se já está instalado:

```bash id="q0z9di"
python --version
```

ou:

```bash id="a1y9sx"
python3 --version
```

👉 Download: [https://www.python.org/](https://www.python.org/)

---

## 🔹 2. pip (Gerenciador de pacotes)

Normalmente já vem com o Python.

Verifique:

```bash id="3csd2q"
pip --version
```

---

## 🔹 3. (Opcional) Virtual Environment

Recomendado para isolar dependências:

```bash id="2tq9gd"
python -m venv venv
```

Ativação:

* Windows:

```bash id="7u8xqp"
venv\Scripts\activate
```

* macOS/Linux:

```bash id="1rdgvt"
source venv/bin/activate
```

---

## 🔹 4. (Opcional) Git

```bash id="4pzdb9"
git --version
```

---

# 💻 Instalação por Sistema Operacional

---

## 🪟 Windows

### Passo 1: Instalar Python

1. Acesse: [https://www.python.org/](https://www.python.org/)
2. Baixe a versão mais recente
3. **IMPORTANTE:** marque a opção `Add Python to PATH`
4. Conclua a instalação

---

### Passo 2: Verificar instalação

```bash id="lfr9yl"
python --version
pip --version
```

---

### Passo 3: Criar projeto

```bash id="a3qq2i"
mkdir meu-projeto-robot
cd meu-projeto-robot
```

---

### Passo 4: (Opcional) Criar ambiente virtual

```bash id="f7mm2w"
python -m venv venv
venv\Scripts\activate
```

---

### Passo 5: Instalar Robot Framework

```bash id="yy3i5t"
pip install robotframework
```

---

### Passo 6: Verificar instalação

```bash id="z0h3a5"
robot --version
```

---

## 🍎 macOS

### Passo 1: Instalar Python

#### Opção A: Site oficial

👉 [https://www.python.org/](https://www.python.org/)

#### Opção B: Usando Homebrew

```bash id="7m4b3o"
brew install python
```

---

### Passo 2: Verificar instalação

```bash id="x9t7yu"
python3 --version
pip3 --version
```

---

### Passo 3: Criar projeto

```bash id="n5wq4p"
mkdir meu-projeto-robot
cd meu-projeto-robot
```

---

### Passo 4: Criar ambiente virtual (recomendado)

```bash id="s9y2f8"
python3 -m venv venv
source venv/bin/activate
```

---

### Passo 5: Instalar Robot Framework

```bash id="p3k6zm"
pip install robotframework
```

---

### Passo 6: Verificar instalação

```bash id="9p8e2w"
robot --version
```

---

## 🐧 Linux (Ubuntu/Debian)

### Passo 1: Instalar Python e pip

```bash id="c8d1mz"
sudo apt update
sudo apt install -y python3 python3-pip python3-venv
```

---

### Passo 2: Verificar instalação

```bash id="x2m7nd"
python3 --version
pip3 --version
```

---

### Passo 3: Criar projeto

```bash id="k2s8gd"
mkdir meu-projeto-robot
cd meu-projeto-robot
```

---

### Passo 4: Criar ambiente virtual

```bash id="m9y6ke"
python3 -m venv venv
source venv/bin/activate
```

---

### Passo 5: Instalar Robot Framework

```bash id="c1y5rp"
pip install robotframework
```

---

### Passo 6: Verificar instalação

```bash id="f0t4jv"
robot --version
```

---

# 📦 Bibliotecas Comuns (Opcional)

Dependendo do tipo de teste, você pode instalar bibliotecas adicionais:

### 🔹 Selenium (testes web)

```bash id="r4b1kt"
pip install robotframework-seleniumlibrary
```

---

### 🔹 Requests (testes de API)

```bash id="q7n3af"
pip install robotframework-requests
```

---

# 🚀 Executando um Teste

Após criar um arquivo `.robot`, execute:

```bash id="t2h7gj"
robot nome-do-teste.robot
```

---

# 📁 Estrutura Básica

```id="r7y2op"
meu-projeto-robot/
  venv/
  tests/
    exemplo.robot
  results/
```

---

# 📊 Arquivos Gerados

Após execução, o Robot Framework gera:

* `log.html` → detalhes da execução
* `report.html` → resumo dos testes
* `output.xml` → dados estruturados

---

# ⚠️ Problemas Comuns

### 🔸 Comando `robot` não encontrado

* Verifique se o Python/Scripts está no PATH
* Use:

```bash id="w4d9pl"
python -m robot
```

---

### 🔸 Conflito de versões de Python

* Use ambiente virtual (venv)

---

### 🔸 Permissões (Linux/macOS)

```bash id="z1n7kg"
chmod +x venv/bin/activate
```

---

# 🧪 Verificando instalação

```bash id="u6x3nr"
python -m robot --version
```

---

# 📦 Desinstalação

```bash id="g3p2yk"
pip uninstall robotframework
```

---

# 📚 Recursos Oficiais

* [https://robotframework.org/](https://robotframework.org/)
* [https://github.com/robotframework/robotframework](https://github.com/robotframework/robotframework)

---

# 🧾 Conclusão

Agora você tem o Robot Framework instalado e pronto para uso em:

* Windows 🪟
* macOS 🍎
* Linux 🐧

Você já pode começar a automatizar testes de forma simples e escalável 🚀

---

