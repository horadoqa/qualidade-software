# 🧪 Criar o script de teste com k6-reporter

Abaixo está um exemplo básico de script de teste utilizando o K6.

Este exemplo realiza requisições HTTP e valida o status da resposta, além de gerar relatórios em HTML e no terminal.

---

## 📄 Exemplo básico (`teste.js`)

```javascript
import http from 'k6/http';
import { check } from 'k6';

// 📊 Relatórios adicionais
import { htmlReport } from "https://raw.githubusercontent.com/benc-uk/k6-reporter/main/dist/bundle.js";
import { textSummary } from "https://jslib.k6.io/k6-summary/0.0.1/index.js";

export let options = {
  vus: 10,
  duration: '30s',
};

export default function () {
  let res = http.get('https://front.serverest.dev/');

  check(res, {
    'status é 200': (r) => r.status === 200,
  });
}

// 📊 Geração de relatórios ao final do teste
export function handleSummary(data) {
  return {
    "summary.html": htmlReport(data),
    // Mostrar o resultado tanto na linha de comando quanto no summary.html
    stdout: textSummary(data, { indent: " ", enableColors: true }),
  };
}
```

---

## 📌 O que este script faz?

* Executa **10 usuários virtuais (VU)** por **30 segundos**
* Realiza requisições GET para `https://front.serverest.dev/`
* Valida se a resposta retorna status **200**
* Gera:
  * 📄 relatório HTML (`summary.html`)
  * 🖥️ resumo no terminal

---


