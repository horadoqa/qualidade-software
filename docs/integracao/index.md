### 🧪 O que são Testes de Integração

Testes de integração são um tipo de teste de software que verifica se **diferentes partes do sistema funcionam corretamente quando trabalham juntas**.

Diferente dos testes unitários (que testam partes isoladas), aqui o foco é validar a comunicação entre componentes, como por exemplo:

* Backend ↔ Banco de dados
* Serviço A ↔ Serviço B
* API ↔ Sistema externo
* Camadas de uma aplicação (controller, service, repository)

---

### 📌 Exemplo simples

Imagine uma API de usuários:

1. O sistema recebe uma requisição `POST /usuarios`
2. O serviço processa os dados
3. O banco de dados salva o usuário
4. A API retorna a resposta

Um teste de integração verifica se **todo esse fluxo funciona corretamente junto**, e não apenas cada parte isolada.

---

### 🎯 Importância dos Testes de Integração

✔️ **Detectam problemas entre componentes**
Mesmo que cada parte funcione sozinha, podem ocorrer falhas na comunicação entre elas.

✔️ **Garantem que o sistema funciona como um todo**
Validam fluxos reais de uso da aplicação.

✔️ **Reduzem erros em produção**
Problemas de integração são comuns e perigosos, especialmente com banco de dados e APIs externas.

✔️ **Aumentam a confiança no sistema**
Ajuda equipes a fazer deploy com mais segurança.

✔️ **Complementam testes unitários**
Enquanto os unitários testam “peças”, os de integração testam “o conjunto montado”.

---

### ⚖️ Resumo

* Testes unitários → testam partes isoladas
* Testes de integração → testam a interação entre partes
* Testes de sistema → testam o sistema completo

---

### 🚀 Em uma frase:

Testes de integração garantem que os diferentes módulos de um sistema funcionam corretamente quando conectados entre si.

---

## Aqui está uma tabela comparando as três ferramentas:

| Característica        | Postman                                   | Insomnia                           | Rest Assured                                |
| --------------------- | ----------------------------------------- | ---------------------------------- | ------------------------------------------- |
| **Tipo**              | Ferramenta GUI (interface gráfica)        | Ferramenta GUI (interface gráfica) | Biblioteca de código (Java)                 |
| **Uso principal**     | Teste e desenvolvimento de APIs           | Teste e desenvolvimento de APIs    | Testes automatizados de APIs                |
| **Interface**         | Visual, rica em recursos                  | Visual, mais simples e leve        | Não possui interface (código)               |
| **Automação**         | Sim (coleções e scripts)                  | Limitada (menos robusta)           | Alta (foco em testes automatizados)         |
| **Linguagem**         | Independente de linguagem                 | Independente de linguagem          | Java                                        |
| **Tipos de API**      | REST, GraphQL                             | REST, GraphQL                      | Principalmente REST                         |
| **Facilidade de uso** | Fácil para iniciantes                     | Muito fácil e minimalista          | Exige conhecimento de programação           |
| **Melhor para**       | Testes manuais + colaboração              | Testes rápidos e leves             | Testes automatizados em projetos Java       |
| **Execução em CI/CD** | Sim                                       | Limitado                           | Sim (muito usado)                           |
| **Ponto forte**       | Ecossistema completo e recursos avançados | Simplicidade e leveza              | Automação e integração com testes unitários |

---

### 🧠 Resumo rápido

* **Postman** → mais completo e usado em equipes e testes manuais/automatizados
* **Insomnia** → mais leve e direto ao ponto
* **Rest Assured** → focado em automação de testes em Java

---

