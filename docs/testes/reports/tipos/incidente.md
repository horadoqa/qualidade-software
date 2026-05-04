# 🚨 Relatório de Incidente

## 🧾 1. Informações gerais

* **ID do incidente:** INC-001
* **Título:** Indisponibilidade parcial da aplicação web
* **Sistema:** Aplicação Web (produção)
* **Ambiente:** Produção
* **Data de início:** 04/05/2026 – 14:32
* **Data de resolução:** 04/05/2026 – 15:10
* **Responsável:** Time de DevOps / SRE

---

## 🎯 2. Descrição do incidente

Foi identificada **instabilidade na aplicação web**, com aumento de erros HTTP 500 e lentidão no acesso a funcionalidades principais, afetando usuários em produção.

---

## 📊 3. Impacto

* ⚠ Usuários afetados: ~35% dos acessos
* ⚠ Funcionalidades impactadas:

  * Login intermitente
  * Atualização de perfil
  * Busca de dados
* ⚠ Sistema parcialmente indisponível durante o incidente

---

## 🔍 4. Sintomas observados

* Aumento de erros HTTP 500
* Alta latência nas requisições (acima de 3s)
* Falhas intermitentes em API de usuários
* CPU do servidor acima de 90%

---

## 🧪 5. Causa raiz (Root Cause)

Sobrecarga no servidor de aplicação devido a:

* pico de tráfego acima da capacidade prevista
* ausência de escalabilidade automática (autoscaling desativado)
* consultas ao banco de dados não otimizadas

---

## ⚡ 6. Ações tomadas

### 🚑 Mitigação imediata:

* Reinício dos serviços de aplicação
* Redirecionamento de tráfego para instância secundária
* Limitação temporária de requisições (rate limiting)

### 🔧 Correção:

* Ativação de autoscaling
* Otimização de queries críticas
* Ajuste de limite de threads da aplicação

---

## 📉 7. Resultado após correção

* Sistema estabilizado após 38 minutos
* Erros HTTP 500 normalizados (<0,5%)
* CPU voltou para ~60% de uso
* Latência média: 450 ms

---

## 📌 8. Status do incidente

* 🔴 Aberto → 🟡 Em mitigação → 🟢 Resolvido

---

## 🧠 9. Lições aprendidas

* Necessidade de monitoramento proativo de CPU e latência
* Melhorar testes de carga antes de deploy
* Implementar autoscaling obrigatório em produção
* Revisar otimização de queries do banco

---

## 🚀 10. Ações preventivas

* Configurar alertas de CPU > 80%
* Adicionar testes de performance no CI/CD
* Implementar cache em endpoints críticos
* Realizar testes de estresse periódicos

---

# 💡 Resumo

Um **incident report** serve para:

* documentar o problema
* entender o impacto
* identificar a causa raiz
* registrar a solução
* evitar que aconteça novamente

---
