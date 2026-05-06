# Terraform 

**Terraform** é uma ferramenta de **Infraestrutura como Código (IaC)** usada para **criar, modificar e gerenciar infraestrutura de TI de forma automatizada**.

Em vez de configurar servidores, redes e bancos de dados manualmente, você descreve tudo em arquivos de configuração, e o Terraform faz o trabalho por você.

---

## 🧠 Ideia simples

Pense assim:

* Sem Terraform → você cria servidores “na mão” em um painel da nuvem
* Com Terraform → você escreve um arquivo dizendo o que quer, e ele cria tudo automaticamente

---

## ⚙️ O que ele consegue gerenciar?

O Terraform pode criar e controlar:

* Servidores (VMs)
* Bancos de dados
* Redes na nuvem
* Load balancers
* Serviços completos em cloud

---

## 📄 Exemplo simples

```hcl id="tf1ex"
resource "aws_instance" "exemplo" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
}
```

Esse código diz:
👉 “Crie uma máquina virtual na AWS com esse tipo”

---

## ☁️ Como ele funciona?

1. Você escreve arquivos (HCL)
2. O Terraform lê esses arquivos
3. Ele compara o que existe com o que você quer
4. Ele cria/atualiza/apaga recursos para chegar no estado desejado

---

## 🚀 Principais vantagens

* ✔️ Automatiza infraestrutura
* ✔️ Evita configuração manual e erros
* ✔️ Reprodutível (mesma infra em qualquer lugar)
* ✔️ Funciona com várias clouds (AWS, Azure, Google Cloud)

---

## 🧰 Quem criou?

A ferramenta Terraform foi criada pela HashiCorp.

---

## 💡 Resumo rápido

Terraform é uma ferramenta que permite **desenhar sua infraestrutura como se fosse código**, e depois ela cria tudo automaticamente na nuvem.

---
