#Nome dos integrantes

#Jeovane Dos Santos Santos
#Maria Gisele
#Bruno Pereira


#Adicionar uma nova coluna
alter table cliente add column rg varchar(10)
 not null after senha;
 
#Removendo uma coluna
ALTER TABLE cliente DROP rg;

#Inserindo dados
#1-Este exercício é livre para você 
#inserir dados nas tabelas. 
#Adicione vários dados em todas 
#as tabelas. Crie vários clientes, 
#com vários endereços. Insira muitos 
#produtos em vários departamentos. 
#Crie pedidos em várias datas com 
#meses diferentes (serão necessários 
#para os próximos exercícios).

-- tabela departamento

INSERT INTO departamento VALUES (null, "Tecnologia", "Equipamentos, computadores, tablets");
INSERT INTO departamento VALUES (null, "Acessorios", "Cabos, adaptadores, carregadores");
INSERT INTO departamento VALUES (null, "Games", "Jogos, Consoles, Acessórios");
INSERT INTO departamento VALUES (null, "Eletronicos", "TV, Áudio e Cinema"); 


-- tabela produto

INSERT INTO produto VALUES (null, "Computador Ultima Geração","Computaodr i9 32Gb Ram 1TbHD, Placa GTX1090",4000.0,3,"computador.jpg",1);
INSERT INTO produto VALUES (null, "Notebook Ultima Geração","Notebook i7 16 Gb Ram 500Gb HD SSD",3850.00,5,"notebook.jpg",1);
INSERT INTO produto VALUES (null, "Cabo USB C","Cabo USB 2M para carregar celulares",50.0,20,"cabousb.jpg",2);
INSERT INTO produto VALUES (null, "Conector USB","Conector USB para recarga em tomada 3A",35,15,"conector.jpg",2);
INSERT INTO produto VALUES (null, "Console XBOX One","Console XBOX One com Halo e 2 controles",1999.90,3,"xbox.jpg",3);
INSERT INTO produto VALUES (null, "Console Playstation 5","Nao acompanha jogo, vem com 1 controle",2999.90,2,"ps5.jpg",3);
INSERT INTO produto VALUES (null, "Smartv TV Full HD 43","HDR Plus, 3 HDMI, 2 USB, Wifi Miracast",2100.00,5,"tv43.jpg",4);


-- tabela cliente

INSERT INTO cliente VALUES (null, "Jose Alberto Neves","josealberto@mail.com","123456","987.654.321-00");
INSERT INTO cliente VALUES (null, "Antonio Oliveira","antoniooli@mail.com","987654","765.432.987.10");
INSERT INTO cliente VALUES (null, "Regina Brito","reginabrito@mail.com","010203","123.456.789-00");
INSERT INTO cliente VALUES (null, "Rafael Tenorio","rafaeltenorio@mail.com","123123","369.452.637-28");
INSERT INTO cliente VALUES (null, "Bruno Galvao","brunogalvao@mail.com","234234","278.562.814-56");


-- tabela endereco

INSERT INTO endereco VALUES (null,"Av", "Brasil",100,"","Centro","Sao Paulo","01234-567","SP",1);
INSERT INTO endereco VALUES (null,"Rua","Major Silva",12,"Ap 12A","Pitangueiras","Itapecerica da Serra","98765-432","SP",1);
INSERT INTO endereco VALUES (null,"Rua","Heitor Vila Lobos",98,"Casa 2","Vila das Flores","Osasco","06543-123","SP",2);
INSERT INTO endereco VALUES (null,"Av","Raquel Meyer",173,"Ap 42 Bl 1","Centro","Vitoria","32987-122","ES",3);
INSERT INTO endereco VALUES (null,"Rua","Pimentel Marques",231,"Casa 8","Aldebaran","Milagres","570825-48","AL",4);
INSERT INTO endereco VALUES (null,"Av","Alvaro Otacilio",771,"Ap 302 Bl 4","Jatiuca","Maceio","570425-12","AL",5);
INSERT INTO endereco VALUES (null,"Rua","Orlando Galdino",28,"Quadra F2","Acaua","Barra de Sao Miguel","570258-14","AL",5);


-- tabela pedido

