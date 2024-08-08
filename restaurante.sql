create database
restaurante_vegano;
use restaurantevegano;

##tabela clientes
create table clientes (
id int auto_increment
primary key, 
nome varchar(100) not
null,
email varchar (100) not
null unique, 
telefone varchar(20),
endereço varchar(255)
);

##tabela pratos
create table pratos (
id int auto_increment
primary key,
nome varchar(100) not
null,
descricao text,
preco decimal(10,2)not
null
);

##tabela prato_ingredientes
create table prato_ingredientes (
prato_id int, 
ingrediente_id int,
primary key (prato_id,
ingrediente_id),
foreign key (prato_id)
references pratos (id),
foreign key
(ingrediente_id) references 
ingredientes(id)
);

###tabela pedidos
create table pedidos (
id int auto_increment
primary key,
cliente_id int,
data_pedido datetime
default current_timestamp,
total decimal(10,2)
status enum ('pendente',
'preparando','enviado',
'entregue') default
'pendente',
foreing key (cliente_id)
references clientes(id)
);

###tabela pedido_pratos
create table pedidos (
pedido_id int,
prato_id int,
quantidade int not null,
primary key (pedido_id,
prato_id),
foreign key (pedido_id)
references pedidos(id),
foreign key (prato_id)
references pratos(id)
);





    