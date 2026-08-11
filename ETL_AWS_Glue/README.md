# Implementando um pipeline ETL com AWS Glue

Repositório contendo os scripts desenvolvidos no **AWS Glue Studio** para implementação de uma pipeline ETL em um projeto de **Engenharia de Analytics** utilizando serviços da AWS.

Os scripts foram desenvolvidos durante o curso “Engenharia de Analytics: Implementando um pipeline ETL com AWS Glue” da Alura.

Os jobs foram desenvolvidos em **PySpark** e executados no **AWS Glue**, realizando a transformação de dados armazenados na camada **Bronze** do Amazon S3 e disponibilizando-os na camada **Silver**, catalogados automaticamente no **AWS Glue Data Catalog**.

---

## Arquitetura da solução

```text
          Amazon S3 (Bronze)
                  │
                  ▼
         AWS Glue Crawler
                  │
                  ▼
        AWS Glue Data Catalog
                  │
                  ▼
        AWS Glue ETL Jobs
                  │
                  ▼
         Amazon S3 (Silver)
                  │
                  ▼
            Amazon Athena
```

---

## Estrutura do repositório

```text
AWS-ETL-Jobs/
│
├── README.md
├── etl_estoques.py
├── etl_redes_sociais.py
└── etl_vendas.py
```

---

## Tecnologias utilizadas

- Amazon S3
- AWS Glue Studio
- AWS Glue ETL Jobs
- AWS Glue Data Catalog
- AWS Glue Crawlers
- Amazon Athena
- PySpark
- AWS Glue DynamicFrame
- Apache Spark

---

# ETL Jobs

## etl_redes_sociais.py

Realiza o processamento da base de redes sociais.

### Principais transformações

- Leitura dos dados a partir do Glue Data Catalog
- Conversão de DynamicFrame para Spark DataFrame
- Extração da nota da avaliação presente no texto dos comentários
- Remoção da expressão "Nota X" do comentário
- Conversão para DynamicFrame
- Padronização dos nomes e tipos das colunas
- Escrita da tabela tratada na camada Silver em formato Parquet

---

## etl_estoques.py

Responsável pelo tratamento da base de estoques.

### Principais transformações

- Padronização dos nomes dos produtos
- Conversão da coluna de datas para o tipo Date
- Mapeamento dos tipos das colunas
- Escrita da camada Silver
- Atualização automática do Glue Data Catalog

---

## etl_vendas.py

Job responsável pelo tratamento da base de vendas.

### Principais transformações

- Criação de uma coluna única de data a partir de dia, mês e ano
- Conversão dos estados brasileiros para suas respectivas siglas utilizando UDF
- Preenchimento automático de categorias ausentes utilizando um dicionário de produtos
- Conversão entre DataFrame e DynamicFrame
- Padronização dos nomes das colunas
- Escrita da camada Silver em formato Parquet

---

## Fluxo da pipeline

1. Dados armazenados no Amazon S3 (Bronze)
2. Catalogação automática com AWS Glue Crawler
3. Registro das tabelas no Glue Data Catalog
4. Execução dos ETL Jobs no AWS Glue
5. Escrita dos dados tratados na camada Silver
6. Consultas analíticas utilizando Amazon Athena

---

## Resultado

Após a execução dos ETL Jobs, os dados ficam disponíveis para consultas analíticas no **Amazon Athena**, permitindo responder perguntas de negócio, como:

> **Qual rede social apresenta as melhores avaliações dos produtos de uma loja de eletrônicos?**

---

## Aprendizados

Este projeto permitiu aplicar conceitos de:

- Engenharia de Analytics
- ETL em ambiente Cloud
- AWS Glue
- Apache Spark com PySpark
- DynamicFrames
- Data Lakes
- Arquitetura Bronze e Silver
- Data Catalog
- Consultas SQL com Amazon Athena
- Governança e organização de dados

---

## Autor

**Vinícius Cunha**

LinkedIn: https://www.linkedin.com/in/viniciuscunhadata

GitHub: https://github.com/vcbonani
