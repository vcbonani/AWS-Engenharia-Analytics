# Análise de dados com Amazon Athena e AWS Glue

Repositório contendo os scripts e notebooks desenvolvidos para consulta e análise de dados utilizando **Amazon Athena** e **AWS Glue**, em um projeto de **Engenharia de Analytics** com serviços da AWS.

Os arquivos foram desenvolvidos durante o curso "Engenharia de Analytics: analisando dados com Amazon Athena e AWS Glue" da Alura.

Os notebooks foram desenvolvidos em **PySpark** e executados no **AWS Glue**, e as consultas analíticas foram realizadas com **Amazon Athena** sobre os dados já tratados na camada **Silver**, catalogados no **AWS Glue Data Catalog**, respondendo perguntas de negócio de uma loja fictícia (Zoop) sobre vendas, estoque e redes sociais.

---

## Arquitetura da solução

```text
        Amazon S3 (Silver)
                │
                ▼
      AWS Glue Data Catalog
                │
        ┌───────┴───────┐
        ▼               ▼
  AWS Glue Notebooks   Amazon Athena
   (PySpark/pandas)    (consultas SQL)
        │               │
        ▼               ▼
     Gráficos        Respostas às
   (matplotlib/       perguntas de
     seaborn)            negócio
```

---

## Estrutura do repositório

```text
AWS-Engenharia-Analytics/
│
├── README.md
├── scripts_AWS_Athena.sql
├── zoop_dados_1.ipynb
└── zoop_dados_2.ipynb
```

---

## Tecnologias utilizadas

- Amazon S3
- AWS Glue Studio Notebooks
- AWS Glue Data Catalog
- Amazon Athena
- PySpark
- AWS Glue DynamicFrame
- Apache Spark
- Python (Pandas, Matplotlib, Seaborn)

---

# Análises

## scripts_AWS_Athena.sql

Consultas SQL executadas diretamente no Amazon Athena sobre as tabelas da camada Silver.

### Principais consultas

- Avaliação média por plataforma de rede social
- Produtos mais vendidos por região e canal de venda
- Produtos com maior necessidade de reposição de estoque
- Relação entre nota de avaliação e quantidade de produto vendido (join entre vendas e redes sociais)

---

## zoop_dados_1.ipynb

Notebook AWS Glue (PySpark) responsável pela análise da base de **vendas**.

### Principais transformações

- Leitura da tabela de vendas a partir do Glue Data Catalog
- Conversão de DynamicFrame para Spark DataFrame e depois para Pandas
- Agrupamento de vendas por produto e região
- Seleção dos 5 produtos mais vendidos
- Visualização do volume de vendas por produto e região (gráfico de barras)
- Agrupamento e visualização do volume de vendas por canal de venda

---

## zoop_dados_2.ipynb

Notebook AWS Glue (PySpark) responsável pela análise da base de **estoques**.

### Principais transformações

- Leitura da tabela de estoques a partir do Glue Data Catalog
- Conversão de DynamicFrame para Spark DataFrame e depois para Pandas
- Agrupamento por produto, somando quantidade vendida e quantidade recebida
- Cálculo do estoque restante (recebidos − vendidos)
- Seleção dos 10 produtos com menor estoque restante
- Visualização dos produtos com maior necessidade de reposição (gráfico de barras horizontal)

---

## Fluxo da análise

1. Dados já tratados e catalogados na camada Silver (Glue Data Catalog)
2. Consultas analíticas diretas via Amazon Athena
3. Leitura das mesmas tabelas nos notebooks AWS Glue
4. Processamento e agregações com PySpark/Pandas
5. Geração de gráficos com Matplotlib/Seaborn
6. Interpretação dos resultados para responder às perguntas de negócio

---

## Resultado

Combinando consultas SQL no Amazon Athena e notebooks PySpark no AWS Glue, os dados tratados ficam disponíveis para responder perguntas de negócio, como:

> **Quais produtos vendem mais em cada região e canal, e quais precisam de reposição urgente de estoque?**

---

## Aprendizados

Este projeto permitiu aplicar conceitos de:

- Engenharia de Analytics
- Consultas SQL com Amazon Athena
- AWS Glue Studio Notebooks
- Apache Spark com PySpark
- DynamicFrames
- Data Lakes e arquitetura em camadas (Silver)
- Data Catalog
- Visualização de dados com Matplotlib e Seaborn
- Geração de insights de negócio a partir de dados de vendas, estoque e redes sociais

---

## Autor

**Vinícius Cunha**

LinkedIn: https://www.linkedin.com/in/viniciuscunhadata

GitHub: https://github.com/vcbonani
