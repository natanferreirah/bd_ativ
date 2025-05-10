create database loja;
use loja;
CREATE TABLE vendas (
    id_venda INT PRIMARY KEY,
    cliente VARCHAR(100),
    cidade VARCHAR(100),
    produto VARCHAR(100),
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    data_venda DATE
);
insert into vendas (id_venda, cliente, cidade, produto, quantidade, preco_unitario, data_venda) values
(1, 'Ana', 'São Paulo', 'Camiseta', 2, 50.00, '2024-01-10'),
(2, 'Bruno', 'Rio de Janeiro', 'Calça', 1, 120.00, '2024-02-05'),
(3, 'Ana', 'São Paulo', 'Jaqueta', 1, 250.00, '2024-03-15'),
(4, 'Carla', 'Belo Horizonte', 'Camiseta', 3, 50.00, '2024-04-02'),
(5, 'Daniel', 'Fortaleza', 'Camiseta', 1, 50.00, '2024-04-20'),
(6, 'Bruno', 'Rio de Janeiro', 'Camiseta', 2, 50.00, '2024-06-01');
insert into vendas() values
(7, 'Fernando', 'Ceará', 'Jaqueta', null, 50.00, '2024-05-01'),
(8, 'Bruno', 'Rio de Janeiro', 'Calça', null, 50.00, '2024-06-05');

/*Q-01*/
select * from vendas;

/*Q-02*/
select distinct cliente from vendas;

/*Q-03*/
select cidade from vendas
where cidade = 'São Paulo';

/*Q-04*/
select * from vendas
where produto = 'Camiseta'
order by data_venda desc;

/*Q-05*/
select 
    produto,
    SUM(quantidade),
    AVG(preco_unitario)
from 
	vendas
group by 
	produto;
    
/*Q-06*/
select cliente, cidade, produto, quantidade from vendas
having quantidade >=3
order by quantidade;

/*Q-07*/
select cliente, produto, quantidade, data_venda from vendas
order by data_venda
limit 3;

/*Q-08*/
select cliente, quantidade from vendas
where quantidade is null;

/*Q-09*/
select cliente as Nome_cliente from vendas;

/*Q-010*/
select preco_unitario as preco_unidade from vendas
group by preco_unidade
order by preco_unidade;
 
show databases;