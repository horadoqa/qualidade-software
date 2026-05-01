# Atualizar dados do Usuário

Para esta operação utilizamos:

Comando:

```bash
curl -X 'PUT' \
  'https://serverest.dev/usuarios/<ID_DO_USUARIO>' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
  "nome": "Hora do QA 2",
  "email": "horadoqa@example.com",
  "password": "1q2w3e4r",
  "administrador": "true"
}'
```

Resposta: 

```bash
{
    "message": "Registro alterado com sucesso"
}
```