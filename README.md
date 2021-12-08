# `macetada/fastapi`

Repositório para macetar o FastAPI com requests.

## Subindo o server

```bash
docker build -t fastapi .
docker run --rm -p 8081:80 fastapi
```

ou:

```bash
docker pull ghcr.io/macetada/fastapi:main
docker run --rm -p 8081:80 ghcr.io/macetada/fastapi:main
```

> Este procedimento deve ser feito numa máquina servidora ou num cluster.

## Pendências

- [ ] Acesso a I/O
- [ ] Acesso a banco de dados
