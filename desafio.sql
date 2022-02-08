#Nome dos integrantes
#Jeovane Dos Santos Santos
#Maria Gyseli
#Bruno Pereira


#Adicionar uma nova coluna
alter table cliente add column rg varchar(10)
 not null after senha;
 
#Removendo uma coluna
ALTER TABLE cliente DROP rg;

#Incerindo dados
#1-Este exercício é livre para você 
#inserir dados nas tabelas. 
#Adicione vários dados em todas 
#as tabelas. Crie vários clientes, 
#com vários endereços. Insira muitos 
#produtos em vários departamentos. 
#Crie pedidos em várias datas com 
#meses diferentes (serão necessários 
#para os próximos exercícios).
# Cadastrando clientes
insert into cliente(id, nome, email, senha, cpf) values
	(1, "Jeovane dos Santos Santos", "jeovanedos2santos@gmail.com", "123456","000.000.000-00");
    
insert into cliente(id, nome, email, senha, cpf) values
	(2, "Maria Gisely", "maria@gmail.com", "123456","000.000.000-01");
    
insert into cliente(id, nome, email, senha, cpf) values
	(3, "Bruno Pereira", "bruno@gmail.com", "123456","000.000.000-02");
    
# Cadastrando endereco
INSERT INTO endereco VALUES (10,"Av", "Brasil",100,"","Centro","Sao Paulo","01234-567","SP",1);
INSERT INTO endereco VALUES (11,"Rua","Major Silva",12,"Ap 12A","Pitangueiras","Itapecerica da Serra","98765-432","SP",1);
INSERT INTO endereco VALUES (12,"Rua","Heitor Vila Lobos",98,"Casa 2","Vila das Flores","Osasco","06543-123","SP",2);
INSERT INTO endereco VALUES (13,"Av","Raquel Meyer",173,"Ap 42 Bl 1","Centro","Vitoria","32987-122","ES",3);

# Cadastrando departamento
insert into departamento(codigo, nome, descricao) values
	(1, "Tecnologia", "Produtos para computadores");
    
insert into departamento values
	(2, "Eletronicos", "Qualquer aparelho diferente de computador");

# Cadastrando produtos
insert into produto values (1,"Computador DELL", "RAM 8GB e SSD 254GB", 2500.0, 3, "", 1);
insert into produto values (2,"Computador APPEL", "RAM 8GB e SSD 480GB", 8000.0, 1, "", 1);
insert into produto values (3,"Computador POSITIVO", "RAM 4GB e HD 32GB", 1500.00, 25, "", 1);

insert into produto values (4,"Geladeira", "500 litros", 3500.00, 2, "", 2);
insert into produto values (5,"Tv", "LED 42 polegadas", 4500.00, 5, "", 2);

# Cadastrando fazendo pedido
INSERT INTO pedido VALUES (1,"2021-01-10",4000,"F",0,4000,1);
INSERT INTO pedido VALUES (2,"2021-02-01",70,"F",0,70,2);
INSERT INTO pedido VALUES (3,"2021-02-01",70,"F",0,70,2);

# Cadastrando cadastrando itens
INSERT INTO item_pedido VALUES (1, 3, 4000,  12000,1, 1);
INSERT INTO item_pedido VALUES (2, 2, 35.0,  70.0,2, 2);

# Ver todos os departamentos
select * from produto;

# 2 - Quantos clientes estão cadastrados na sua base?

select count(id) as "Total de clientes" from cliente;

# 3 - Qual o produto mais caro?

select * from produto order by preco desc limit 1;

# 4 - Qual o produto mais barato?

selec min(preco) from produto;

# 5 - Mostre todos os produtos com seus respectivos 
#departamentos

select * from produto inner join departamento
	on produto.departamento_codigo = departamento.codigo ;
    
# 6 - Quantos produtos há em cada 
#departamento? Exiba o nome do 
#departamento e a quantidade de 
#produtos que há em cada um. 
#(pense em SUM e GROUP BY);

select produto.departamento_codigo, sum(produto.estoque) as "quantidade de 
produtos em cada departamento", departamento.codigo, departamento.nome  from produto inner join departamento
    on departamento.codigo = produto.departamento_codigo
	group by departamento.nome;
	

	
# 7 - Mostre os dados dos pedidos, incluindo 
#nomes dos clientes e nomes dos produtos que foram vendidos.
select * from pedido inner join item_pedido 
	on pedido.numero = item_pedido.pedido_numero
    inner join produto on produto.codigo = item_pedido.produto_codigo
    inner join cliente on pedido.cliente_id = cliente.id;
# 8 - Mostre quantos pedidos foram feitos 
#por mês no ano de 2022 (caso você tenha 
#registros neste ano, senão escolha um ano 
#que você tenha cadastrado - Novamente pense 
#em COUNT e GROUP BY).

select cliente.nome, produto.nome , pedido.data_pedido, pedido.valor_bruto,
	pedido.desconto, pedido.valor_final, pedido.numero from
    pedido inner join item_pedido
    on pedido.numero = item_pedido.pedido_numero
    inner join produto on produto.codigo = item_pedido.produto_codigo
    inner join cliente on pedido.cliente_id = cliente.id
    order by pedido.data_pedido;


# 9 - Mostre quanto foi faturado por mês 
#(leve em conta o valor total de cada pedido 
#- novamente pense em GROUP BY e SUM).

select data_pedido, sum(valor_final) as "Faturamento por mês"  from pedido
group by data_pedido;

# 10 - Mostre o valor total do estoque por departamento.
select departamento_codigo, sum(preco*estoque) from produto
group by departamento_codigo;



