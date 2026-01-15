create table gafanhoto_assiste_curso(
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key (id),
foreign key (idgafanhoto) references gafanhotos(id),
foreign key (idcurso) references cursos(idcurso)
)default charset = utf8;

INSERT INTO `cadastro`.`gafanhoto_assiste_curso` (`id`, `data`, `idgafanhoto`, `idcurso`) VALUES (default, '2015-08-09', '3', '6');


select * from gafanhoto_assiste_curso;

select g.nome, c.nome from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c 
on c.idcurso = a.idcurso;