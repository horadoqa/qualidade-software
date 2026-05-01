# cURL

cURL é uma ferramenta de linha de comando usada para **fazer requisições para APIs e servidores via URL**, sem precisar de interface gráfica.

O nome vem de *Client URL*.

---

### 🔧 Para que serve?

Com o cURL você pode:

* Enviar requisições HTTP (GET, POST, PUT, DELETE)
* Testar APIs diretamente pelo terminal
* Enviar dados em JSON para um servidor
* Fazer download ou upload de arquivos via URL
* Depurar serviços web rapidamente

---

### 📌 Exemplo simples

#### 🔹 GET (buscar dados)

```bash
curl https://api.exemplo.com/usuarios
```

#### 🔹 POST (enviar dados)

```bash
curl -X POST https://api.exemplo.com/usuarios \
-H "Content-Type: application/json" \
-d '{"nome": "João"}'
```

---

### 🧠 Por que ele é importante?

* Não precisa de interface gráfica (Postman/Insomnia)
* Está disponível por padrão em muitos sistemas (Linux, macOS, Windows moderno)
* Muito usado em servidores e automação
* Essencial para desenvolvedores backend e DevOps

---

### ⚖️ Comparação rápida

* Postman / Insomnia → ferramentas visuais
* cURL → ferramenta via terminal (linha de comando)

---

### 🚀 Resumo

cURL é uma ferramenta poderosa para **testar e interagir com APIs diretamente pelo terminal**, muito usada em ambientes técnicos e automações.

---