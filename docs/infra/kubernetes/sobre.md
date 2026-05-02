O **Kubernetes** é uma plataforma para **gerenciar contêineres em escala**.

Em termos simples: enquanto o Docker cria e roda contêineres, o Kubernetes cuida de **organizar, escalar e manter tudo funcionando automaticamente**.

---

## 🧠 Por que ele existe

Quando você tem poucos contêineres, o Docker já resolve.
Mas em sistemas grandes (com dezenas ou centenas de serviços), surgem problemas:

* Como distribuir contêineres em vários servidores?
* Como reiniciar automaticamente se algo cair?
* Como escalar quando há muitos usuários?

O Kubernetes resolve tudo isso.

---

## ⚙️ O que ele faz

* 🔁 **Auto-restart** → reinicia contêineres que falham
* 📈 **Escalabilidade** → aumenta/diminui instâncias automaticamente
* 🌐 **Balanceamento de carga** → distribui tráfego
* 🚀 **Deploy automatizado** → atualiza apps sem parar o sistema
* 🧩 **Orquestração** → gerencia múltiplos contêineres

---

## 📦 Conceitos principais

* **Pod** → menor unidade (um ou mais contêineres)
* **Node** → máquina que roda os pods
* **Cluster** → conjunto de nodes
* **Deployment** → define como sua aplicação roda
* **Service** → expõe sua aplicação na rede

---

## 💡 Exemplo prático

Imagine um sistema com:

* API
* banco de dados
* frontend

Com Kubernetes:

* ele distribui tudo em vários servidores
* garante que sempre existam cópias rodando
* escala automaticamente quando o acesso aumenta

---

## 🔄 Relação geral

* Docker → cria contêiner
* Docker Compose → organiza localmente
* Kubernetes → gerencia em produção (escala grande)

---

## 🧾 Resumo

* Kubernetes = “gerente” de contêineres
* Automatiza deploy, escala e manutenção
* Essencial para sistemas grandes e distribuídos

---
