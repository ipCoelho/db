#Select
/*
	select - especifica as colunas que serão 
			 visualizadas
    
    from - especifica as tabelas que 
			serão utilizadas na consulta
            
    where - especifica o critério de filtro

*/

#Permite visualizar todas as colunas e todos 
#os registros de uma tabela (*)
select * from tblFilme;

select tblFilme.* from tblFilme;

#Permite visualizar colunas especificas 
#da tabela
select tblFilme.nome, tblFilme.sinopse 
	from tblfilme;

# as - significa alias (permite criar 
#		um apelido para o nome de uma 
#        coluna ou de uma tabela)
select filme.nome as nomeFilme, filme.duracao, 
		filme.sinopse
	from tblfilme as filme;

select nome, sinopse 
	from tblFilme
    where idFilme = 2;

/*
	OPERADORES DE COMPARAÇÃO 
    =
    <
    >
    <=
    >=
    <> - diferente
    like
    
	like - busca pela igualdade do valor
    like %var no inicio, busca pelo término da string
    like var% no final, busca pelo inicio da string
    like %var% no inicio e no final, busca 
		por qualque parte da string
*/
select nome, sinopse 
	from tblFilme
    where nome like '%e%';

/*OPERADORES LÓGICOS

	and
    or
    not
*/

select * from tblFilme;

alter table tblFilme
	add column qtde int;
    
update tblFilme set qtde = 8 where idFilme = 2;

select * from tblFilme 
	where qtde <=6;

#Exemplo de utilização de operadores lógicos
select * from tblFilme
	where qtde >=6 and qtde <=10;
    
select * from tblFilme
	where qtde <=6 or qtde >=10;
    
select * from tblFilme
	where not(qtde >=6 and qtde <=10);
    
select * from tblFilme
	where qtde = 2 or 
		  qtde = 5 or
          qtde = 8 or
          qtde = 10;
          
#in - permite buscar no mesmo atributo por varios
#valores, não precisando escrever o atributo 
#varias vezes. OBS (só funciona com o operador lógico OR)
select * from tblFilme
	where qtde in (2,5,8,10);
    
select * from tblFilme
	where qtde not in (2,5,8,10);
    
#between - retorna os dados em range (intervalo) de valores
select * from tblFilme
	where qtde between 6 and 10;

select * from tblFilme
	where qtde not between 6 and 10;
    
/*Ordenação de dados*/
#order by asc - ordena de forma crescente
#order by desc - ordena de forma decrescente

select * from tblFilme order by nome asc;
select * from tblFilme order by nome desc;

select * from tblFilme order by nome asc, duracao desc;

#limit - limita a qtde de resultados do select
select * from tblFilme limit 2;

#Somente o 1º registro da tabela
select * from tblFilme order by idFilme asc limit 1;

#Somente o ultimo registro da tabela
select * from tblFilme order by idFilme desc limit 1;

#count - retorna a qtde de itens no select
select count(*) as qtdeFilmes from tblFilme;

select  count(nome) as qtdeNomeFilmes, 
		count(dataRelancamento) as qtdeFilmesDataRelancamento
	from tblFilme;
    
select count(*) as qtdeClassificacao from tblFilme 
	where idClassificacao = 4;
    
#min - retorna o menor valor do select
#max - retorna o maior valor do select

select min(qtde) as qtdeMinima from tblFilme;
select max(qtde) as qtdeMaxima from tblFilme;

#sum() - realiza a soma de valores de uma coluna
select sum(qtde) as somaQtdeFilmes from tblFilme;

#avg() - calcula a média de valores de uma coluna
#round() - permite especificar a qdte de casas decimais
select round(avg(qtde),1) as mediaQtdeFilmes from tblFilme;



