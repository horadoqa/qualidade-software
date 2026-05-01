# ⚡ Como executar um teste no K6

No terminal, dentro da pasta do arquivo:

```bash
k6 run teste.js
```

---

## 📊 O que acontece na execução?

O K6 vai exibir no terminal:

* Número de usuários virtuais (VUs)
* Requisições por segundo (RPS)
* Tempo de resposta (média, min, max)
* Taxa de sucesso e erro
* Resultado final do teste

---

## 📈 Exemplo de saída

```text
✓ status é 200

checks.........................: 100.00% ✓ 300 ✗ 0
http_req_duration..............: avg=250ms
vus............................: 10
iterations.....................: 300
```

---

## 🚀 Dica de execução avançada

Rodar com mais usuários:

```bash
k6 run --vus 50 --duration 1m teste.js
```

---

## 🧠 Resumo

Para executar um teste no K6 você precisa:

1. Instalar a ferramenta
2. Criar um script `.js`
3. Rodar `k6 run arquivo.js`
4. Analisar os resultados no terminal

---