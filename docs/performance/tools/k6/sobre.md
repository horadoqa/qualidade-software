# ⚡ K6 — Testes de Performance

[K6](https://grafana.com/docs/k6/latest/) é uma ferramenta moderna de **testes de performance e carga** voltada principalmente para APIs e aplicações web. Ela permite simular múltiplos usuários virtuais acessando um sistema ao mesmo tempo, ajudando a identificar gargalos, lentidão e limites de escalabilidade.

---

## 🎯 O que é o K6?

O K6 é uma ferramenta open-source desenvolvida pela Grafana Labs que permite escrever testes de performance em **JavaScript**, com foco em simplicidade, automação e integração com pipelines de CI/CD.

---

## 🚀 Para que serve?

O K6 é utilizado para:

* Simular múltiplos usuários simultâneos
* Testar performance de APIs e sistemas web
* Identificar gargalos de desempenho
* Validar tempo de resposta de endpoints
* Garantir escalabilidade do sistema

---

## 🧪 Tipos de teste com K6

* ⚡ **Load Testing** → valida carga esperada
* 💥 **Stress Testing** → testa limites do sistema
* 📈 **Spike Testing** → simula picos de acesso
* 🔁 **Soak Testing** → testes longos de estabilidade

---

## 💻 Exemplo básico de script

```javascript
import http from 'k6/http';
import { check, sleep } from 'k6';

export let options = {
  vus: 10, // usuários virtuais
  duration: '30s',
};

export default function () {
  let res = http.get('https://front.serverest.dev/');

  check(res, {
    'status é 200': (r) => r.status === 200,
    'tempo < 2s': (r) => r.timings.duration < 2000,
  });

  sleep(1);
}
```

---

## 📊 Principais métricas

Durante a execução, o K6 coleta:

* ⏱ Tempo de resposta
* 📉 Taxa de erros
* 👥 Usuários simultâneos (VUs)
* 🔁 Requisições por segundo (RPS)
* 📡 Latência do sistema

---

## 🔗 Integração com CI/CD

O K6 pode ser integrado facilmente com:

* GitHub Actions
* GitLab CI
* Jenkins
* Grafana / InfluxDB (para dashboards)

---

## 📌 Vantagens

* Código simples em JavaScript
* Leve e rápido de executar
* Fácil integração com pipelines
* Excelente para APIs REST
* Suporte a métricas detalhadas

---

## ⚠️ Limitações

* Não possui interface gráfica nativa
* Foco maior em backend (APIs)
* Requer conhecimento básico de JS

---

## 🧠 Resumo

O K6 é uma ferramenta poderosa para garantir que aplicações web e APIs consigam suportar carga real de usuários, ajudando times de QA e DevOps a manter performance e estabilidade em produção.

---
