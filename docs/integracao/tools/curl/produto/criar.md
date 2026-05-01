## ➕ Adicionar produto

Para adicionar um produto, precisamos passar o seguinte comando:

```bash
curl -X POST https://serverest.dev/produtos \
-H "Content-Type: application/json" \
-H "Authorization: Bearer SEU_TOKEN" \
-d '{
  "nome": "Notebook Dell",
  "preco": 3500,
  "descricao": "Notebook para testes",
  "quantidade": 10
}'
```