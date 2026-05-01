# Listar todos os usuários

```bash
curl -X GET https://serverest.dev/usuarios
```

Resposta:

```bash
{
    "quantidade": 3,
    "usuarios": [
        {
            "nome": "Fulano da Silva",
            "email": "fulano@qa.com",
            "password": "teste",
            "administrador": "true",
            "_id": "0uxuPY0cbmQhpEz1"
        },
        {
            "nome": "Hora do QA",
            "email": "horadoqa@example.com",
            "password": "1q2w3e4r",
            "administrador": "true",
            "_id": "DuVgvBX03BbTMlGf"
        },
        {
            "nome": "Maverick da Silva",
            "email": "erickbbernardo23@gmail.com",
            "password": "123456",
            "administrador": "true",
            "_id": "pTMvvmYBAriThswT"
        }
    ]
}
```