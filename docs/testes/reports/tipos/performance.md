# 📊 Relatório de Testes de Performance – Aplicação Web

## 🧾 1. Informações gerais

* **Aplicação:** WebApp (API + Frontend)
* **Ambiente:** Homologação
* **Data do teste:** 04/05/2026
* **Ferramenta de teste:** JMeter / k6 (simulação de carga)
* **Tipo de teste:** Carga e Estresse leve
* **Duração:** 30 minutos
* **Objetivo:** Avaliar estabilidade, latência e consumo de recursos sob carga simulada

---

## 🚀 2. Carga aplicada

* **Usuários simultâneos:** 500
* **Ramp-up:** 5 minutos
* **Requisições totais:** 180.000
* **Padrão de uso:** Login + consulta de dados + navegação básica

---

## ⚡ 3. Throughput (TPS)

* **Throughput médio:** 320 TPS (transações por segundo)
* **Pico de throughput:** 410 TPS
* **Throughput mínimo estável:** 290 TPS

📌 **Interpretação:**
A aplicação manteve boa taxa de processamento, com leve variação sob pico de carga.

---

## ⏱ 4. Tempo de resposta

| Métrica     | Resultado |
| ----------- | --------- |
| Tempo médio | 420 ms    |
| Mediana     | 380 ms    |
| P95 (95%)   | 780 ms    |
| P99 (99%)   | 1.150 ms  |
| Pico máximo | 2.300 ms  |

📌 **Interpretação:**

* Tempo médio dentro do aceitável (<500 ms)
* Aumento perceptível no P95 e P99 sob carga alta

---

## ❌ 5. Taxa de erros

* **Taxa de erro geral:** 1,8%
* **Erros observados:**

  * Timeout de requisição
  * 503 Service Unavailable em picos de carga
* **Total de erros:** 3.240 requisições

📌 **Interpretação:**
Erros começaram a aparecer acima de 400 usuários simultâneos, indicando limite de saturação parcial.

---

## 🖥 6. Consumo de infraestrutura

### 💻 CPU (Servidor de aplicação)

* **Uso médio:** 72%
* **Pico:** 94%
* **Observação:** saturação próxima do limite durante pico de TPS

---

### 🧠 Memória RAM

* **Uso médio:** 68%
* **Pico:** 85%
* **Observação:** sem vazamentos aparentes, mas crescimento constante durante carga

---

### 💽 Disco e I/O

* **Uso de disco:** estável (sem gargalos)
* **I/O wait:** baixo (<5%)

---

## 📉 7. Conclusões

* A aplicação apresentou **boa performance até ~300 TPS sustentados**
* Sob carga maior:

  * aumento de latência (P95 e P99)
  * início de erros HTTP 503
  * CPU próxima da saturação
* Memória estável, sem sinais de leak

---

## ⚠️ 8. Riscos identificados

* Possível gargalo em CPU sob alta concorrência
* Backend começa a degradar após 400 usuários simultâneos
* API sensível a picos de carga

---

## 🛠 9. Recomendações

* Escalar horizontalmente o backend (load balancing)
* Implementar cache em endpoints mais acessados
* Revisar queries e otimização de banco de dados
* Testar com 1000+ usuários para validação de limite real
* Monitoramento contínuo (APM)

---

## 📌 10. Resumo executivo

* ✔ Performance aceitável até carga moderada
* ⚠ Degradação acima de 400 usuários
* ❌ Erros começam sob alta concorrência
* 🖥 Infraestrutura próxima do limite em pico

---

👉 modelo Excel/Google Sheets: 
👉 ou relatório gerado automaticamente com k6 + Grafana (bem usado em DevOps):
