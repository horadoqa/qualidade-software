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

```bash
python --version
```

ou:

```bash
python3 --version
```

👉 Download: [https://www.python.org/](https://www.python.org/)

---

## 🔹 2. pip (Gerenciador de pacotes)

Normalmente já vem com o Python.

Verifique:

```bash
pip --version
```

---

## 🔹 3. (Opcional) Virtual Environment

Recomendado para isolar dependências:

```bash
python -m venv venv
```

Ativação:

* Windows:

```bash
venv\Scripts\activate
```

* macOS/Linux:

```bash
source venv/bin/activate
```

---

## 🔹 4. (Opcional) Git

```bash
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

```bash
python --version
pip --version
```

---

### Passo 3: Criar projeto

```bash
mkdir meu-projeto-robot
cd meu-projeto-robot
```

---

### Passo 4: (Opcional) Criar ambiente virtual

```bash
python -m venv venv
venv\Scripts\activate
```

---

### Passo 5: Instalar Robot Framework

```bash
pip install robotframework
```

---

### Passo 6: Verificar instalação

```bash
robot --version
```

---

## 🍎 macOS

### Passo 1: Instalar Python

#### Opção A: Site oficial

👉 [https://www.python.org/](https://www.python.org/)

#### Opção B: Usando Homebrew

```bash
brew install python
```

---

### Passo 2: Verificar instalação

```bash
python3 --version
pip3 --version
```

---

### Passo 3: Criar projeto

```bash
mkdir meu-projeto-robot
cd meu-projeto-robot
```

---

### Passo 4: Criar ambiente virtual (recomendado)

```bash
python3 -m venv venv
source venv/bin/activate
```

---

### Passo 5: Instalar Robot Framework

```bash
pip install robotframework
```

---

### Passo 6: Verificar instalação

```bash
robot --version
```

---

## 🐧 Linux (Ubuntu/Debian)

### Passo 1: Instalar Python e pip

```bash
sudo apt update
sudo apt install -y python3 python3-pip python3-venv
```

---

### Passo 2: Verificar instalação

```bash
python3 --version
pip3 --version
```

---

### Passo 3: Criar projeto

```bash
mkdir meu-projeto-robot
cd meu-projeto-robot
```

---

### Passo 4: Criar ambiente virtual

```bash
python3 -m venv venv
source venv/bin/activate
```

---

### Passo 5: Instalar Robot Framework

```bash
pip install robotframework
```

---

### Passo 6: Verificar instalação

```bash
robot --version
```

---

# 📦 Bibliotecas Comuns (Opcional)

Dependendo do tipo de teste, você pode instalar bibliotecas adicionais:

### 🔹 Selenium (testes web)

```bash
pip install robotframework-seleniumlibrary
```

---

### 🔹 Requests (testes de API)

```bash
pip install robotframework-requests
```

---

# 🚀 Executando um Teste

Após criar um arquivo `.robot`, execute:

```bash
robot nome-do-teste.robot
```

---

# 📁 Estrutura Básica

```
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

```bash
python -m robot
```

---

### 🔸 Conflito de versões de Python

* Use ambiente virtual (venv)

---

### 🔸 Permissões (Linux/macOS)

```bash
chmod +x venv/bin/activate
```

---

# 🧪 Verificando instalação

```bash 
python -m robot --version
```

---

# 📦 Desinstalação

```bash 
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

