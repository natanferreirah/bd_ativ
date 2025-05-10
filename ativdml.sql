create database biblioteca
default character set utf8
default collate utf8_general_ci;
use biblioteca;
create table livros (
	id_livro int not null auto_increment,
    titulo varchar(30) not null,
    autor varchar(30), 
    preco decimal(6,2),
    estoque tinyint,
    primary key (id_livro)
) default charset = utf8;

/*Q-01*/
insert into livros (titulo, autor, preco, estoque) values
('Dom Casmurro', 'Machado de Assis', 49.90, 12),
('1984', 'George Orwell', 59.50, 8),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 39.90, 20),
('Cem Anos de Solidão', 'Gabriel García Márquez', 64.00, 5),
('O Hobbit', 'J.R.R. Tolkien', 54.30, 10);

/*Q-02*/
update livros set preco = preco*1.10 where id_livro in (1,2,5);

/*Q-03*/
update livros set estoque = 30 where id_livro in (2);
update livros set estoque = 15 where id_livro in (4);

/*Q-04*/
set SQL_SAFE_UPDATES = 0;
delete from livros 
where estoque = 0;
set SQL_SAFE_UPDATES = 1;

/*Q-05*/
select titulo, autor from livros where preco < 50;

/*Q-06*/
select * from livros where estoque > 5;

/*Q-07*/
select titulo, preco from livros where preco = (select max(preco) from livros);

/*Q-08*/
set SQL_SAFE_UPDATES = 0;
delete from livros where preco > 100;
set SQL_SAFE_UPDATES = 1;