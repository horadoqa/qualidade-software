# Comandos

Aqui estão os **principais comandos do Linux**, os mais usados no dia a dia no terminal:

---

## 📁 Navegação e arquivos

* `pwd` → mostra em qual pasta você está
  **Exemplo:**

  ```bash
  $ pwd
  /home/usuario/Documentos
  ```

* `ls` → lista arquivos e pastas
  **Exemplo:**

  ```bash
  $ ls
  arquivo.txt  fotos  projetos
  ```

* `mkdir nome` → cria uma pasta
  **Exemplo:**

  ```bash
  $ mkdir estudo_linux
  ```

* `cd estudo_linux` → entra em uma pasta
  **Exemplo:**

  ```bash
  $ cd estudo_linux
  ```

* `touch arquivo.txt` → cria um arquivo vazio
  **Exemplo:**

  ```bash
  $ touch notas.txt
  ```

* `cd ..` → volta uma pasta
  **Exemplo:**

  ```bash
  $ cd ..
  ```

---

## 📄 Trabalhar com arquivos

* `cp origem destino` → copia arquivos
  **Exemplo:**

  ```bash
  $ cp arquivo.txt backup.txt
  ```

* `mv origem destino` → move ou renomeia
  **Exemplo (renomear):**

  ```bash
  $ mv antigo.txt novo.txt
  ```

  **Exemplo (mover):**

  ```bash
  $ mv arquivo.txt Documentos/
  ```

* `rm arquivo` → remove arquivo
  **Exemplo:**

  ```bash
  $ rm lixo.txt
  ```

* `rm -r pasta` → remove pasta (e tudo dentro dela ⚠️)
  **Exemplo:**

  ```bash
  $ rm -r pasta_velha
  ```

---

## 📖 Ver conteúdo de arquivos

* `cat arquivo.txt` → mostra o conteúdo
  **Exemplo:**

  ```bash
  $ cat notas.txt
  Estudar Linux hoje
  ```

* `less arquivo.txt` → navega no conteúdo
  **Exemplo:**

  ```bash
  $ less log.txt
  ```

* `head arquivo.txt` → primeiras linhas
  **Exemplo:**

  ```bash
  $ head arquivo.txt
  ```

* `tail arquivo.txt` → últimas linhas
  **Exemplo:**

  ```bash
  $ tail arquivo.txt
  ```

---

## 🔍 Buscar e filtrar

* `grep "texto" arquivo` → procura texto dentro de arquivos
  **Exemplo:**

  ```bash
  $ grep "erro" log.txt
  ```

* `find /caminho -name arquivo` → busca arquivos
  **Exemplo:**

  ```bash
  $ find /home -name notas.txt
  ```

---

## ⚙️ Permissões

* `chmod +x arquivo` → torna executável
  **Exemplo:**

  ```bash
  $ chmod +x script.sh
  ```

* `chown usuario arquivo` → muda dono do arquivo
  **Exemplo:**

  ```bash
  $ chown joao arquivo.txt
  ```

---

## 💻 Sistema e processos

* `ps` → lista processos
  **Exemplo:**

  ```bash
  $ ps
  ```

* `top` → mostra uso do sistema em tempo real
  **Exemplo:**

  ```bash
  $ top
  ```

* `kill PID` → encerra um processo
  **Exemplo:**

  ```bash
  $ kill 1234
  ```

---

## 💾 Espaço em disco

* `df -h` → mostra espaço do disco
  **Exemplo:**

  ```bash
  $ df -h
  ```

* `du -sh pasta` → tamanho de uma pasta
  **Exemplo:**

  ```bash
  $ du -sh Downloads
  ```

---

## 🌐 Rede

* `ping site.com` → testa conexão
  **Exemplo:**

  ```bash
  $ ping google.com
  ```

* `curl url` → acessa dados da internet
  **Exemplo:**

  ```bash
  $ curl https://example.com
  ```

---

## 📦 Instalar programas (depende da distro)

* Ubuntu/Debian: `apt install nome`
  **Exemplo:**

  ```bash
  $ sudo apt install git
  ```

* Fedora: `dnf install nome`
  **Exemplo:**

  ```bash
  $ sudo dnf install git
  ```

* Arch: `pacman -S nome`
  **Exemplo:**

  ```bash
  $ sudo pacman -S git
  ```

---

## 🧠 Dica importante

Se quiser aprender rápido:
👉 `man comando` mostra o manual

**Exemplo:**

```bash
$ man ls
```

---
