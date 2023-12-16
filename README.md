# dbt_fundamentals_lh
dbt_fundamentals_lh

## Configurações Windowns

### Ambiente virtual
- Criar ambiente: 
```shell
python -m venv venv
```

- Ativar amvbiente 
```shell
.\venv\Scripts\Activate.ps1
```

- Instalar dependências
```shel
pip install -r requirements.txt
```

### Configurações iniciais dbt

- Instalar dbt-bigquery
```shell
pip install dbt-bigquery
```

- Criar projeto inicial
```shell
dbt init
```

- Testar a conexão do banco de dados
```shell
dbt debug
```

- Instalar a CLI glcoud
```shell
gcloud init
```

- Executar
```shell
dbt run
```
