# ❌ Deletar produto

Para apagar um produto precisamos passar o <ID_DO_PRODUTO>:

```bash
curl -X DELETE https://serverest.dev/produtos/ID_DO_PRODUTO \
-H "Authorization: Bearer SEU_TOKEN"
```