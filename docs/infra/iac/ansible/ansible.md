# Ansible

**Ansible** é uma ferramenta de automação de TI usada para **configurar sistemas, gerenciar servidores e implantar aplicações automaticamente**, sem precisar fazer tudo manualmente.

Ela é muito usada por administradores de sistemas e equipes de DevOps para evitar tarefas repetitivas e reduzir erros.

---

## ⚙️ O que o Ansible faz na prática?

Com o Ansible, você consegue automatizar coisas como:

* Instalar programas em vários servidores ao mesmo tempo
* Configurar máquinas automaticamente
* Atualizar sistemas
* Iniciar ou parar serviços
* Implantar aplicações na nuvem ou servidores físicos

---

## 🧠 Como ele funciona?

O Ansible funciona de forma **simples e sem agente**:

* Você não precisa instalar nada nos servidores alvo
* Ele se conecta via **SSH**
* Usa arquivos chamados **playbooks** (escritos em YAML)

---

## 📄 Exemplo de Playbook (simples)

```yaml id="ans1ex"
- name: Instalar Nginx
  hosts: servidores
  become: yes
  tasks:
    - name: Instalar pacote nginx
      apt:
        name: nginx
        state: present
```

Esse exemplo diz:
👉 “Instale o Nginx em todos os servidores listados”

---

## 🚀 Principais vantagens

* ✔️ Fácil de aprender (usa YAML)
* ✔️ Não precisa instalar agentes nos servidores
* ✔️ Automatiza tarefas repetitivas
* ✔️ Escala bem (vários servidores ao mesmo tempo)
* ✔️ Muito usado em ambientes de produção

---

## 🧰 Ferramenta importante no mercado

O Ansible é mantido pela empresa Ansible e hoje faz parte da Red Hat.

Ele é uma das ferramentas mais populares em:

* DevOps
* Cloud computing
* Administração de servidores Linux

---

## 💡 Resumo simples

Ansible é basicamente um **robô que executa tarefas em servidores automaticamente**, evitando que você precise configurar tudo manualmente um por um.

---
