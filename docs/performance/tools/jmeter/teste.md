# ▶️ Como Criar um Teste Simples

1. Abra o JMeter
2. Crie um **Thread Group**
3. Adicione um **HTTP Request**
4. Configure:

   * URL da aplicação
   * Método (GET, POST, etc.)
5. Adicione um **Listener** (ex: View Results Tree)
6. Execute o teste ▶️

---

## 📈 Execução em Linha de Comando (Recomendado)

Para testes reais de performance, evite usar a interface gráfica.

```bash
jmeter -n -t teste.jmx -l resultado.jtl -e -o relatorio/
```

Parâmetros:

* `-n`: modo não-GUI
* `-t`: arquivo de teste
* `-l`: arquivo de resultados
* `-e -o`: geração de relatório HTML

---

