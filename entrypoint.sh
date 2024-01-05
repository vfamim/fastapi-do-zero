#!/bin/sh

# Executa as migraçÕes do bando de dados
poetry run alembic upgrade head

# Inicia a aplicação
poetry run uvicorn --host 0.0.0.0 --port 8000 fast_zero.app:app