INSERT INTO pedido VALUES (null,"2021-01-10",4000,"F",0,4000,1);
INSERT INTO pedido VALUES (null,"2021-02-01",70,"F",0,70,2);
INSERT INTO pedido VALUES (null,"2021-03-10",3850,"F",0,3850,3);
INSERT INTO pedido VALUES (null,"2021-04-15",8000,"F",1000,7000,1);
INSERT INTO pedido VALUES (null,"2021-05-05",1999.90,"F",0,1999.90,2);
INSERT INTO pedido VALUES (null,"2021-06-08",2999.90,"F",0,2999.90,3);
INSERT INTO pedido VALUES (null,"2021-07-10",250,"F",0,250,2);
INSERT INTO pedido VALUES (null,"2021-08-22",350,"F",0,350,2);
INSERT INTO pedido VALUES (null,"2021-09-19",700,"F",0,700,3);
INSERT INTO pedido VALUES (null,"2021-10-07",3850,"F",0,3850,1);
INSERT INTO pedido VALUES (null,"2021-11-01",50,"F",0,50,1);
INSERT INTO pedido VALUES (null,"2021-12-05",1999.9,"F",0,1999.9,1);
INSERT INTO pedido VALUES (null,"F","2021-01-16",3000,0,3000,5);
INSERT INTO pedido VALUES (null,"F","2021-02-12",150,0,150,4);
INSERT INTO pedido VALUES (null,"F","2021-03-21",200,0,200,5);
INSERT INTO pedido VALUES (null,"F","2021-04-04",100,0,100,4);
INSERT INTO pedido VALUES (null,"F","2021-05-17",300,0,300,3);
INSERT INTO pedido VALUES (null,"F","2021-05-13",650,0,650,1);
INSERT INTO pedido VALUES (null,"F","2021-05-10",450,0,450,4);
INSERT INTO pedido VALUES (null,"F","2021-06-10",2500,0,2500,2);
INSERT INTO pedido VALUES (null,"F","2021-07-28",500,0,500,3);
INSERT INTO pedido VALUES (null,"F","2021-08-14",4000,0,4000,1);
INSERT INTO pedido VALUES (null,"F","2021-08-05",3500,0,3500,2);
INSERT INTO pedido VALUES (null,"F","2021-09-28",4500,0,4500,4);
INSERT INTO pedido VALUES (null,"F","2021-10-12",4000,0,4000,1);
INSERT INTO pedido VALUES (null,"F","2021-10-08",300,0,300,2);
INSERT INTO pedido VALUES (null,"F","2021-10-18",100,0,100,1);
INSERT INTO pedido VALUES (null,"F","2021-11-20",750,0,750,3);
INSERT INTO pedido VALUES (null,"F","2021-12-16",3800,0,3800,1);
INSERT INTO pedido VALUES (null,"F","2021-12-24",700,0,700,5);
INSERT INTO pedido VALUES (null,"2022-12-05",2999.9,"F",0,2999.9,2);
INSERT INTO pedido VALUES (null,"2022-12-12",4000,"F",0,4000,3);
INSERT INTO pedido VALUES (null,"2022-06-08",2000,"F",0,2000,4);
INSERT INTO pedido VALUES (null,"2022-04-28",1500,"F",0,1500,5);


-- tabela itens

