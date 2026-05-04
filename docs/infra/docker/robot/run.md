# Executando o Robot Framework com Docker

Na prática, você só precisa rodar o Robot dentro de um container que já tenha Python e o próprio Robot Framework instalados.

### 🔧 Forma mais comum (imagem pronta)

Você pode usar uma imagem já preparada, como:

* `robotframework/robotframework`

Exemplo básico:

```bash
docker run --rm -v $(pwd)/tests:/tests robotframework/robotframework robot /tests
```

### 📁 O que esse comando faz:

* `--rm` → remove o container depois de rodar
* `-v $(pwd)/tests:/tests` → monta sua pasta local de testes dentro do container
* `robot /tests` → executa os testes dentro do container

---

### 🧪 Exemplo com resultado em relatório

```bash
docker run --rm \
  -v $(pwd)/tests:/tests \
  -v $(pwd)/results:/results \
  robotframework/robotframework \
  robot --outputdir /results /tests
```

Isso vai gerar:

* `output.xml`
* `report.html`
* `log.html`

na pasta `results` da sua máquina.

---

### 🧱 Quando vale mais a pena usar Docker com Robot Framework?

* Evitar instalar Python/depêndencias localmente
* Padronizar ambiente em CI/CD (GitHub Actions, GitLab, Jenkins)
* Rodar testes em múltiplas versões de Python sem conflito

---

### ⚠️ Dica importante

Se seus testes usam bibliotecas extras (ex: Selenium, Requests), talvez você precise:

* criar uma **Dockerfile customizada**, ou
* instalar via `pip` dentro do container

Exemplo simples de Dockerfile:

```dockerfile
FROM python:3.11

RUN pip install robotframework robotframework-seleniumlibrary

WORKDIR /tests

CMD ["robot", "/tests"]
```

---
