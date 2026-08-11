# AWS Engenharia de Analytics

Repositório mestre com os projetos práticos desenvolvidos na trilha de **Engenharia de Analytics** da Alura, utilizando serviços da AWS (Glue, Athena, S3) para construir uma pipeline de dados completa: da ingestão e tratamento (ETL) até a análise e geração de insights de negócio.

O cenário utilizado é o de uma loja fictícia, a **Zoop**, cujos dados de vendas, estoque e redes sociais são processados e analisados ao longo dos dois projetos abaixo.

---

## Arquitetura geral

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
      ETL_AWS_Glue (tratamento)
                │
                ▼
         Amazon S3 (Silver)
                │
        ┌───────┴───────┐
        ▼               ▼
Analise_Dados_Athena_AWS_Glue
 (notebooks PySpark)   Amazon Athena
        │               │
        ▼               ▼
     Gráficos        Respostas às
                    perguntas de negócio
```

---

## Estrutura do repositório

```text
AWS-Engenharia-Analytics/
│
├── README.md
├── ETL_AWS_Glue/
│   ├── README.md
│   ├── etl_estoques.py
│   ├── etl_redes_sociais.py
│   └── etl_vendas.py
│
└── Analise_Dados_Athena_AWS_Glue/
    ├── README.md
    ├── scripts_AWS_Athena.sql
    ├── zoop_dados_1.ipynb
    └── zoop_dados_2.ipynb
```

---

## Projetos

### 📥 [ETL_AWS_Glue](./ETL_AWS_Glue)

Jobs de ETL em **PySpark**, executados no **AWS Glue Studio**, responsáveis por transformar os dados brutos da camada **Bronze** (vendas, estoque e redes sociais) e disponibilizá-los tratados na camada **Silver**, já catalogados no AWS Glue Data Catalog.

### 📊 [Analise_Dados_Athena_AWS_Glue](./Analise_Dados_Athena_AWS_Glue)

Consultas SQL no **Amazon Athena** e notebooks **AWS Glue (PySpark)** que exploram os dados já tratados na camada Silver, respondendo perguntas de negócio como produtos mais vendidos por região/canal, necessidade de reposição de estoque e relação entre avaliações e volume de vendas.

---

## Tecnologias utilizadas

- Amazon S3
- AWS Glue Studio (Jobs e Notebooks)
- AWS Glue Data Catalog
- AWS Glue Crawlers
- Amazon Athena
- PySpark / Apache Spark
- AWS Glue DynamicFrame
- Python (Pandas, Matplotlib, Seaborn)

---

## Fluxo da pipeline

1. Dados brutos armazenados no Amazon S3 (Bronze)
2. Catalogação automática com AWS Glue Crawler
3. Tratamento dos dados pelos ETL Jobs (`ETL_AWS_Glue`)
4. Escrita dos dados tratados na camada Silver
5. Análise dos dados via Amazon Athena e notebooks Glue (`Analise_Dados_Athena_AWS_Glue`)
6. Geração de insights para responder perguntas de negócio

---

## Resultado

A pipeline completa permite transformar dados brutos de uma loja fictícia em insights acionáveis, respondendo perguntas como:

> **Quais produtos vendem mais em cada região e canal, quais precisam de reposição urgente de estoque, e como as avaliações nas redes sociais se relacionam com o volume de vendas?**

---

## Aprendizados

Este repositório consolida a prática de uma pipeline de dados completa na AWS, aplicando conceitos de:

- Engenharia de Analytics ponta a ponta (ETL + análise)
- Data Lakes e arquitetura em camadas (Bronze e Silver)
- AWS Glue (Jobs, Notebooks e Data Catalog)
- Apache Spark com PySpark
- Consultas SQL com Amazon Athena
- Visualização de dados com Matplotlib e Seaborn
- Governança e organização de dados

---

## Autor

**Vinícius Cunha**

LinkedIn: https://www.linkedin.com/in/viniciuscunhadata

GitHub: https://github.com/vcbonani
