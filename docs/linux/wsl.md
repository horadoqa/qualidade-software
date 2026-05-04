# WSL

O **Windows Subsystem for Linux (WSL)** é um recurso do Windows que permite rodar distribuições Linux (como Ubuntu, Debian, etc.) diretamente dentro do sistema, sem precisar de máquina virtual ou dual boot. Na prática, você consegue usar terminal Linux, instalar pacotes com `apt`, rodar scripts e até ferramentas de desenvolvimento como se estivesse em um ambiente Linux real.

Hoje, a versão mais moderna é o **WSL 2**, que usa um kernel Linux real (melhor desempenho e compatibilidade).

---

## 🔧 Como instalar o WSL (forma mais fácil – recomendada)

Se você usa Windows 10 atualizado ou Windows 11:

1. Abra o **PowerShell como administrador**
2. Execute o comando:

```bash
wsl --install
```

Isso automaticamente:

* Ativa o WSL
* Instala o WSL 2
* Baixa o **Ubuntu** como distribuição padrão

3. Reinicie o computador (se for solicitado)

4. Após reiniciar, o Ubuntu será aberto para você criar:

   * usuário
   * senha

---

## 📦 Verificar / garantir que está usando a versão mais recente

Depois da instalação, rode:

```bash
wsl --version
```

Para atualizar o WSL manualmente:

```bash
wsl --update
```

E definir WSL 2 como padrão:

```bash
wsl --set-default-version 2
```

---

## 🐧 Instalar outras distribuições (opcional)

Você pode ver as disponíveis com:

```bash
wsl --list --online
```

E instalar, por exemplo:

```bash
wsl --install -d Debian
```

---

## ⚙️ Caso o comando `wsl --install` não funcione

Em versões mais antigas do Windows:

1. Ative manualmente os recursos:

   * “Subsistema do Windows para Linux”
   * “Plataforma de Máquina Virtual”

2. Depois execute:

```bash
wsl --set-default-version 2
```

---

## 💡 O que dá pra fazer com WSL

* Rodar ferramentas como Git, Node.js, Python
* Usar Docker (com integração)
* Compilar código em ambiente Linux
* Rodar scripts bash
* Acessar arquivos do Windows e vice-versa

---
