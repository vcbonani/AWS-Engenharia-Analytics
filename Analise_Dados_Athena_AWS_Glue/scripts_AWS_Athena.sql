zoop-glue-estoques_zoop_bronze_parquet select plataforma, round(avg(avaliacao), 2) as media_avalicoes
from "zoop-glue-redes_sociais_zoop_silver"
group by plataforma
order by media_avalicoes desc;

SELECT * FROM "db-glue-zoop"."zoop-glue-redes_sociais_zoop_silver" limit 10;

#descobrindo os produtos mais vendidos por regiáo e canal de venda

select produto, regiao_cliente, canal_venda, sum(quantidade) as total_vendas
from "zoop-glue-vendas_zoop_silver"
group by produto, regiao_cliente, canal_venda 
order by total_vendas desc;

#descobrir produtos com maior necessidade de reposição

select produto, sum(quantidade_vendida) as total_vendida, 
       (sum(quantidade_em_estoque) - sum(quantidade_vendida)) as estoque_restante
from "zoop-glue-estoques_zoop_silver"
group by produto
order by estoque_restante asc;

#verificar a nota de avaliação e a quantidade de produto vendido

select v.produto, rs.avaliacao, sum(v.quantidade) as total_vendas
from "zoop-glue-redes_sociais_zoop_silver" rs
join "zoop-glue-vendas_zoop_silver" v on rs.produto = v.produto
group by v.produto, rs.avaliacao
order by rs.avaliacao desc;