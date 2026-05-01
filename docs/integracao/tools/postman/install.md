# Como usar o Postman

O **Postman** é uma ferramenta muito usada para testar APIs (requisições HTTP como GET, POST, PUT, DELETE). Ele serve para você “simular” chamadas a um servidor sem precisar escrever código.

### Precisa instalar?

Você tem **duas opções**:

#### 1) Usar pelo navegador (sem instalar)

* Existe a versão web: [https://web.postman.com](https://web.postman.com)
* Você cria uma conta e já pode começar a usar
* Precisa instalar um “Postman Agent” leve no computador para permitir chamadas locais

#### 2) Instalar no computador (mais comum)

* Você baixa o aplicativo da plataforma oficial: Postman
* Funciona no Windows, Mac e Linux
* É mais estável e completo do que a versão web

---

### Como usar o Postman (básico)

1. **Escolha o método HTTP**

   * GET → buscar dados
   * POST → enviar dados
   * PUT/PATCH → atualizar dados
   * DELETE → apagar dados

2. **Coloque a URL da API**
   Ex:

   ```
   https://api.exemplo.com/usuarios
   ```

3. **Clique em “Send”**

   * Ele envia a requisição e mostra a resposta (JSON, texto, etc.)

4. (Opcional) Adicione:

   * Headers (ex: autenticação)
   * Body (dados enviados no POST/PUT)

---

### Exemplo simples (POST)

* URL: `https://api.exemplo.com/login`
* Método: POST
* Body (JSON):

```json
{
  "email": "teste@email.com",
  "senha": "123456"
}
```

---

### Resumo rápido

* Pode usar **online ou instalado**
* Instalado é mais recomendado
* Serve para testar APIs sem programar

---