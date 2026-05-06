# Instalar o Robot Framework

Instalar o **Robot Framework** é bem direto, mas ele depende do **Python instalado** no seu computador.

Vou te mostrar o caminho simples:

---

## 🧩 1. Instale o Python (obrigatório)

Se ainda não tiver:

👉 [https://www.python.org/downloads/](https://www.python.org/downloads/)

Durante a instalação no Windows, marque:
✔️ **Add Python to PATH**

Depois teste no terminal:

```bash
python --version
```

---

## 🤖 2. Instalar o Robot Framework

Abra o terminal (Prompt de Comando no Windows ou Terminal no Mac/Linux) e digite:

```bash
pip install robotframework
```

Isso baixa e instala o Robot Framework automaticamente.

---

## 🌐 3. (Opcional) Para testes em navegador

Se quiser automatizar sites (tipo Chrome), instale também:

```bash
pip install robotframework-seleniumlibrary
```

---

## ✅ 4. Testar se funcionou

Digite:

```bash
robot --version
```

Se aparecer a versão, está tudo certo 👍

---

## 📁 5. Criar seu primeiro teste

Crie um arquivo chamado:

```
teste.robot
```

E coloque:

```robot id="rf1"
*** Test Cases ***
Teste Simples
    Log    Olá, Robot Framework funcionando!
```

Depois rode:

```bash
robot teste.robot
```

---

## ⚠️ Dica importante

Se o comando `pip` não funcionar, tente:

```bash
python -m pip install robotframework
```

---
