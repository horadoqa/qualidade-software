# 🎨 Diagrama — Cadastro e Login

```mermaid id="v8k2lm"
flowchart TD

A[Início] --> B[Cadastro]

B --> C{Cadastro válido?}

C -->|Sim| D[Usuário criado com sucesso]
C -->|Não| E[Erro no cadastro]

D --> F[Login]

F --> G{Credenciais válidas?}

G -->|Sim| H[Acesso liberado /home]
G -->|Não| I[Erro de login]

H --> J[Fim - Sucesso]
E --> K[Fim - Falha]
I --> K

%% =========================
%% ESTILOS (CORES)
%% =========================

classDef startEnd fill:#D0F5D8,stroke:#2E7D32,stroke-width:2px;
classDef success fill:#C8E6C9,stroke:#1B5E20,stroke-width:2px;
classDef error fill:#FFCDD2,stroke:#C62828,stroke-width:2px;
classDef process fill:#BBDEFB,stroke:#1565C0,stroke-width:2px;
classDef decision fill:#FFF9C4,stroke:#F9A825,stroke-width:2px;

class A,J startEnd;
class D,H success;
class E,I,K error;
class B,F process;
class C,G decision;
```

---

## 🧠 O que as cores significam

* 🟢 Verde → sucesso
* 🔵 Azul → processos (Cadastro / Login)
* 🟡 Amarelo → decisões (validação)
* 🔴 Vermelho → erros/falhas
* 🟩 Verde claro → início e fim

---


