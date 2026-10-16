create database update_aula
default character SET utf8mb4
collate utf8mb4_0900_ai_ci;

-- criação da tabela de produtos
create table if not exists produtos (
    id int auto_increment primary key,
    nome varchar(50),
    categoria varchar(30),
    preco decimal(10,2),
    estoque int
) default charset = utf8mb4;

-- inserção de dados em produtos
insert into produtos (nome, categoria, preco, estoque) values
('teclado gamer', 'periféricos', 150.00, 20),
('mouse óptico', 'periféricos', 50.00, 15),
('monitor 24"', 'monitores', 900.00, 8),
('cadeira gamer', 'móveis', 1200.00, 5),
('webcam hd', 'periféricos', 250.00, 12);

-- criação da nova tabela: clientes
create table if not exists clientes (
    id int auto_increment primary key,
    nome varchar(100),
    email varchar(100),
    cidade varchar(50)
) default charset = utf8mb4;

-- inserção de dados em clientes
insert into clientes (nome, email, cidade) values
('ana silva', 'ana.silva@email.com', 'são paulo'),
('bruno souza', 'bruno.souza@email.com', 'rio de janeiro'),
('carla costa', 'carla.costa@email.com', 'belo horizonte');

select*from clientes;

update clientes set nome = 'Ana Silva Siqueira', cidade = 'Campo Mourão' where id =1;


-- Sintaxe
UPDATE nome_tabela
set coluna = novo_valor
where condição;




-- Atividade Do Vídeo




-- criação da tabela de produtos
create table if not exists produtos (
    id int auto_increment primary key,
    nome varchar(50),
    categoria varchar(30),
    preco decimal(10,2),
    estoque int
) default charset = utf8mb4;

-- inserção de dados em produtos
insert into produtos (nome, categoria, preco, estoque) values
('teclado gamer', 'periféricos', 150.00, 20),
('mouse óptico', 'periféricos', 50.00, 15),
('monitor 24"', 'monitores', 900.00, 8),
('cadeira gamer', 'móveis', 1200.00, 5),
('webcam hd', 'periféricos', 250.00, 12);

-- criação da nova tabela: clientes
create table if not exists clientes (
    id int auto_increment primary key,
    nome varchar(100),
    email varchar(100),
    cidade varchar(50)
) default charset = utf8mb4;

-- inserção de dados em clientes
insert into clientes (nome, email, cidade) values
('ana silva', 'ana.silva@email.com', 'são paulo'),
('bruno souza', 'bruno.souza@email.com', 'rio de janeiro'),
('carla costa', 'carla.costa@email.com', 'belo horizonte');

select*from clientes;

update clientes set nome = 'Ana Silva Siqueira', cidade = 'Campo Mourão' where id =1;


-- Atividade do Vídeo
-- Sintaxe


UPDATE produtos
set preco = 65.00
where nome = 'mouse óptico';


UPDATE produtos
set estoque = 15
where nome = 'monitor 24"';


UPDATE produtos
set categoria = 'acessórios'
where categoria = 'periféricos';


UPDATE clientes
set email = 'ana.nova@email.com'
where nome = 'ana silva';


UPDATE produtos
set nome = 'webcam full hd 1080p'
where nome = 'webcam hd';


UPDATE clientes
set cidade = 'curitiba'
where nome = 'carla costa';


UPDATE produtos
set preco = 1350.00, estoque = 3
where nome = 'cadeira gamer';


UPDATE clientes
set cidade = 'guarulhos'
where cidade = 'são paulo';
