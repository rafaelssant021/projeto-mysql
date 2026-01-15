alter table gafanhotos add column cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

desc gafanhotos;

update gafanhotos set cursopreferido = '6' where id = '1';

select * from gafanhotos;
select * from cursos;