# <h1 align="center"><font color = #119fbf>Fundamentos do DBT</font></h1>

<div align="center"><img src='https://seeklogo.com/images/D/dbt-logo-E4B0ED72A2-seeklogo.com.png' style='width: 50%;'></div-->

## O que é DBT?
O dbt é um fluxo de trabalho de transformação usado para modularizar e centralizar seu código analítico, produzir resultados de maior qualidade, colaborar em modelos de dados, criar versões deles e teste e documentar consultas.

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

### Executar projeto

- Iniciar projeto
```shell
dbt run
```

- Rodar modelo
```shell
dbt run --select nome_arquivo
```

- Rodar todos os modelos anteriores e posteriores
```shell
dbt run --select +nome_arquivo+
```

- Rodar modelo e executar os testes
```shell
dbt build --select nome_arquivo
```

- Gerar código compilado
```shell
dbt compile --select nome_arquivo
```

### Testes
- Testar arquivos
```shell
dbt test --select nome_arquivo
```

- Testes na source
```shell
dbt test --select "source:*"
```

- Testar uma tabela
```shell
dbt test --select source:name.tabela
```

## Pacotes

- Instalar pacote (dbt_utils, dbt_date)
```shell
dbt deps
```
