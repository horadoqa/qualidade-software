# 🧪 Criar o script de teste

## 💻 Exemplo básico de script (`teste.js`):

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
