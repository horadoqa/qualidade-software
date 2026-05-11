# Rede no Docker

A **rede no Docker** é o sistema que permite que containers **se comuniquem entre si, com o host e com o mundo externo**.

👉 Em termos simples: é como o Docker conecta “máquinas virtuais leves” dentro de uma mesma infraestrutura.

---

# 🌐 Como funciona a rede no Docker?

Cada container recebe:

* um endereço IP interno
* uma interface de rede virtual
* regras de comunicação definidas por “drivers de rede”

---

# 🧠 Ideia principal

Pense assim:

* 📦 Container = computador isolado
* 🌐 Rede Docker = internet interna entre esses computadores

---

# ⚙️ Tipos de redes no Docker

O Docker possui alguns tipos principais de rede:

---

## 🔵 1. Bridge (padrão)

É a rede mais usada.

👉 Containers na mesma bridge podem se comunicar entre si.

Exemplo:

```bash 
docker run -d --name app1 nginx
docker run -d --name app2 nginx
```

Ambos ficam na mesma rede padrão (`bridge`).

✔ Usado para aplicações locais

---

## 🌍 2. Host

O container usa a rede do próprio computador.

```bash 
docker run --network host nginx
```

👉 Não há isolamento de rede.

✔ Alta performance
❌ Menos seguro e portátil

---

## 🔒 3. None

O container não tem rede.

```bash 
docker run --network none nginx
```

👉 Totalmente isolado.

✔ Usado para testes ou segurança extrema

---

## 🔗 4. Overlay (avançado)

Usado em sistemas distribuídos (cluster).

👉 Permite containers em máquinas diferentes se comunicarem.

Ex:

* Swarm
* Kubernetes

---

## 🧩 5. Macvlan

O container recebe um IP direto na rede física.

👉 Parece uma máquina real na rede.

---

# 🧱 Comunicação entre containers

## 📌 Exemplo prático

```bash 
docker network create minha-rede
```

```bash 
docker run -d --name app1 --network minha-rede nginx
docker run -d --name app2 --network minha-rede nginx
```

✔ Agora eles conseguem se comunicar pelo nome:

```bash
http://app1
http://app2
```

---

# 🔄 Como o Docker gerencia redes?

O Docker cria automaticamente:

* interfaces virtuais (veth)
* bridges internas
* regras de NAT (Network Address Translation)

---

# 🧠 Explicação simples do fluxo

```text 
Container A → rede virtual → Docker bridge → rede virtual → Container B
```

---

# 🖥️ Comunicação com o mundo externo

Quando você faz:

```bash 
docker run -p 8080:80 nginx
```

Significa:

* porta 8080 (máquina) → porta 80 (container)

👉 Isso cria um “túnel” entre host e container.

---

# 🔐 Isolamento de rede

Cada container:

* não vê automaticamente outros containers
* só se comunica se estiver na mesma rede
* pode ser isolado completamente

---

# ⚡ Por que a rede do Docker é importante?

## 🧪 1. Isolamento

Evita conflitos entre aplicações

## 🔁 2. Comunicação controlada

Você decide quem fala com quem

## 🌐 3. Escalabilidade

Vários containers trabalhando juntos

## ☁️ 4. Arquitetura moderna

Base de microserviços

---

# 📌 Resumo

A rede no Docker é:

✔ Um sistema de comunicação entre containers
✔ Baseado em redes virtuais
✔ Controlado por drivers (bridge, host, overlay etc.)
✔ Essencial para aplicações distribuídas

---
