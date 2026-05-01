# 🪟 Windows (via Chocolatey)

Para ambientes Windows com Chocolatey instalado:

Aqui vai um guia claro e direto para instalar o **Chocolatey** no Windows:

O **Chocolatey** é um gerenciador de pacotes que facilita a instalação de softwares via linha de comando.

---

## ⚙️ Pré-requisitos

* Windows 7 ou superior
* Acesso como **Administrador**
* PowerShell

---

## 🚀 Passo a passo

### 1. Abrir o PowerShell como administrador

* Clique no menu Iniciar
* Procure por **PowerShell**
* Clique com o botão direito → **Executar como administrador**

---

### 2. Executar o comando de instalação

Cole o comando abaixo no PowerShell:

```powershell id="choco01"
Set-ExecutionPolicy Bypass -Scope Process -Force; `
[System.Net.ServicePointManager]::SecurityProtocol = `
[System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

---

### 3. Aguardar a instalação

O processo leva alguns segundos. Ao finalizar, o Chocolatey estará instalado.

---

## ✅ Verificar instalação

Execute:

```powershell
choco -v
```

Se aparecer a versão, deu tudo certo.

---

## 💡 Exemplo de uso

Instalar o Google Chrome:

```powershell
choco install googlechrome -y
```

---

## ⚠️ Dicas

* Sempre execute o terminal como administrador
* Use `-y` para evitar confirmações manuais
* Reinicie o terminal após a instalação


```bash
choco install k6 -y
```

## ✅ Verificação da instalação

Após a instalação, confirme se o K6 foi instalado corretamente:

```bash
k6 version
```