INSERT INTO item_pedido VALUES (null, 1, 4000, 4000, 1, 1);
INSERT INTO item_pedido VALUES (null, 2, 35.0, 70.0, 4, 2);
INSERT INTO item_pedido VALUES (null, 1, 3850, 3850, 2, 3);
INSERT INTO item_pedido VALUES (null, 2, 4000, 8000, 1, 4);
INSERT INTO item_pedido VALUES (null, 1, 1999.90, 1999.90, 5, 5);
INSERT INTO item_pedido VALUES (null, 1, 2999.90, 2999.90, 6, 6);
INSERT INTO item_pedido VALUES (null, 5, 50, 250, 3, 7);
INSERT INTO item_pedido VALUES (null, 10, 35, 350, 4, 8);
INSERT INTO item_pedido VALUES (null, 20, 35, 700, 4, 9);
INSERT INTO item_pedido VALUES (null, 1, 3850, 3850, 2, 10);
INSERT INTO item_pedido VALUES (null, 1, 50, 50, 3, 11);
INSERT INTO item_pedido VALUES (null, 1, 1999.9, 1999.9, 5, 12);
INSERT INTO item_pedido VALUES (null, 1, 2999.9, 2999.9, 6, 13);
INSERT INTO item_pedido VALUES (null, 1, 4000, 4000, 1, 14);
INSERT INTO item_pedido VALUES (null, 1, 2100, 2100, 7, 15);
INSERT INTO item_pedido VALUES (null, 2, 2100, 4200, 7, 16);
INSERT INTO item_pedido VALUES (null, 3, 100, 300, 4, 17);
INSERT INTO item_pedido VALUES (null, 1, 200, 200, 2, 18);
INSERT INTO item_pedido VALUES (null, 10, 350, 3500, 7, 19);
INSERT INTO item_pedido VALUES (null, 3, 250, 750, 1, 20);
INSERT INTO item_pedido VALUES (null, 5, 500, 2500, 7, 21);
INSERT INTO item_pedido VALUES (null, 1, 2500, 2500, 6, 22);
INSERT INTO item_pedido VALUES (null, 6, 500, 3000, 7, 23);
INSERT INTO item_pedido VALUES (null, 8, 400, 3200, 5, 24);
INSERT INTO item_pedido VALUES (null, 2, 400, 800, 6, 25);
INSERT INTO item_pedido VALUES (null, 4, 400, 1600, 6, 26);
INSERT INTO item_pedido VALUES (null, 2, 600, 1200, 7, 27);
INSERT INTO item_pedido VALUES (null, 1, 300, 300, 5, 28);
INSERT INTO item_pedido VALUES (null, 3, 300, 900, 2, 29);
INSERT INTO item_pedido VALUES (null, 2, 35, 70, 4, 30);
INSERT INTO item_pedido VALUES (null, 3, 40, 120, 3, 31);
INSERT INTO item_pedido VALUES (null, 10, 35, 350, 2, 32);
INSERT INTO item_pedido VALUES (null, 5, 40, 200, 1, 33);
INSERT INTO item_pedido VALUES (null, 2, 120, 240, 5, 34);
INSERT INTO item_pedido VALUES (null, 3, 30, 90, 7, 35);


# Ver todos os departamentos
select * from produto;

# 2 - Quantos clientes estão cadastrados na sua base?

select count(id) as "Total de clientes" from cliente;

# 3 - Qual o produto mais caro?

select * from produto having max(preco); 

# 4 - Qual o produto mais barato?

select * from produto 
where preco = (select min(preco) from produto); 

# 5 - Mostre todos os produtos com seus respectivos 
#departamentos

select * from produto inner join departamento
	on produto.departamento_codigo = departamento.codigo ;
    
# 6 - Quantos produtos há em cada 
#departamento? Exiba o nome do 
#departamento e a quantidade de 
#produtos que há em cada um. 
#(pense em SUM e GROUP BY);

select departamento.nome, count(produto.codigo) 
	from produto right outer join departamento 
	on departamento.codigo = produto.departamento_codigo 
	group by departamento.codigo; 

	
# 7 - Mostre os dados dos pedidos, incluindo 
#nomes dos clientes e nomes dos produtos que foram vendidos.

select pedido.numero, pedido.data_pedido, pedido.valor_bruto,  
       pedido.desconto, pedido.vvalor_final, cliente.nome,  
       produto.nome from   
     pedido inner join item_pedido   
on pedido.numero = item_pedido.pedido_numero  
inner join produto on produto.codigo = item_pedido.produto_codigo  
    inner join cliente on pedido.cliente_id = cliente.id  
    order by pedido.numero; 

# 8 - Mostre quantos pedidos foram feitos 
#por mês no ano de 2022 (caso você tenha 
#registros neste ano, senão escolha um ano 
#que você tenha cadastrado - Novamente pense 
#em COUNT e GROUP BY).

select count(numero) as 'total', monthname(pedido.data_pedido) as 'mes'  
from pedido 
   		group by mes 
    		order by month(mes);

# 9 - Mostre quanto foi faturado por mês 
#(leve em conta o valor total de cada pedido 
#- novamente pense em GROUP BY e SUM).

select sum(valor_final) as 'total', monthname(pedido.data_pedido) as 'mes'  
from pedido 
	group by mes; 

# 10 - Mostre o valor total do estoque por departamento.

select departamento_codigo, sum(preco*estoque) from produto
group by departamento_codigo;



