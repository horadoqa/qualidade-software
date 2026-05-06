# Comparação

---

## ☁️ O que elas têm em comum?

* Todas são **interfaces de linha de comando (CLI)**
* Servem para **gerenciar infraestrutura na nuvem**
* Permitem automatizar tarefas com scripts
* São usadas por DevOps e engenheiros de cloud

---

## ⚙️ Diferença principal

| Ferramenta    | Plataforma                  | Empresa   |
| ------------- | --------------------------- | --------- |
| **gcloud**    | Google Cloud Platform (GCP) | Google    |
| **AWS CLI**   | Amazon Web Services (AWS)   | Amazon    |
| **Azure CLI** | Microsoft Azure             | Microsoft |

---

## 🧠 Explicando de forma simples

* **gcloud** → controla a nuvem do Google
* **AWS CLI** → controla a nuvem da Amazon
* **Azure CLI** → controla a nuvem da Microsoft

---

## 💻 Exemplos de comandos

### 🔵 gcloud

```bash id="g1"
gcloud compute instances create vm-exemplo
```

Cria uma máquina virtual na Google Cloud.

---

### 🟠 AWS CLI

```bash id="a1"
aws ec2 run-instances --image-id ami-123456
```

Cria uma máquina virtual na AWS (EC2).

---

### 🔷 Azure CLI

```bash id="z1"
az vm create --name vm-exemplo
```

Cria uma máquina virtual no Azure.

---

## 🚀 Diferenças mais importantes

### 1. 🔗 Ecossistema

Cada CLI só funciona com sua própria nuvem:

* gcloud → Google Cloud
* aws → Amazon
* az → Microsoft

---

### 2. 🧰 Sintaxe

Cada uma tem comandos diferentes, mesmo fazendo coisas parecidas.

---

### 3. 📦 Serviços disponíveis

* AWS → mais antiga e com maior variedade de serviços
* Azure → forte em ambientes corporativos e Microsoft
* GCP (gcloud) → forte em dados, IA e Kubernetes

---

## 💡 Resumo rápido

* **gcloud** = Google Cloud
* **AWS CLI** = Amazon Cloud
* **Azure CLI** = Microsoft Cloud

Todas fazem a mesma coisa na prática: **controlar recursos na nuvem via terminal**, só mudando a empresa e os comandos.

---
