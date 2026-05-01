## ✏️ Atualizar produto

Para atualizar as informações de um produto, passamos o seguinte comando:

```bash
curl -X PUT https://serverest.dev/produtos/ID_DO_PRODUTO \
-H "Content-Type: application/json" \
-H "Authorization: Bearer SEU_TOKEN" \
-d '{
  "nome": "Notebook Dell Atualizado",
  "preco": 4000,
  "descricao": "Atualizado via API",
  "quantidade": 8
}'
```