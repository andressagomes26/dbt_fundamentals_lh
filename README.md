<h1 align="center"><font color = #d75413>Fundamentos do DBT</font></h1>

<div align="center"><img src='https://seeklogo.com/images/D/dbt-logo-E4B0ED72A2-seeklogo.com.png' style='width: 50%;'></div>

## <font color = #d75413>O que é DBT?</font>
O dbt é um fluxo de trabalho de transformação usado para modularizar e centralizar seu código analítico, produzir resultados de maior qualidade, colaborar em modelos de dados, criar versões deles e teste e documentar consultas.

## <font color = #d75413>Configurações</font>

### Ambiente Virtual
- Criar ambiente virtual
```shell
python -m venv venv
```

- Ativar amvbiente virtual
```shell
.\venv\Scripts\Activate.ps1
```

- Instalar dependências
```shel
pip install -r requirements.txt
```

### Configurações Iniciais dbt

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

### Executar Projeto

- Executar os modelos 
```shell
dbt run
```

- Executar um modelo específico
```shell
dbt run --select nome_arquivo
```

- Executar todos os modelos anteriores e posteriores
```shell
dbt run --select +nome_arquivo+
```

- Executar os modelo e os testes
```shell
dbt build --select nome_arquivo
```

- Gerar código compilado
```shell
dbt compile --select nome_arquivo
```

### Testes
- Executa os testes
```shell
dbt test --select nome_arquivo
```

- Executa os testes na source
```shell
dbt test --select "source:*"
```

- Executa os testes para uma tabela
```shell
dbt test --select source:name.tabela
```

### Pacotes

- Instalar pacote (dbt_utils, dbt_date)
```shell
dbt deps
```

### Documentação

- Criar dbt docs
```shell
dbt docs generate
```

- Enviar
```shell
dbt docs serve
```

## <font color = #d75413>Referências</font>
[Documentação dbt](https://docs.getdbt.com/docs/introduction)

[dbt Fundamentals](https://courses.getdbt.com/courses/take/fundamentals/lessons/30210802-welcome)

[Lighthouse Indicium](https://materiais.indicium.tech/lighthouse-aguardar-nova-turma)