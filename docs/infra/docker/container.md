# 📦 O que é um container?

Um container inclui:

* código da aplicação
* bibliotecas e dependências
* configurações
* sistema de arquivos necessário

Mas ele **compartilha o kernel do sistema operacional** da máquina hospedeira.

---

# 🧠 Explicação simples

Pense assim:

* 💿 **Imagem Docker** → receita pronta
* 🚀 **Container** → a receita sendo executada (o prato pronto em uso)

---

# ⚙️ Como ele funciona?

Quando você executa:

```bash 
docker run nginx
```

O Docker faz:

1. Pega a imagem do NGINX
2. Cria um container baseado nela
3. Isola o ambiente
4. Executa o processo dentro dele

---

# 🔒 O que significa “isolado”?

Cada container tem:

* seu próprio sistema de arquivos
* seus próprios processos
* sua própria rede (virtual)
* suas próprias dependências

Mas **não precisa de um sistema operacional completo como uma máquina virtual**.

---

# 🆚 Container vs Máquina Virtual

| Container          | Máquina Virtual              |
| ------------------ | ---------------------------- |
| Leve ⚡             | Pesada 🐢                    |
| Usa o mesmo kernel | Sistema operacional completo |
| Inicia rápido      | Inicia lento                 |
| Mais eficiente     | Mais consumo de recursos     |

---

# 🧱 Exemplo prático

Quando você roda um container de um servidor web:

* Ele roda isolado
* Não interfere no seu sistema
* Pode ser iniciado e parado rapidamente
* Pode ser recriado facilmente

---

# 🚀 Por que containers são importantes?

### 🧪 1. Portabilidade

Roda igual em qualquer lugar

### ⚡ 2. Leveza

Consome poucos recursos

### 🔁 3. Facilidade de deploy

Você sobe aplicações em segundos

### 🧱 4. Isolamento

Evita conflitos entre aplicações

---

# 📌 Resumo

Um **container Docker é:**

✔ Uma aplicação executando isoladamente
✔ Criada a partir de uma imagem
✔ Leve e rápida
✔ Reproduzível em qualquer ambiente

---
